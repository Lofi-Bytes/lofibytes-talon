os: mac
mode: command
-
phones {user.lofibytes_homophone}: user.homophones_show(lofibytes_homophone)
phones force {user.lofibytes_homophone}: user.homophones_force_show(lofibytes_homophone)
# Recover the old selected-word aliases; Community's phones that remains available.
phones: user.homophones_show_auto()
force phones: user.homophones_force_show_selection()
