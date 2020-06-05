# Really?... ugh.
alias sudo="sudo "

alias src="source ~/.bashrc"
alias emacs="emacs -nw"
alias ras="python -m SimpleHTTPServer"

function snip {
		awk "{print \$$1}"
}

function snipc {
		awk -F"," "{print \$$1}"
}

function awksum {
		awk '{ total += $1; count++ } END { printf "Total: %0.2f\n", total; printf "Avg: %0.2f\n", total/count }'
}


