import os
import atexit
import readline
import rlcompleter

HISTORY_FILE = "~/.pythonhistory"

if 'libedit' in readline.__doc__:
    readline.parse_and_bind("bind ^I rl_complete")
else:
    readline.parse_and_bind("tab: complete")

if os.path.exists(HISTORY_FILE):
    readline.read_history_file(HISTORY_FILE)

atexit.register(readline.write_history_file, HISTORY_FILE)
