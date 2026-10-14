os: mac
mode: command
tag: terminal
-

# Draft: insert command text; press shock separately to execute.
jet: "git "
jet status: "git status"
jet diff: "git diff"
jet add: "git add "
jet checkout: "git checkout "
jet commit: user.insert_between('git commit --message "', '"')
pseudo: "sudo "
shell kill: key(ctrl-c)
shell mipple: "mkdir -p "
