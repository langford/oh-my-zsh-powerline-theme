oh-my-zsh-powerline-theme
=========================

oh-my-zsh Powerline style Theme

Preview
-------

![Preview](https://raw.githubusercontent.com/langford/oh-my-zsh-powerline-theme/master/preview.png)

Set Up
------

1. Clone the repository.

2. Create a symlink of **powerline.zsh-theme** in **.oh-my-zsh/themes/**. You can use the **install_in_omz.sh** file:

    ```
    ./install_in_omz.sh
    ```

3. Configure the theme in your **.zshrc** file:

    ```
    ZSH_THEME="blue-train"
    ```

More options
------------

All options must be overridden in your **.zshrc** file.

By default, at the right of the powerline are displayed the date and the time.
If you don't want date or time, you can choose what you want to display:

```
BLUE_TRAIN_RIGHT_B="time replacement"
```

Or if you don't want to display anything:

```
BLUE_TRAIN_RIGHT_B="none"
```

If you want to display date next to time:
```
BLUE_TRAIN_RIGHT_A="date"
```

If you want to display exit-code of last command next to time:
```
BLUE_TRAIN_RIGHT_A="exit-status"
```
or if you want it to appear only on faulty runs:
```
BLUE_TRAIN_RIGHT_A="exit-status-on-fail"
```

If you want to display date or non-zero-exit-code of last command next to time:
```
BLUE_TRAIN_RIGHT_A="mixed"
```

If you want to display a custom text next to time:
```
BLUE_TRAIN_RIGHT_A="blackfire.io"
```

If you want to change the color of the `BLUE_TRAIN_RIGHT_A` element:
```
BLUE_TRAIN_RIGHT_A_COLOR_FRONT="black"
BLUE_TRAIN_RIGHT_A_COLOR_BACK="red"
```

If you want to change the date format to what you want:
```
BLUE_TRAIN_DATE_FORMAT="%D{%d-%m}"
```

If you don't want to display your username (the green or red (root) colors are still there):

```
BLUE_TRAIN_HIDE_USER_NAME="true"
```

If you don't want to display your hostname (the green or red (root) colors are still there):

```
BLUE_TRAIN_HIDE_HOST_NAME="true"
```

If you only want to see the first part of the hostname (not the fqdn):

```
BLUE_TRAIN_SHORT_HOST_NAME="true"
```

If you want to hide git prompt status (new files, modified files, unmerged files, etc):
```
BLUE_TRAIN_HIDE_GIT_PROMPT_STATUS="true"
```

If you want to hide the right hand side prompt completely:
```
BLUE_TRAIN_DISABLE_RPROMPT="true"
```

If you don't want the blank line before the prompt:

```
BLUE_TRAIN_NO_BLANK_LINE="true"
```

If you want full path:

```
BLUE_TRAIN_PATH="full"
```

If you want to display ```~``` instead of your full path:  

```
BLUE_TRAIN_PATH="short"
```

If you want to customize the current path display (overrides full path above):
```
BLUE_TRAIN_CUSTOM_CURRENT_PATH="%3~"
```

If you want git info on right instead of left:

```
BLUE_TRAIN_SHOW_GIT_ON_RIGHT="true"
```

If you want to tell if you are in a remote SSH session:

```
BLUE_TRAIN_DETECT_SSH="true"
```

If you want to hide virtualenv information in the prompt:

```
BLUE_TRAIN_HIDE_VIRTUAL_ENV="true"
```

Also you can change the icons of GIT info, default values are:
```
BLUE_TRAIN_GIT_CLEAN="✔"
BLUE_TRAIN_GIT_DIRTY="✘"
BLUE_TRAIN_GIT_ADDED="%F{green}✚%F{black}"
BLUE_TRAIN_GIT_MODIFIED="%F{blue}✹%F{black}"
BLUE_TRAIN_GIT_DELETED="%F{red}✖%F{black}"
BLUE_TRAIN_GIT_UNTRACKED="%F{yellow}✭%F{black}"
BLUE_TRAIN_GIT_RENAMED="➜"
BLUE_TRAIN_GIT_UNMERGED="═"
```

Requirements
------------

* Vim Powerline patched font: Download your favorite one on [Lokaltog/powerline-font](https://github.com/Lokaltog/powerline-fonts).
* Z shell (zsh): See [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) for more info.
* Make sure terminal is using 256-colors mode with `export TERM="xterm-256color"`.

