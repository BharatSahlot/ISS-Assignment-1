awk '!seen[$0]++' $1 
awk '!seen[$0]++' $1 | sed -r '/^\s*$/d'
