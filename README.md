# lofibytes vocabulary

Organized from your current lo-fi vocabulary. All command bodies and spoken forms are preserved. `snore` now works in both command and dictation modes. The other files retain their macOS command-mode restriction. `tabs.talon` retains the messaging exclusion for `goneck`.

Files: symbols (punctuation/operators), pairs (delimiters/blocks), navigation (movement/selection), editing (save/clipboard/deletion), system (desktops/windows), speech (snore), snippets (literal text/custom macros), tabs (goneck outside messaging).

## Installation

Place this entire `lofibytes` folder under `~/.talon/user/`. Move your existing `lofi-bytes-revised.talon` and `lofi-bytes-navigation.talon`, plus any other active copies of these commands, outside Talon's user directory as backups. Do not load the old files alongside this folder. Leave Community installed.

The original uploaded file and your currently installed files were not modified. This folder has not been installed automatically.

Validation: every command was compared with its source; no duplicate spoken-form definitions were introduced within this folder, and the source was verified unchanged. Talon loading and live recognition have not been tested.

## Personal corrections

`corrections.py` converts “low fy bytes” and “lofibites” to `lofibytes` on macOS. It calls the existing dictation replacement action first, preserving Community corrections. Edit CORRECTIONS in this personal file to add phrases. No Community files are changed. Matching logic and Python syntax were checked; live Talon integration remains untested.

## Recovered commands

Added familiar mouse, repeat, editor, formatter, navigation and symbol phrases from the legacy archive. No windy aliases. jolt stays on Community line duplication; snipline remains cut; slurp and quotes are unchanged. VS Code kirblock uses its snippet engine for a brace block with the cursor inside. Outside the VS Code text editor the existing macro remains available. Terminal aliases insert text, with shock needed to execute.

Personal homophones.csv carries 1 legacy groups with relationships absent from the installed Community list. homophones.py supplements Community lookup and shows personal groups without changing Community files. Added choices integrate with the existing choose commands. The personal CSV currently loads when the Python script loads; after editing it, reload Talon scripts or restart Talon.

This archive is a prepared package, not an automatic installation. Replace the previous personal lofibytes folder with this version; keep the backup outside Talon's user folder. No installed configuration has been edited. Python syntax and retained command bodies were checked; Talon recognition, homophone UI and VS Code snippets require a live smoke test.
