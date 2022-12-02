defmodule ToDoApp do
  def create_tasks do
    # Convert str to integer
    {num_of_tasks, _} = IO.gets("How many tasks would you want to complete today? ") |> Integer.parse()
    num_of_tasks
  end
end
