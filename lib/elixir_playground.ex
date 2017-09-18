defmodule ElixirPlayground do
  @moduledoc """
  Documentation for ElixirPlayground.
  """

  @doc """
  Hello world.

  ## Examples

      iex> ElixirPlayground.hello
      :world

  """
  def hello do
    :world
  end

  def users_get_in do
    struct_users = %{"john" => %User{age: 27}, "meg" => %User{age: 23}}
    IO.inspect struct_users
    IO.inspect get_in(struct_users, ["john", :age])
  end
end
