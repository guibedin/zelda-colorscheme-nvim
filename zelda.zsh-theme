# Zelda Oh My Zsh Theme
# A dark forest theme inspired by the Legend of Zelda
# Triforce prompt, like the lambda in the Half-Life theme

# Colors (using 256-color escape codes)
ZELDA_FOREGROUND="%F{252}"  # #d4d4d8
ZELDA_COMMENT="%F{241}"     # #494b4b
ZELDA_RED="%F{167}"          # #e06060
ZELDA_GREEN="%F{79}"         # #4aba91
ZELDA_YELLOW="%F{185}"       # #d4ce46
ZELDA_BLUE="%F{67}"          # #5898b8
ZELDA_HYLIAN="%F{111}"       # #5b8dc8 Hylian Shield blue
ZELDA_PURPLE="%F{140}"       # #a080c0
ZELDA_CYAN="%F{79}"          # #4aba91
ZELDA_RESET="%f"

# Git info
ZSH_THEME_GIT_PROMPT_PREFIX=" ${ZELDA_YELLOW}(${ZELDA_RESET}"
ZSH_THEME_GIT_PROMPT_SUFFIX="${ZELDA_YELLOW})${ZELDA_RESET}"
ZSH_THEME_GIT_PROMPT_DIRTY=" ${ZELDA_RED}*${ZELDA_RESET}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_UNTRACKED=""
ZSH_THEME_GIT_PROMPT_AHEAD=""
ZSH_THEME_GIT_PROMPT_BEHIND=""

# Git status symbols
ZSH_THEME_GIT_PROMPT_ADDED="${ZELDA_GREEN}+${ZELDA_RESET}"
ZSH_THEME_GIT_PROMPT_MODIFIED="${ZELDA_YELLOW}~${ZELDA_RESET}"
ZSH_THEME_GIT_PROMPT_DELETED="${ZELDA_RED}-${ZELDA_RESET}"
ZSH_THEME_GIT_PROMPT_RENAMED="${ZELDA_PURPLE}»${ZELDA_RESET}"
ZSH_THEME_GIT_PROMPT_UNMERGED="${ZELDA_RED}=${ZELDA_RESET}"
ZSH_THEME_GIT_PROMPT_AHEAD="↑"
ZSH_THEME_GIT_PROMPT_BEHIND="↓"

# Triforce symbol
TRIFORCE="${ZELDA_YELLOW}▲${ZELDA_RESET}"

# Return code: green triforce on success, red on failure
local return_code="%(?:${ZELDA_YELLOW}▲:${ZELDA_RED}▲)${ZELDA_RESET}"

# User:root in red, otherwise green
local user_symbol="%(!:${ZELDA_RED}%n:${ZELDA_GREEN}%n)${ZELDA_RESET}"

# Directory in Hylian Shield blue
local directory="${ZELDA_HYLIAN}%~${ZELDA_RESET}"

# Assemble prompt with triforce
PROMPT='${user_symbol}${ZELDA_GREEN}:${ZELDA_RESET}${directory}${ZELDA_RED}$(git_prompt_info) 
${TRIFORCE} '

# Right prompt: timestamp
RPROMPT='${ZELDA_COMMENT}[%*]${ZELDA_RESET}'
