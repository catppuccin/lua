---@param cmd string
---@param silent? boolean
---@return boolean?
---@return string?
---@return integer?
local function async_exec(cmd, silent)
    return coroutine.wrap(os.execute)(cmd..(silent and " >/dev/null 2>&1" or ""))
end

if not (async_exec("gh", true) and async_exec("luarocks", true)) then
    error("Ensure gh and luarocks are installed in your machine!")
end

local ver, rev = assert(arg[1], "specify at least version (without revision)"), arg[2] or "1"
local version = ("%s-%s"):format(ver, rev)
local rs_name = ("catppuccin-%s.rockspec"):format(version)
print(ver, rev, version, rs_name)

assert(os.rename("catppuccin-dev-1.rockspec", rs_name))

local f_rockspec = assert(io.open(rs_name))
local cont_rockspec = f_rockspec:read("*a")
    :gsub("dev%-1", version)
    :gsub("@VERSION@", "v"..version)
    :gsub("%-%-  tag", "    tag")
f_rockspec:close()
local fnew_rockspec = assert(io.open(rs_name, "w"))
fnew_rockspec:write(cont_rockspec)
fnew_rockspec:close()

if not async_exec("luarocks show lua-cjson", true) then
    async_exec("luarocks install lua-cjson")
end

async_exec(([[luarocks upload --api-key="%s" %s]]):format(os.getenv("LUAROCKS_API"), rs_name))
async_exec(("gh release create v%s --generate-notes"):format(version))
