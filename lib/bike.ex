defmodule Bike do
  use Vehicle
  def starting_point, do: "Home"
  def destination, do: "Work"
  def speed, do: "leisurely"
  def name, do: "Bike"
  def report_wheel_count, do: 2
end
