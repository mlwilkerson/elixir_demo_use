defmodule ElixirDemoUseTest do
  use ExUnit.Case
  doctest ElixirDemoUse

  test "greets the world" do
    assert ElixirDemoUse.hello() == :world
  end
end
