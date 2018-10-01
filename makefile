all: README.md

README.md: 
	echo "# Guessing Game" > README.md
	echo "" >> README.md
	echo "The last time `make` was run was: $(date +%r" "%A", "%d" "%B" "%Y)" >> README.md
	echo "" >> README.md
	echo "The number of lines of code in guessinggame.sh is: $(wc -l guessinggame.sh | egrep -o "[0-9]+")"

clean:
	rm README.md

