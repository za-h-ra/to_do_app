defmodule ToDoApp do
  def create_tasks do
    # Get # of tasks
    # Convert String to Integer
    {num_of_tasks, _} =
      IO.gets("How many tasks would you want to complete today? ") |> Integer.parse()

    num_of_tasks
  end

  def test_task_list do
    ["meditate", "exercise", "do laundry"]
  end
end
