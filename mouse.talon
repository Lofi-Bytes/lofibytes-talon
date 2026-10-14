os: mac
mode: command
-

# Current-pointer aliases; no legacy timing/history tracking.
chiff:
    tracking.zoom_cancel()
    mouse_click(0)
    user.grid_close()
    user.mouse_drag_end()
chipper:
    tracking.zoom_cancel()
    mouse_click(1)
    user.grid_close()
pretzel:
    tracking.zoom_cancel()
    user.mouse_drag(0)
    user.grid_close()
relish: user.mouse_drag_end()
