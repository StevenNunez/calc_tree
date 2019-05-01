defmodule CalcTree.Transform do
  use Mix.Releases.Appup.Transform

  def up(app, _v1, _v2, instructions, opts) do
    instructions ++
      [
        {:apply,
         {:supervisor, :restart_child, [CalcTree.CalcSupervisor, CalcTree.Calc.Multiplier]}}
      ]
  end

  def down(app, _v1, _v2, instructions, opts) do
    instructions
  end
end
