require_relative 'todolist.rb'

#Creating text file to store the information

path = File.join(File.dirname(__FILE__), '../udacitask/todolist.rb')
file = File.read(path)
$report_file = File.new("report.txt", "w+")



# Creates a new todo list
list = TodoList.new("Things to do everyday")


# Add four new items
list.add_item("Yoga")
list.add_item("Coffee and breakfast")
list.add_item("Work through the book'AWP Practical OOD in Ruby'")
list.add_item("Work on Udacitask")

# Print the list
list.print_list

# Delete the first item
list.remove_item(0)

# Print the list
list.print_list

# Delete the second item
list.remove_item(0)

# Print the list
list.print_list

# Update the completion status of the first item to complete
list.change_status(0)

# Print the list
list.print_list

# Update the title of the list
list.update_title_list("My Udacious List")

# Print the list
list.print_list
