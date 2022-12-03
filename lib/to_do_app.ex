defmodule ToDoApp do
  def create_tasks do
    # Get # of tasks
    # Convert String to Integer
    {num_of_tasks, _} =
      IO.gets("How many tasks would you want to complete today? ") |> Integer.parse()

      #Create the list of tasks for each number
      for _ <- 1..num_of_tasks do
        IO.gets("Enter Task: ") |> String.trim()
      end
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

    # Search through the list for specific task keyword

    def task_search(tasks, word) do
       for task <- tasks, String.contains?(task, word) do
        task
      end

    end

    # Function that returns 1 random task from task list

    def random_task(tasks) do
      [task] = Enum.take_random(tasks, 1)
      task
    end

    # Delete the task from the list once it's complete
    def complete_task(tasks, task) do
      # If task exists, delete task
      if contains?(tasks, task) do
        List.delete(tasks, task)
      else
        # If it doesn't exist, we return a not found error
        :not_found_error
      end
    end

    # Check if task list is empty
    def list_empty?(tasks) do
      Enum.empty?(tasks)
    end

end
