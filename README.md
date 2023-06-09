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
luarocks install catppuccin
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

## 💝 Thanks to

- [UrNightmaree](https://github.com/UrNightmaree)

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
