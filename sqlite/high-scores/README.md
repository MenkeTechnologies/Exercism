# High Scores

Welcome to High Scores on Exercism's SQLite Track.
If you need help running the tests or submitting your code, check out `HELP.md`.

## Instructions

Manage a game player's High Score list.

Your task is to build a high-score component of the classic Frogger game, one of the highest selling and most addictive games of all time, and a classic of the arcade era.
Your task is to write methods that return the highest score from the list, the last added score and the three highest scores.

To populate the `results` table, there are four "properties" you must consider:

* **scores**: You must aggregate all scores for each `game_id`, and store the scores in a comma-separated string.
  The scores must appear in the same order as they were inserted into the `scores` table.
* **latest**: You must find the last score inserted into the `scores` table.
* **personalBest**: Find the maximum score for each `game_id`.
* **personalTopThree**: Find the three highest scores for each `game_id`, and aggregate them into a comma-separated string, sorted in descending order.

## Source

### Created by

- @glennj

### Based on

Tribute to the eighties' arcade game Frogger