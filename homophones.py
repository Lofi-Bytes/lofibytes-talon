"""Personal homophone groups, with a local chooser; Community files stay untouched."""
import csv
from pathlib import Path
from talon import Context, Module, actions, app, imgui

mod = Module()
mod.list("lofibytes_homophone", desc="Words in personal homophone groups")
ctx = Context()
ctx.matches = "os: mac"
chooser = Context()
chooser.matches = "os: mac"
local = {}
for row in csv.reader(Path(__file__).with_suffix(".csv").read_text().splitlines()):
    words = {word.strip().lower() for word in row if word.strip()}
    merged = set(words)
    for word in words:
        merged.update(local.get(word, []))
    for word in merged:
        local[word] = sorted(merged)
ctx.lists["user.lofibytes_homophone"] = {word: word for word in local}
choices = []


def hide():
    global choices
    choices = []
    chooser.tags = []
    gui.hide()


@imgui.open()
def gui(g):
    g.text("Select a homophone")
    for number, word in enumerate(choices, 1):
        if g.button(f"Choose {number}: {word}"):
            actions.insert(word)
            hide()
    if g.button("Close"):
        hide()


def show(word, selection=False, forced=False):
    global choices
    raw = word.strip()
    lookup = raw.lower()
    if lookup not in local:
        return False
    words = actions.user.homophones_get(lookup) or []
    formatter = str.upper if raw.isupper() else str.capitalize if raw[:1].isupper() else str
    ordered = [w for w in words if w.lower() != lookup] + [lookup]
    choices = [formatter(w) for w in ordered]
    if selection and len(choices) == 2 and not forced:
        actions.insert(choices[0])
        choices = []
        return True
    chooser.tags = ["user.homophones_open"]
    gui.show()
    return True


@ctx.action_class("user")
class PersonalHomophones:
    def homophones_get(word: str):
        # Merge connected personal and Community groups without replacing either.
        pending = [word.lower()]
        seen = set()
        while pending:
            current = pending.pop()
            if current in seen:
                continue
            seen.add(current)
            found = set(local.get(current, []))
            found.update(w.lower() for w in (actions.next(current) or []))
            pending.extend(found - seen)
        return sorted(seen) if len(seen) > 1 else actions.next(word)

    def homophones_show(word: str):
        if not show(word):
            actions.next(word)

    def homophones_force_show(word: str):
        if not show(word, forced=True):
            actions.next(word)

    def homophones_show_selection():
        if not show(actions.edit.selected_text(), selection=True):
            actions.next()

    def homophones_force_show_selection():
        if not show(actions.edit.selected_text(), selection=True, forced=True):
            actions.next()

    def homophones_select(number: int) -> str:
        if choices:
            if not 1 <= number <= len(choices):
                raise IndexError("Homophone number out of range")
            return choices[number - 1]
        return actions.next(number)

    def homophones_hide():
        hide()
        actions.next()
