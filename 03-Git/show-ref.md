usage: git show-ref [-q |`--quiet`] [--verify] [--head] [-d |`--dereference`] [-s |`--hash`[=<n>]] [--abbrev[=<n>]] [--tags] [--heads] [--] [<pattern>...]
   or: git show-ref`--exclude-existing`[=<pattern>]

   `--tags`                only show tags (can be combined with heads)
   `--heads`               only show heads (can be combined with tags)
   `--verify`              stricter reference checking, requires exact ref path
   `--head`                show the HEAD reference, even if it would be filtered out
   `-d`,`--dereference`     dereference tags into object IDs
   `-s`,`--hash`[=<n>]      only show SHA1 hash using <n> digits
   `--abbrev`[=<n>]        use <n> digits to display SHA-1s
   `-q`,`--quiet`           do not print results to stdout (useful with`--verify`)
   `--exclude-existing`[=<pattern>]
                          show refs from stdin that aren't in local repository

