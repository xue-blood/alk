# alk
Auto Link tool with 'index' file

# Usage:

    alk SOURCE TARGET

`SOURCE`: The root path for you want to link from

`TARGET`: The path you want to link to

**Note: *Both `SOURCE` and `TARGET` dir should better not contain `<space>`***

## note:
  `"_index"` file format: `<path>,<path>...`

  This tool will search `SOURCE` path recursive, if it found a `"_index"` file, then the parent dir will be link to `TARGET`.
  
  The name is you specify in `"_index"` file and you can add any more you want.

## example
    ➜  alk git:(master) ✗ cat test/_index
    This_is_a_test!

    ➜  alk git:(master) ✗ alk test .
    test/_index
      test ====> ./This_is_a_test!
    ➜  alk git:(master) ✗ ls -l
    total 8
    -rwxr-xr-x 1 user user  815 Apr 12 16:36  alk.sh
    drwxr-xr-x 2 user user 4096 Apr 12 16:40  test
    lrwxrwxrwx 1 user user    4 Apr 12 16:59 'This_is_a_test!' ->   test

