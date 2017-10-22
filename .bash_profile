
# Setting PATH for Python 3.5
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH

# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH

# Setting PATH for Python 2.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"

export PATH

export PATH=/Users/Takuya/Downloads/Unipro/pylearnuni:$PATH
export PATH=/Users/Takuya/Unipro/ubi-mluni:$PATH
export PATH=/usr/local/mecab/bin:$PATH
export PATH=$PATH:/usr/local/include
export PATH=$PATH:/usr/local/mysql/bin

export PYTHONPATH=/Users/Takuya/Unipro/ubi-mluni:$PYTHONPATH
export PYTHONPATH=/Users/Takuya/Unipro/ubi-mluni/MLuni:$PYTHONPATH

export PS1="\[\e[1;32m\]\u:\[\033[01;34m\]\w\[\033[00m\]\$ "

export PGDATA=/usr/local/var/postgres
export BROWSER=open

echo "loaded .bash_profile"

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH


# load .bashrc (Mac OS X do not load .bashrc with login)
if [ -f ~/.bashrc ] ; then
. ~/.bashrc
fi
