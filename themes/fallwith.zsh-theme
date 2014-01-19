# call spectrum_ls to display a list of colors and numeric values
eval grey242='$FG[242]'
eval green022='$FG[022]'
eval red052='$FG[052]'
eval red124='$FG[124]'
eval green112='$FG[112]'
eval blue039='$FG[039]'

# emoji
#eval emkoala=`echo '\xF0\x9F\x90\xA8'`
eval emkoala=$(echo $emoji[koala])

# from robbyrussel.zsh-theme, use green/red to indicate the result of the last operation
local ret_status="%(?:%{$green112%}$>:%{$red124%}$>%s)"

# from minimal.zsh-theme
ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}%{$fg[white]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$red124%}●%{$reset_color%}]%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_CLEAN="]%{$reset_color%} "
ZSH_THEME_SVN_PROMPT_PREFIX=$ZSH_THEME_GIT_PROMPT_PREFIX
ZSH_THEME_SVN_PROMPT_SUFFIX=$ZSH_THEME_GIT_PROMPT_SUFFIX
ZSH_THEME_SVN_PROMPT_DIRTY=$ZSH_THEME_GIT_PROMPT_DIRTY
ZSH_THEME_SVN_PROMPT_CLEAN=$ZSH_THEME_GIT_PROMPT_CLEAN

PROMPT='%{$blue039%}%c %{$grey242%}%T $(git_prompt_info)${emkoala}  ${ret_status}%{$green112%}%p%{$reset_color%} '
