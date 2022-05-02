defmodule Todo do
  def create_todo do

    {counter, _notwanna} = IO.gets("Enter the number of Todo you want to add: ") |> Integer.parse

    for _ <- 1..counter do
      list = IO.gets("Enter Task: ") |> String.trim()
    end
  end

  def temp_todo do
    ["apple", "bananas", "carrot"]
  end

  def check?(list, task) do
    Enum.member?(list, task)
  end

  def search_key(list, word) do
    for task <- list, String.contains?(task, word) do
      :task
    end
  end

  def rand list do
    task = Enum.random list
    task
  end
end
