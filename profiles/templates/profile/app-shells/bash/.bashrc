# Calculate path=~ comment=#

if [[ $- != *i* ]] ; then
	return
fi
eval "$(starship init bash)"
