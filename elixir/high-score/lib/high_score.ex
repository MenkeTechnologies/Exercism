defmodule HighScore do
  @init 0
  def new() do
    %{}
  end

  def add_player(scores, name, score \\ @init) do
    Map.put(scores, name, score)
  end

  def remove_player(scores, name) do
    Map.delete(scores, name)
  end

  def reset_score(scores, name) do
    Map.put(scores, name, @init)
  end

  def update_score(scores, name, score) do
    Map.update(scores, name, score, &(score + &1))
  end

  def get_players(scores) do
    Map.keys(scores)
  end
end
