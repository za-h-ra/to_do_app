defmodule ToDoApp do
  def create_tasks do
    # Pattern Matching
    number_of_tasks = IO.gets("How many tasks would you want to complete today?")
    # Convert String into Integer
    {number_of_tasks, _q} = Integer.parse(number_of_tasks)
    number_of_tasks
  end
end
