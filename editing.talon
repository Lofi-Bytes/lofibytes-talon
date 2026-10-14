# lofibytes: editing
# Requires Talon Community.
os: mac
mode: command
-

shock:
  key(return)

crisco:
  key(right)
  insert(" ")

junk:
  edit.delete()

spunk:
  key(delete)

coal shock:
  insert(":")
  key(enter)

sage:
  edit.save()

marco:
  edit.find()

randall:
  key(escape)

sinker:
  key(cmd-right)
  insert(";")

# REVIEW: Two deletions; a selection can cause an additional character to be deleted.
slurp:
  key(delete)
  key(backspace)

dizzle:
  edit.undo()

rizzle:
  edit.redo()

snatch:
  edit.cut()

allsnatch:
  edit.select_all()
  edit.cut()

spark:
  edit.paste()

allspark:
  edit.select_all()
  edit.paste()

stoosh:
  edit.copy()

allstoosh:
  edit.select_all()
  edit.copy()

tarp:
  key(tab)

tarsh:
  key(shift-tab)

snipline:
  edit.select_line()
  edit.cut()

snipper:
  edit.extend_line_end()
  edit.delete()

snipple:
  key(cmd-backspace)

derek:
  key(cmd-right)
  insert(" ")

# REVIEW: Moves word-left, then deletes one character; preserved unchanged.
nudgle:
  key(alt-left)
  key(backspace)

jolt:
  edit.line_clone()

trough:
  key(alt-backspace)

kite:
  key(alt-delete)

sunkshock:
  insert(";")
  key(return)

