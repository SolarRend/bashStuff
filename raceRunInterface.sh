#!/bin/bash
cd /home/csrobot/indigo/tutorial_workspace/src/race_solutions
#ls -d */
echo "Enter number to launch corresponding package"
count=1
for dir in */; do
	echo "$count) $dir"
	((count++))
done

read response

if ((response == 1))
then
	cd DaltonSol/

elif ((response == 2))
then
	cd jjr_race_solver/

elif ((response == 3))
then
	cd JonController/

elif ((response == 4))
then
	cd NickLemiesz_race_solve/

elif ((response == 5))
then
	cd race_bala/
fi
x-terminal-emulator &
touch temp.txt
roslaunch uml_race racetrack.launch > temp.txt
grep "Finished" temp.txt
rm temp.txt 

