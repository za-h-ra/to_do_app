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

    # Check if certain task exists within given task list
    # if "meditate" exists, return true
    # else return false

    def contains?(tasks, task) do
      Enum.member?(tasks, task)
    end

    # Function that returns 1 random task from task list

    def random_task(tasks) do
      [task] = Enum.take_random(tasks, 1)
      task
    end

    # Check if task list is empty
    def list_empty?(tasks) do
      Enum.empty?(tasks)
    end

end
