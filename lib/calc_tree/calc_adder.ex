defmodule CalcTree.Calc.Adder do
  use GenServer

  def start_link(_) do
    GenServer.start_link(__MODULE__, :ok, name: __MODULE__)
  end

  def init(:ok) do
    :timer.send_interval(:timer.seconds(1), :add)
    {:ok, 1}
  end

  def handle_info(:add, count) do
    new_value = count + 1
    IO.puts("#{count} plus 1 is #{new_value}")
    {:noreply, new_value}
  end
end
