usage: git replace [-f] <object> <replacement>
   or: git replace [-f]`--edit` <object>
   or: git replace [-f]`--graft` <commit> [<parent>...]
   or: git replace`-d` <object>...
   or: git replace [--format=<format>] [-l [<pattern>]]

   `-l`,`--list`            list replace refs
   `-d`,`--delete`          delete replace refs
   `-e`,`--edit`            edit existing object
   `-g`,`--graft`           change a commit's parents
   `-f`,`--force`           replace the ref if it exists
   `--raw`                 do not pretty-print contents for`--edit`
   `--format` <format>     use this format

