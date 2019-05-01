defmodule CalcTree.Calc.Multiplier do
  use GenServer

  def start_link(_) do
    GenServer.start_link(__MODULE__, :ok, name: __MODULE__)
  end

  def init(:ok) do
    :timer.send_interval(:timer.seconds(1), :multiply)
    {:ok, 1}
  end

  def handle_info(:multiply, count) do
    new_value = count * 2
    IO.puts("#{count} times 2 is #{new_value}")
    {:noreply, new_value}
  end
end
