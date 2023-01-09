
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=60"

plugins=(git fzf zsh-autosuggestions)

​
6
source $ZSH/oh-my-zsh.sh
7
​
8
# User configuration
9
​
10
# export MANPATH="/usr/local/man:$MANPATH"
11
​
12
# You may need to manually set your language environment
13
# export LANG=en_US.UTF-8
14
​
15
# Preferred editor for local and remote sessions
16
# if [[ -n $SSH_CONNECTION ]]; then
17
#   export EDITOR='vim'
18
# else
19
#   export EDITOR='mvim'
20
# fi
21
​
22
# Compilation flags
23
# export ARCHFLAGS="-arch x86_64"
24
​
25
# Set personal aliases, overriding those provided by oh-my-zsh libs,
26
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
27
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
28
# For a full list of active aliases, run `alias`.
29
#
30
# Example aliases
31
# alias zshconfig="mate ~/.zshrc"
32
# alias ohmyzsh="mate ~/.oh-my-zsh"
33
​
34
source /home/harsh/bin/env-harsh.sh
35
​
36
# >>> conda initialize >>>
37
# !! Contents within this block are managed by 'conda init' !!
38
__conda_setup="$('/home/harsh/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
39
if [ $? -eq 0 ]; then
40
    eval "$__conda_setup"
41
else
42
    if [ -f "/home/harsh/anaconda3/etc/profile.d/conda.sh" ]; then
43
        . "/home/harsh/anaconda3/etc/profile.d/conda.sh"
44
    else
45
        export PATH="/home/harsh/anaconda3/bin:$PATH"
46
    fi
47
fi
48
unset __conda_setup
49
# <<< conda initialize <<<
50
​
51
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
52
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
