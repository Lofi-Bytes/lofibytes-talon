os: mac
mode: command
-

# Add commands rather than replacing Community formatter lists.
(criff | criffed) <user.text>$: user.insert_formatted(text, "PUBLIC_CAMEL_CASE")
spine <user.text>$: user.insert_formatted(text, "DASH_SEPARATED")
pathway <user.text>$: user.insert_formatted(text, "SLASH_SEPARATED")
dotsway <user.text>$: user.insert_formatted(text, "DOT_SEPARATED")
yellsnik <user.text>$: user.insert_formatted(text, "ALL_CAPS,SNAKE_CASE")
yeller <user.text>$: user.insert_formatted(text, "ALL_CAPS")
