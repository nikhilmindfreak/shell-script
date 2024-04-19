#!bin/bash

MOVIES=("RRR" "DJ tIllu" "murari")

# size of above array is 3 but

# index are 0,1,2 = index always starts with 0 , index is always 1 size less

# @ is used to includ all in the its everything

# in varibales even if you dont give {} its fine but in array you have to give {} beacuse later we input []

echo "First movie is:{$MOVIES[0]}
echo "First movie is:{$MOVIES[@]}  
echo "First movie is:{$MOVIES[0]}
