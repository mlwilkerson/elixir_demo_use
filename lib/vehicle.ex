defmodule Vehicle do
  @callback report_wheel_count() :: Integer.t

  defmacro __using__(_) do
    quote do
      @behaviour Vehicle

      def go do
        IO.puts "#{name()} going from #{starting_point()} to #{destination()} at speed of #{speed()} using #{report_wheel_count()} wheels"
      end

      def starting_point, do: "here"
      def destination, do: "there"
      def speed, do: "normal"
      def name, do: "Ordinary Vehicle"
      defoverridable [destination: 0, speed: 0, name: 0, starting_point: 0]
    end
  end
end

