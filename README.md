# yapf-format

Simple plugin that uses the yapf tool from the Google to format the current buffer with the given style file.

## Usage:

### Using lazy:

```lua
'duv16/yapf-format.nvim'

require('yapf-format').setup({ styleYapfPath = <path> })
```
- `styleYapfPath`: path to a file containing the style options.

Btw, You can set `<path>` like a lua function.
Example:
```lua
require('yapf-format').setup({ styleYapfPath = os.getenv("HOME")..'/.style.yapf')
```
