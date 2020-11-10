# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

export PATH=$PATH:$HOME/.local/bin:$HOME/bin
export SQUEUE_FORMAT="%.18i %.5P %.20j %.7u %.3t %.10M %.4D %.10R"
