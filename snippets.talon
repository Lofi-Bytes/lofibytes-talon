# lofibytes: snippets
# Requires Talon Community.
os: mac
mode: command
-

# REVIEW: Editor-dependent legacy macro: preserved unchanged; review intended tag behavior.
shag:
  insert("<></>")
  key(left)
  key(left)
  key(left)
  key(shift-left)
  key(cmd-d)
  key(left)

div: "div"

span: "span"

cd: "cd "

gas be developed: "gatsby develop"


# Original inactive alternative, retained for reference:
# shag <user.text>:
#   "<"
#   insert(user.formatted_text(text, "DASH_SEPARATED"))
#   "></"
#   insert(user.formatted_text(text, "DASH_SEPARATED"))
#   ">"
