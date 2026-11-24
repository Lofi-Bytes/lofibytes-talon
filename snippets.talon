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

lofi bytes: "lofibytes"

dot com: ".com"
dot org: ".org"
dot net: ".net"
dot art: ".art"
web secure: "https://"
web prefix: "www."

web com: user.insert_between("https://www.", ".com")
web art: user.insert_between("https://www.", ".art")
web net: user.insert_between("https://www.", ".net")
web org: user.insert_between("https://www.", ".org")

# Original inactive alternative, retained for reference:
# shag <user.text>:
#   "<"
#   insert(user.formatted_text(text, "DASH_SEPARATED"))
#   "></"
#   insert(user.formatted_text(text, "DASH_SEPARATED"))
#   ">"
