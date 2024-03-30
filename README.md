<h3 align="center">
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/logos/exports/1544x1544_circle.png" width="100" alt="Logo"/><br/>
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/misc/transparent.png" height="30" width="0px"/>
	Catppuccin for <a href="https://lua.org">Lua</a>
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/misc/transparent.png" height="30" width="0px"/>
</h3>

<p align="center">
	<a href="https://github.com/UrNightmaree/catppuccin-lua/stargazers"><img src="https://img.shields.io/github/stars/UrNightmaree/catppuccin-lua?colorA=363a4f&colorB=b7bdf8&style=for-the-badge"></a>
	<a href="https://github.com/UrNightmaree/catppuccin-lua/issues"><img src="https://img.shields.io/github/issues/UrNightmaree/catppuccin-lua?colorA=363a4f&colorB=f5a97f&style=for-the-badge"></a>
	<a href="https://github.com/UrNightmaree/catppuccin-lua/contributors"><img src="https://img.shields.io/github/contributors/UrNightmaree/catppuccin-lua?colorA=363a4f&colorB=a6da95&style=for-the-badge"></a>
</p>

<p align="center">
	<img src="/assets/preview.webp"/>
</p>

## Usage

Via [Luarocks](https://luarocks.org):
```bash
luarocks install --server=https://github.com/catppuccin/lua/raw/server catppuccin
```
<br>

```lua
-- Get Mocha palette
local palette = require("catppuccin").mocha()
-- or
local palette = require("catppuccin.mocha")


-- Get the flavor name of currently used palette.
=palette.name --> "mocha"

-- Get Blue color from Mocha palette.
=palette.blue --> { hex: string; rgb: { number, number, number }; hsl: { number, number, number } }
```

## 🙋 FAQ

- Q: ***Is it compatible with any Lua languages?***\
  A: Yes, it should be compatible. You can use it with [Fennel](https://fennel-lang.org), [Moonscript](https://moonscript.org) and others. For typed languages like [Teal](https://github.com/teal-language/tl), a [type definition](/catppuccin.d.tl) for it is already available, you just need to `require` it in your Teal code.

## 💝 Thanks to

- [Komo](https://github.com/cattokomo)

&nbsp;

<p align="center">
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/footers/gray0_ctp_on_line.svg?sanitize=true" />
</p>

<p align="center">
	Copyright &copy; 2021-present <a href="https://github.com/catppuccin" target="_blank">Catppuccin Org</a>
</p>

<p align="center">
	<a href="https://github.com/catppuccin/catppuccin/blob/main/LICENSE"><img src="https://img.shields.io/static/v1.svg?style=for-the-badge&label=License&message=MIT&logoColor=d9e0ee&colorA=363a4f&colorB=b7bdf8"/></a>
</p>
