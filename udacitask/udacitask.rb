require_relative 'todolist.rb'

# Creates a new todo list
jaklin = User.new("Jaklin")
puts User.user_id
list = jaklin.add_list("Jaklin's list", User.user_id)

# Add four new items
list.add_item("Yoga")
list.add_item("Coffee and breakfast")
list.add_item("Work through the book'AWP Practical OOD in Ruby'")
list.add_item("Work on Udacitask")

# Print the list
list.print_file(jaklin)

# Delete the first item
list.remove_item(0)

# Print the list
list.print_file(jaklin)

# Delete the second item
list.remove_item(0)

# Print the list
list.print_file(jaklin)

# Update the completion status of the first item to complete
list.change_status(0)

# Print the list
list.print_file(jaklin)

# Update the title of the list
list.update_title_list("My Udacious List")

# Print the list
list.print_file(jaklin)


#Testing my features: First one is allowing multiple users to create and manipulate their own lists, 
#and store them in a separate file.

katerina = User.new("Katerina")
puts User.user_id
my_list = katerina.add_list("Katerina's list", User.user_id)
my_list.add_item("Take DA ND")
my_list.add_item("Take Ruby ND")
my_list.add_item("Take the FE ND")
my_list.add_item("Take the FS ND")
my_list.add_item("Take RoR ND")
my_list.add_item("Take SRoR ND")
my_list.print_file(katerina)
my_list.change_status(0)
my_list.print_file(katerina)

katerin = User.new("Katerin")
puts User.user_id
m_list = katerin.add_list("Katerina's list", User.user_id)
m_list.add_item("Take SRoR ND")
m_list.print_file(katerina)

