usage: git difftool [<options>] [<commit> [<commit>]] [--] [<path>...]

   `-g`,`--gui`             use `diff.guitool` instead of `diff.tool`
   `-d`,`--dir-diff`        perform a full-directory diff
   `-y`,`--no-prompt`       do not prompt before launching a diff tool
   `--symlinks`            use symlinks in dir-diff mode
   `-t`,`--tool` <<tool>>   use the specified diff tool
   `--tool-help`           print a list of diff tools that may be used with `--tool`
   `--trust-exit-code`     make 'git-difftool' exit when an invoked diff tool returns a non - zero exit code
   `-x`,`--extcmd` <<command>>
                          specify a custom command for viewing diffs

