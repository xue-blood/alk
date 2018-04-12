# alk
Auto Link tool with 'index' file

# Usage:

    alk SOURCE TARGET

`SOURCE`: The root path for you want to link from

`TARGET`: The path you want to link to

## note:
  `"_index"` file format: `<path>,<path>...`

  This tool will search `SOURCE` path recursive, if it found a `"_index"` file, then the parent dir will be link to `TARGET`.
  
  The name is you specify in `"_index"` file and you can add any more you want.
