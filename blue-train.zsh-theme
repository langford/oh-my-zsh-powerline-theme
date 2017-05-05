#sometimes forks are easier than config

BLUE_TRAIN_PATH='${PWD##*/}'
if [ "$BLUE_TRAIN_PATH" = "$USER" ]; then
  BLUE_TRAIN_PATH='%~'
fi

if [ "$BLUE_TRAIN_GIT_CLEAN" = "" ]; then
  BLUE_TRAIN_GIT_CLEAN="✔"
fi

if [ "$BLUE_TRAIN_GIT_DIRTY" = "" ]; then
  BLUE_TRAIN_GIT_DIRTY="✘"
fi

if [ "$BLUE_TRAIN_GIT_ADDED" = "" ]; then
  BLUE_TRAIN_GIT_ADDED="%F{green}✚%F{black}"
fi

if [ "$BLUE_TRAIN_GIT_MODIFIED" = "" ]; then
  BLUE_TRAIN_GIT_MODIFIED="%F{blue}✹%F{black}"
fi

if [ "$BLUE_TRAIN_GIT_DELETED" = "" ]; then
  BLUE_TRAIN_GIT_DELETED="%F{red}✖%F{black}"
fi

if [ "$BLUE_TRAIN_GIT_UNTRACKED" = "" ]; then
  BLUE_TRAIN_GIT_UNTRACKED="%F{yellow}✭%F{black}"
fi

if [ "$BLUE_TRAIN_GIT_RENAMED" = "" ]; then
  BLUE_TRAIN_GIT_RENAMED="➜"
fi

if [ "$BLUE_TRAIN_GIT_UNMERGED" = "" ]; then
  BLUE_TRAIN_GIT_UNMERGED="═"
fi

if [ "$BLUE_TRAIN_RIGHT_A_COLOR_FRONT" = "" ]; then
  BLUE_TRAIN_RIGHT_A_COLOR_FRONT="white"
fi

if [ "$BLUE_TRAIN_RIGHT_A_COLOR_BACK" = "" ]; then
  BLUE_TRAIN_RIGHT_A_COLOR_BACK="black"
fi

ZSH_THEME_GIT_PROMPT_PREFIX=" \ue0a0 "
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY=" $BLUE_TRAIN_GIT_DIRTY"
ZSH_THEME_GIT_PROMPT_CLEAN=" $BLUE_TRAIN_GIT_CLEAN"

ZSH_THEME_GIT_PROMPT_ADDED=" $BLUE_TRAIN_GIT_ADDED"
ZSH_THEME_GIT_PROMPT_MODIFIED=" $BLUE_TRAIN_GIT_MODIFIED"
ZSH_THEME_GIT_PROMPT_DELETED=" $BLUE_TRAIN_GIT_DELETED"
ZSH_THEME_GIT_PROMPT_UNTRACKED=" $BLUE_TRAIN_GIT_UNTRACKED"
ZSH_THEME_GIT_PROMPT_RENAMED=" $BLUE_TRAIN_GIT_RENAMED"
ZSH_THEME_GIT_PROMPT_UNMERGED=" $BLUE_TRAIN_GIT_UNMERGED"
ZSH_THEME_GIT_PROMPT_AHEAD=" ⬆"
ZSH_THEME_GIT_PROMPT_BEHIND=" ⬇"
ZSH_THEME_GIT_PROMPT_DIVERGED=" ⬍"

    if [ "$BLUE_TRAIN_SHOW_GIT_ON_RIGHT" = "" ]; then
        if [ "$BLUE_TRAIN_HIDE_GIT_PROMPT_STATUS" = "" ]; then
            BLUE_TRAIN_GIT_INFO_LEFT=" %F{blue}%K{white}"$'\ue0b0'"%F{white}%F{black}%K{white}"$'$(git_prompt_info)$(git_prompt_status)%F{white}'
        else
            BLUE_TRAIN_GIT_INFO_LEFT=" %F{blue}%K{white}"$'\ue0b0'"%F{white}%F{black}%K{white}"$'$(git_prompt_info)%F{white}'
        fi
        BLUE_TRAIN_GIT_INFO_RIGHT=""
    else
        BLUE_TRAIN_GIT_INFO_LEFT=""
        if [ "$BLUE_TRAIN_HIDE_GIT_PROMPT_STATUS" = "" ]; then
            BLUE_TRAIN_GIT_INFO_RIGHT="%F{white}"$'\ue0b2'"%F{black}%K{white}"$'$(git_prompt_info)$(git_prompt_status)'" %K{white}"
        else
            BLUE_TRAIN_GIT_INFO_RIGHT="%F{white}"$'\ue0b2'"%F{black}%K{white}"$'$(git_prompt_info)'" %K{white}"
        fi
    fi

