defmodule RobotSimulator do
  defstruct position: {0, 0}, direction: :north
  
  @right_rotation %{:north => :east, :east => :south, :south => :west, :west => :north}
  @left_rotation %{:north => :west, :west => :south, :south => :east, :east => :north}
  @advance %{:north => {0, 1}, :east => {1, 0}, :south => {0, -1}, :west => {-1, 0}}
  
  def create(direction \\ :north, position \\ {0, 0})
  def create(direction, {x, y}) do
    if direction not in [:north, :south, :east, :west] or !is_integer(x) or !is_integer(y) do
        {:error, "invalid position"}
    else
        %RobotSimulator{direction: direction, position: {x, y}}
    end
  end
  
  def simulate(robot, instructions) do
    instructions
      |> String.to_charlist
      |> Enum.reduce_while(robot, fn
        (?R, robot) ->
          {:cont,
            %{robot | direction: Map.fetch!(@right_rotation, robot.direction)}
          }
        (?L, robot) ->
          {:cont,
            %{robot | direction: Map.fetch!(@left_rotation, robot.direction)}
          }
        (?A, robot) ->
          {sx, sy} = robot.position
          {cx, cy} = Map.fetch!(@advance, robot.direction)
          {:cont,
            %{robot | position: {sx + cx, sy + cy}}
          }
        (_invalid, _robot) ->
          {:halt,
            {:error, "invalid instruction"}
          }
        end)
  end
  
  def direction(robot), do: robot.direction
  
  def position(robot), do: robot.position
end
