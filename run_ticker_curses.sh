#!/bin/bash
. ~/git/bashsimplecurses/simple_curses.sh

main () {
	window "title SPY" "white" "100%"
	./ticker.sh SPY
	endwin

	append "appended"

	window "Tech Giants" "green" "50%"
	./ticker.sh AAPL
	./ticker.sh AMZN
	endwin

	col_right
	#	move_up

	window "Non-Equity" "red" "50%"
	./ticker.sh GLD
	./ticker.sh TLT
	endwin
}

main 1
# watch -n 5 -t -c ./ticker.sh $(cat ./.ticker.conf)