if [ $(id -u) -eq 0 ]; then
    BLUE_TRAIN_SEC1_BG=%K{red}
    BLUE_TRAIN_SEC1_FG=%F{red}
else
    BLUE_TRAIN_SEC1_BG=%K{green}
    BLUE_TRAIN_SEC1_FG=%F{green}
fi
BLUE_TRAIN_SEC1_TXT=%F{black}
if [ "$BLUE_TRAIN_DETECT_SSH" != "" ]; then
  if [ -n "$SSH_CLIENT" ]; then
    BLUE_TRAIN_SEC1_BG=%K{red}
    BLUE_TRAIN_SEC1_FG=%F{red}
    BLUE_TRAIN_SEC1_TXT=%F{white}
  fi
fi

if [ "$VIRTUAL_ENV" != "" ] && [ "$BLUE_TRAIN_HIDE_VIRTUAL_ENV" = "" ]; then
    VENV_NAME=$(basename "$VIRTUAL_ENV")
    VENV_STATUS="($BLUE_TRAIN_SEC1_TXT$VENV_NAME)"
else
    VENV_STATUS=""
fi

PROMPT="$BLUE_TRAIN_SEC1_BG$BLUE_TRAIN_SEC1_TXT $VENV_STATUS%k%f$BLUE_TRAIN_SEC1_FG%K{blue}"$'\ue0b0'"%k%f%F{white}%K{blue} "$BLUE_TRAIN_PATH"%F{blue}"$BLUE_TRAIN_GIT_INFO_LEFT" %k"$'\ue0b0'"%f "

if [ "$BLUE_TRAIN_NO_BLANK_LINE" = "" ]; then
    PROMPT="
"$PROMPT
fi

if [ "$BLUE_TRAIN_DISABLE_RPROMPT" = "" ]; then
    if [ "$BLUE_TRAIN_RIGHT_A" = "" ]; then
        RPROMPT="$BLUE_TRAIN_GIT_INFO_RIGHT%F{white}"$'\ue0b2'"%k%F{black}%K{white} $BLUE_TRAIN_RIGHT_B %f%k"
    elif [ "$BLUE_TRAIN_RIGHT_B" = "" ]; then
        RPROMPT="%F{$BLUE_TRAIN_RIGHT_A_COLOR_FRONT}%K{$BLUE_TRAIN_RIGHT_A_COLOR_BACK} $BLUE_TRAIN_RIGHT_A %f%k"
    else
        RPROMPT="$BLUE_TRAIN_GIT_INFO_RIGHT%F{white}"$'\ue0b2'"%k%F{black}%K{white} $BLUE_TRAIN_RIGHT_B %f%F{$BLUE_TRAIN_RIGHT_A_COLOR_BACK}"$'\ue0b2'"%f%k%K{$BLUE_TRAIN_RIGHT_A_COLOR_BACK}%F{$BLUE_TRAIN_RIGHT_A_COLOR_FRONT} $BLUE_TRAIN_RIGHT_A %f%k"
    fi
fi
