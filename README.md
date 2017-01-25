Prerequisites

The latest vagrant built for the Udacity tournament project. 

Instructions

  1. Start Vagrant
  2. Open Terminal or cmd and browse to the vagrant folder
  3. Vagrant up
  4. Vagrant ssh
  5. Change to /vagrant/tournament folder
  6. Open PSQL and run the tournament.sql
  7. Connect to the database
  8. Run the tests like below:
     vagrant@vagrant-ubuntu-trusty-32:/vagrant/tournament$ python tournament_test.py

Expected Outcome
  1. countPlayers() returns 0 after initial deletePlayers() execution.
  2. countPlayers() returns 1 after one player is registered.
  3. countPlayers() returns 2 after two players are registered.
  4. countPlayers() returns zero after registered players are deleted.
  5. Player records successfully deleted.
  6. Newly registered players appear in the standings with no matches.
  7. After a match, players have updated standings.
  8. After match deletion, player standings are properly reset.
  9. Matches are properly deleted.
  10. After one match, players with one win are prop
 
  Success!  All tests pass!
