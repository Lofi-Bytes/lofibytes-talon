"""Personal dictation corrections, layered after Community's replacements."""
from talon import Context, actions

ctx = Context()
ctx.matches = "os: mac"

CORRECTIONS = {
    ("low", "fy", "bytes"): "lofibytes",
    ("lofibites",): "lofibytes",
}


def apply_corrections(words):
    result = []
    index = 0
    while index < len(words):
        for spoken, written in CORRECTIONS.items():
            candidate = tuple(word.casefold() for word in words[index:index + len(spoken)])
            if candidate == spoken:
                result.append(written)
                index += len(spoken)
                break
        else:
            result.append(words[index])
            index += 1
    return result


@ctx.action_class("dictate")
class DictationCorrections:
    def replace_words(words):
        # Preserve Community's replacement behavior before applying our own.
        return apply_corrections(list(actions.next(words)))
