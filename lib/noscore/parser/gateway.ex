defmodule Noscore.Parser.Gateway do
  import NimbleParsec
  import Noscore.Parser.Client
  import Noscore.Parser.Helpers

  def command(combinator \\ empty()) do
    combinator
    |> label(string("nos0575"), "header")
    |> ignore(space())
    |> nos0575()
    |> eos()
  end
end
