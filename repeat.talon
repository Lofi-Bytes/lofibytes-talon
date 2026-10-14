os: mac
mode: command
-

# creek repeats the previous partial phrase, like Community's again.
creek: core.repeat_partial_phrase(1)
# Total count, including the command already performed: left + repple 5 = five lefts.
repple <number_small>:
    if number_small > 1: core.repeat_command(number_small - 1)
