usage: git apply [<options>] [<patch>...]

   `--exclude` <path>      don't apply changes matching the given path
   `--include` <path>      apply changes matching the given path
   `-p` <num>              remove <num> leading slashes from traditional diff paths
   `--no-add`              ignore additions made by the patch
   `--stat`                instead of applying the patch, output diffstat for the input
   `--numstat`             show number of added and deleted lines in decimal notation
   `--summary`             instead of applying the patch, output a summary for the input
   `--check`               instead of applying the patch, see if the patch is applicable
   `--index`               make sure the patch is applicable to the current index
   `--cached`              apply a patch without touching the working tree
   `--unsafe-paths`        accept a patch that touches outside the working area
   `--apply`               also apply the patch (use with`--stat`/--summary/--check)
   `-3`,`--3way`            attempt three-way merge if a patch does not apply
   `--build-fake-ancestor` <file>
                          build a temporary index based on embedded index information
   `-z`                    paths are separated with NUL character
   `-C` <n>                ensure at least <n> lines of context match
   `--whitespace` <action>
                          detect new or modified lines that have whitespace errors
   `--ignore-space-change`
                          ignore changes in whitespace when finding context
   `--ignore-whitespace`   ignore changes in whitespace when finding context
   `-R`,`--reverse`         apply the patch in reverse
   `--unidiff-zero`        don't expect at least one line of context
   `--reject`              leave the rejected hunks in corresponding *.rej files
   `--allow-overlap`       allow overlapping hunks
   `-v`,`--verbose`         be verbose
   `--inaccurate-eof`      tolerate incorrectly detected missing new-line at the end of file
   `--recount`             do not trust the line counts in the hunk headers
   `--directory` <root>    prepend <root> to all filenames

