README.md: guessinggame.sh

	echo "## Guessing Game" > README.md
	date >> README.md
	wc -l guessingame.sh | egrep -0 "[0-9]+" >> README.md
