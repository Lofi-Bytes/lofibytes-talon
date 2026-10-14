# lofibytes: pairs
# Requires Talon Community.
os: mac
mode: command
-

coif:
  user.insert_between('"', '"')

posh:
  user.insert_between("'", "'")

qualposh:
  user.insert_between(" = '", "'")

qualcoif:
  user.insert_between(' = "', '"')

glitch:
  user.insert_between("`", "`")

kirk:
  user.insert_between("{", "}")

# REVIEW: Legacy indentation sequence; app auto-indentation can affect results.
kirblock:
  insert("{}")
  key(left)
  key(enter)
  key(enter)
  key(up)
  key(tab)

# REVIEW: Legacy fenced-block sequence; Shift-Enter behavior depends on the app.
trinket:
  insert("``````")
  key(left)
  key(left)
  key(left)
  key(shift-enter)
  key(shift-enter)
  key(up)

prexcoif:
  user.insert_between('("', '")')

prex:
  user.insert_between("(", ")")

brax:
  user.insert_between("[", "]")

prank:
  user.insert_between(" ", " ")

