https://unix.stackexchange.com/questions/43601/how-can-i-set-my-default-shell-to-start-up-tmux

@StarNamer's answer is generally accurate, though I typically include the following tests to make sure that (1) tmux exists on the system, (2) we're in an interactive shell, and (3) tmux doesn't try to run within itself:

```
    if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
      exec tmux
    fi
```

[Using bash's command to check for existence of a command](http://man7.org/linux/man-pages/man1/bash.1.html#SHELL_BUILTIN_COMMANDS)
[Why to use command instead of which to check for the existence of commands](https://unix.stackexchange.com/a/85250)
[Using $PS1 to check for interactive shell](https://www.gnu.org/software/bash/manual/html_node/Is-this-Shell-Interactive_003f.html)
[Expected state of $TERM environment variable "for all programs running inside tmux"](http://man7.org/linux/man-pages/man1/tmux.1.html#WINDOWS_AND_PANES)
