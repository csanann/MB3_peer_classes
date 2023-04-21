#file: lib/task_formatter.rb

class TaskFormatter
    #initialize the TaskFormatter with a task
    #@param task [Task] an instance of Task    
    def initialize(task)
        @task = task
    end
    #Format the task as a string
    #@return [string] the formatted task string
    #depends on the task is completed or not
    def format
        if @task.completed?
            "- [x] #{@task.title}"
        else
            "- [ ] #{@task.title}"
        end
    end
end