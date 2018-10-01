all: README.md

README.md: guessinggame.sh 
	echo "# Guessing Game" > README.md
	echo "" >> README.md
	echo "The last time \`make\` was run was: $(shell date +%r" "%A", "%d" "%B" "%Y)" >> README.md
	echo "" >> README.md
	echo "The number of lines of code in guessinggame.sh is: $(shell wc -l guessinggame.sh | egrep -o "[0-9]+")" >> README.md

clean:
	rm README.md

