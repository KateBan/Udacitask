#Add class User
class User
    @@user_id = 1
    attr_accessor :name, :user_id
    def initialize(user_name)
        @name = user_name
        $user_name = File.new("#{user_name}_#{@@user_id}.txt", "w+")
        @@user_id += 1
        @user_id = @@user_id
    end

    def add_list(new_list, user_id)
        new_list = TodoList.new(new_list, user_id)
    end

    def self.user_id
        @@user_id 
    end
end

class TodoList
	attr_accessor :title, :items, :user_id
     # Initialize todo list with a title and no items
     def initialize(list_title, user_id)
        @title = list_title
        @items = Array.new # Starts empty! No Items yet!
        @user_id = user_id
     end
     
     def update_title_list(list_title)
        @title = list_title
     end

     # Create a new Item and adds it to the array of Items
     def add_item(new_item)
     	item = Item.new(new_item)
     	@items.push(item)
     end

     def remove_item(item)
        @items.delete_at(item)
     end

     def change_status(index)
        @items[index].completed_status = "Done"
     end

     def print_file(user_name)    
        $user_name.write("\n#{title}".ljust(58) + "Status\n")
        $user_name.write('*' * 75)
        $user_name.write("\n")
        @items.each_with_index {|item,index| 
             $user_name.write("#{index + 1} - #{@items[index].description}".ljust(56) + " " + "Completed: #{@items[index].completed_status}\n")}     
    end
end

class Item
    attr_accessor :description, :completed_status

    # Initialize item with a description and marked as 
    # not complete
    def initialize(item_description)
    	@description = item_description
    	@completed_status = "Not yet"
    end

    def completed?
        @completed_status == "Done"
    end 
end

