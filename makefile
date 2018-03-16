
README.md: guessinggame.sh
	echo "Peer-reviewed assignment for the Unix Workbench class" > README.md
	echo "Created on: $$(date)" >> README.md
	echo "The guessinggames.sh file contains the following number of entries:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
