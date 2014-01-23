Feature:
  After voting I want to see who is the hottest movie of 2013

Scenario:  Leaderboard should be sorted by votes
  Given "Thor 2" has 100 votes
  And "Iron Man 3" has 200 votes
  And "Planes" has 1000 votes
  When I view the leaderboard
  Then I should see the movies in order:
    |Planes    |
    |Iron Man 3|
    |Thor 2    |
