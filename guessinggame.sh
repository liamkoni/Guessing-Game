echo "Let's play a game!"
echo "How many files are in this directory? Guess!"
read guess
function numfiles { # function to find current number of files in directory
	ls . | wc -w
}
while [[ ! $guess -eq $(numfiles) ]] # check if guess is incorrect
do
	if [[ $guess -gt $(numfiles) ]] # check if guess is too high
	then
		echo "Too high, please try again" # provide feedback
		read guess # ask for new answer
	elif [[ $guess -lt $(numfiles) ]] # check if guess is too low
	then
		echo "Too low, please try again" # provide feedback
		read guess # ask for new answer
	fi
done
if  [[ $guess -eq $(numfiles) ]] # check if guess is correct
then # winning message and quit
	echo "Congratulations! There are indeed $guess files in this directory. Thanks for playing!"
fi
