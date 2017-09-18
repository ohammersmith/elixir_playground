defmodule User do
  defstruct [:age]

  defdelegate fetch(term, key), to: Map
  # $ mix compile
  # $ mix run -e ElixirPlayground.users_get_in
  # %{"john" => %User{age: 27}, "meg" => %User{age: 23}}
  # 27

  # defdelegate fetch(term), to: Map
  # $ mix compile
  # $ mix run -e ElixirPlayground.users_get_in
  # %{"john" => %User{age: 27}, "meg" => %User{age: 23}}
  # ** (UndefinedFunctionError) function User.fetch/2 is undefined (User does not implement the Access behaviour)
  #     (elixir_playground) User.fetch(%User{age: 27}, :age)
  #     (elixir) lib/access.ex:304: Access.get/3
  #     (elixir_playground) lib/elixir_playground.ex:22: ElixirPlayground.users_get_in/0
  #     (stdlib) erl_eval.erl:670: :erl_eval.do_apply/6
  #     (elixir) lib/code.ex:176: Code.eval_string/3
  #     (elixir) lib/enum.ex:675: Enum."-each/2-lists^foreach/1-0-"/2
  #     (elixir) lib/enum.ex:675: Enum.each/2

  defdelegate get(term, key, default), to: Map
  defdelegate get_and_update(data, key, function), to: Map
  defdelegate pop(data, key), to: Map

  # def fetch(term, key) do
  #   Map.fetch(term)
  # end
  # $ mix compile
  # Compiling 2 files (.ex)
  # warning: variable "key" is unused
  #   lib/user.ex:27
  #
  # warning: function Map.fetch/1 is undefined or private. Did you mean one of:
  #
  #       * fetch/2
  #
  #   lib/user.ex:28
  #
  # Generated elixir_playground app
  # $ mix run -e ElixirPlayground.users_get_in
  # %{"john" => %User{age: 27}, "meg" => %User{age: 23}}
  # ** (UndefinedFunctionError) function Map.fetch/1 is undefined or private. Did you mean one of:
  #
  #       * fetch/2
  #
  #     (elixir) Map.fetch(%User{age: 27})
  #     (elixir) lib/access.ex:304: Access.get/3
  #     (elixir_playground) lib/elixir_playground.ex:22: ElixirPlayground.users_get_in/0
  #     (stdlib) erl_eval.erl:670: :erl_eval.do_apply/6
  #     (elixir) lib/code.ex:176: Code.eval_string/3
  #     (elixir) lib/enum.ex:675: Enum."-each/2-lists^foreach/1-0-"/2
  #     (elixir) lib/enum.ex:675: Enum.each/2

end
