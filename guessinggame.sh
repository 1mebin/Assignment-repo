count=$(ls -1 | wc -l)
guess=-1

function user_guess {

while [[ $guess -ne $count ]]
do

echo "Please enter your guess of files count in the category"
read guess

	if [[ $guess -lt $count ]]
	then
		echo "Your guess is too low"
	elif [[ $guess -gt $count ]]
	then
		echo "Your guess is too high"
	else
		echo ""
		echo "Congrats! You guessed right!"
	fi
done
}

user_guess
