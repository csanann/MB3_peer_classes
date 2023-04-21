#file: spec/task_formatter_spec.rb
# using unit tests and mocking technique
require 'task_formatter'

RSpec.describe TaskFormatter do
    #test for formatting an imcomplete task
    it "formats an incompete task" do
        #create a mock task with a title and a completed status
        incomplete_task = double(:incomplete_task, title: "Incomplete Task", completed?: false)

        #initilize the TaskFormatter wtih the mock task
        formatter = TaskFormatter.new(incomplete_task)

        #expect the formatted output to match the correct format for an incomplete task
        expect(formatter.format).to eq("- [ ] Incomplete Task")
    end

    #Test for formatting a competed task
    it "formats a completed task" do
        #create a cock test with a title and a competed status
        completed_task = double(:completed_task, title: "Completed Task", completed?: true)
        #initialize the TaskFormatter with the mock task
        formatter = TaskFormatter.new(completed_task)
        #expect the formatted output to match the correct format for a complated task
        expect(formatter.format).to eq("- [x] Completed Task")
    end
end