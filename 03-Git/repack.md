usage: git repack [<options>]

   `-a`                    pack everything in a single pack
   `-A`                    same as`-a`, and turn unreachable objects loose
   `-d`                    remove redundant packs, and run git-prune-packed
   `-f`                    pass`--no-reuse-delta` to git-pack-objects
   `-F`                    pass`--no-reuse-object` to git-pack-objects
   `-n`                    do not run git-update-server-info
   `-q`,`--quiet`           be quiet
   `-l`,`--local`           pass`--local` to git-pack-objects
   `-b`,`--write-bitmap-index`
                          write bitmap index
   `--unpack-unreachable` <approxidate>
                          with`-A`, do not loosen objects older than this
   `-k`,`--keep-unreachable`
                          with`-a`, repack unreachable objects
   `--window` <n>          size of the window used for delta compression
   `--window-memory` <bytes>
                          same as the above, but limit memory size instead of entries count
   `--depth` <n>           limits the maximum delta depth
   `--threads` <n>         limits the maximum number of threads
   `--max-pack-size` <bytes>
                          maximum size of each packfile
   `--pack-kept-objects`   repack objects in packs marked with .keep

