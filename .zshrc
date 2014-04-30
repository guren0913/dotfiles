# ������ѽ����褦�ˤ���
autoload -Uz colors
colors
### Ls Color ###
# ��������
export LSCOLORS=Exfxcxdxbxegedabagacad
# �䴰���ο�������
export LS_COLORS='di=01;34:ln=01;35:so=01;32:ex=01;31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
# ZLS_COLORS�Ȥϡ�
export ZLS_COLORS=$LS_COLORS
# ls���ޥ�ɻ�����ư�ǿ����Ĥ�(ls -G�Τ褦�ʤ�Ρ�)
export CLICOLOR=true
# �䴰����˿����դ���
zstyle ':completion:*:default' menu select=1
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'

autoload -U compinit; compinit # �䴰��ǽ��ͭ���ˤ���
setopt auto_list               # �䴰����������ɽ������(d)
setopt auto_menu               # �䴰����Ϣ�Ǥ��䴰�������ɽ������(d)
setopt list_packed             # �䴰�����Ǥ�������ͤ��ɽ������
setopt list_types              # �䴰����˥ե�����μ����ɽ������
bindkey "^[[Z" reverse-menu-complete  # Shift-Tab���䴰�����ս礹��("\e[Z"�Ǥ�ư���)
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' # �䴰������ʸ����ʸ������̤��ʤ�

#PROMPT
setopt prompt_subst
RPROMPT="%{${fg[green]}%}[%~]%{${reset_color}%}"

HOSTNAME=`hostname`
PROMPT="[%{${fg[red]}%}%*%{${reset_color}%}] %n@%{${fg[yellow]}%}${HOSTNAME}%{${reset_color}%}$ "

# �ҥ��ȥ������
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000
# Ʊ�����ޥ�ɤ�ҥ��ȥ�˻Ĥ��ʤ�
setopt hist_ignore_all_dups
# �ҥ��ȥ�ե��������¸����Ȥ������Ǥ˽�ʣ�������ޥ�ɤ����ä���Ť�����������
setopt hist_save_nodups
# ���ڡ�������Ϥޤ륳�ޥ�ɹԤϥҥ��ȥ�˻Ĥ��ʤ�
setopt hist_ignore_space
# �ҥ��ȥ����¸����Ȥ���;ʬ�ʥ��ڡ�����������
setopt hist_reduce_blanks

# ñ���ư
bindkey "^F" forward-word
bindkey '^B' backward-word

# �ⵡǽ�ʥ磻��ɥ�����Ÿ������Ѥ���
setopt extended_glob

# �Ķ��ѿ�
export LANG=ja_JP.eucJP

# ���ܸ�ե�����̾��ɽ����ǽ�ˤ���
setopt print_eight_bit

# '#' �ʹߤ򥳥��ȤȤ��ư���
setopt interactive_comments

# �ǥ��쥯�ȥ�̾������cd����
setopt auto_cd

# ^R �����򸡺��򤹤�Ȥ��˥磻��ɥ����ɤ���ѽ����褦�ˤ���
bindkey '^R' history-incremental-pattern-search-backward

# vim:set ft=zsh :
