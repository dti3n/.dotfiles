# put this in ~/.oh-my-zsh/custom/themes/dtien.zsh-theme

# git_branch() {
#     branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
#     if [[ -n $branch ]]; then
#         # Check if the working directory is dirty
#         git diff --quiet || branch="$branch*"
#         echo "%F{yellow}$branch%f" # Light gray
#     fi
# }
#
# # # Track if this is the first prompt
# # FIRST_PROMPT=true
# #
# # precmd() {
# #     if [[ $FIRST_PROMPT == false ]]; then
# #         print ""  # Adds a newline only after the first command execution
# #     fi
# #     FIRST_PROMPT=false
# # }
#
# PROMPT='%F{blue}%1~%f $(git_branch)
# %F{250}‣%f '

PROMPT='%F{250}λ%f %F{blue}%1~%f $(git_prompt_info)%F{250}‣%f '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[yellow]%}%1{✗%}"
