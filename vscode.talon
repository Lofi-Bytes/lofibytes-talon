os: mac
mode: command
app: vscode
and win.title: /focus:\[Text Editor\]/
-

# Editor-specific actions, using Community's existing implementations.
(trundle | chom slash): code.toggle_comment()
marco project: user.find_everywhere("")
marco select:
    selected = edit.selected_text()
    if selected: edit.find(selected)
select instances: user.multi_cursor_select_all_occurrences()
sprinkle <number>: edit.jump_line(number)

# VS Code handles indentation; $0 is the final cursor position.
kirblock: user.insert_snippet("{\n\t$0\n}")
