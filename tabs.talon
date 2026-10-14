# lofibytes: tab navigation outside messaging contexts.
# In messaging contexts, Community's goneck keeps its next-unread meaning.
# Elsewhere, preserve the original tab shortcut.
os: mac
mode: command
not tag: user.messaging
-
goneck: key(cmd-shift-])
