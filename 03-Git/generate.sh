git help`-a` | \
awk '{printf "%s\n%s\n", $1, $2}' | \
head`-n` 172 | \
tail`-n` 156 | \
grep "" | \
xargs`-I`  {} sh`-c` "git {}`-h` > {}.md"
