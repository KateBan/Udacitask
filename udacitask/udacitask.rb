require_relative 'todolist.rb'

# Creates a new todo list
jaklin = User.new("Jaklin")
list = jaklin.add_list("Jaklin's list", jaklin.user_id)

# Add four new items
list.add_item("Yoga")
list.add_item("Coffee and breakfast")
list.add_item("Work through the book'AWP Practical OOD in Ruby'")
list.add_item("Work on Udacitask")

# Print the list to a file
list.print_file(jaklin)

# Delete the first item
list.remove_item(0)

# Print the list to a file
list.print_file(jaklin)

# Delete the second item
list.remove_item(0)

# Print the list to a file
list.print_file(jaklin)

# Update the completion status of the first item to complete
list.change_status(0)

# Print the list to a file
list.print_file(jaklin)

# Update the title of the list
list.update_title_list("My Udacious List")

# Print the list to a file
list.print_file(jaklin)


#Testing my features: 
#First one is allowing multiple users to create and manipulate their own lists 
#Second features allows the users store their lists in a separate file
#Third feature allows the users to have uniq id which prevents from duplication in users names and lists

#Add a second user and his list
katerina = User.new("Katerina")
my_list = katerina.add_list("Katerina's list", katerina.user_id)
my_list.add_item("Take DA ND")
my_list.add_item("Take Ruby ND")
my_list.add_item("Take the FE ND")
my_list.add_item("Take the FS ND")
my_list.add_item("Take RoR ND")
my_list.add_item("Take SRoR ND")
my_list.print_file(katerina)
my_list.change_status(0)
my_list.print_file(katerina)


#Add a second list by the same user in the same file
another_list = katerina.add_list("Katerina's New List", katerina.user_id)
another_list.add_item("Practise Ruby")
another_list.add_item("Look for a job")
another_list.change_status(0)
another_list.print_file(katerina)

#Add third user
katerina = User.new("Katerina")
my_list = katerina.add_list("Katerina's List", katerina.user_id)
my_list.add_item("Cook dinner")
my_list.add_item("Play with the cat")
my_list.print_file(katerina)

