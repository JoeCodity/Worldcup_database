#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

cat games.csv | while IFS="," read year round winner opponent winner_goals opponent_goals
do
#Add teams to table
 if [[ $year != "year" ]]
 then
  # get team_id
  team_opponent_id=$($PSQL "Select team_id from teams where name='$opponent'")
  #if not found team id in winner or opponent
  if [[ -z $team_opponent_id ]]
  then
  #Add opponent when not in list
  Insert_opponent_team_result=$($PSQL "Insert into teams(name) Values('$opponent')")
  if [[ $Insert_opponent_team_result == 'INSERT 0 1' ]]
then
echo Inserted Team, $opponent
fi
  fi
  team_winner_id=$($PSQL "Select team_id from teams where name='$winner'")
  #Add if winner not in list
  if [[ -z $team_winner_id ]]
  then
  Insert_team_winner_result=$($PSQL "Insert into teams(name) Values('$winner')")
    if [[ $Insert_team_winner_result == 'INSERT 0 1' ]]
then
echo Inserted Team, $winner
fi
  fi

#Add Games to Table
#check for opponent and winner id
team_opponent_id=$($PSQL "Select team_id from teams where name='$opponent'")
team_winner_id=$($PSQL "Select team_id from teams where name='$winner'")
#check if game id exists
game_id=$($PSQL "Select game_id from games where winner_id='$team_winner_id' and opponent_id='$team_opponent_id'")
  if [[ -z $game_id ]]
  then
insert_game_result=$($PSQL "Insert into games(year,round,winner_id,opponent_id,winner_goals,opponent_goals) Values('$year','$round','$team_winner_id','$team_opponent_id','$winner_goals','$opponent_goals')") 
  fi

  if [[ $insert_game_result == 'INSERT 0 1' ]]
then
echo Inserted Year: $year round: $round winner: $team_winner_id opponent: $team_opponent_id winner goals: $winner_goals oppnent goals: $opponent_goals
fi
fi
done
  
