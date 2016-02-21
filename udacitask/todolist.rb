#Adding class User
class User
    attr_accessor :name
    def initialize(user_name)
        @name = user_name
    end

    def add_list(new_list)
        new_list = TodoList.new(new_list)
    end

end

class TodoList
	attr_accessor :title, :items
     # Initialize todo list with a title and no items
     def initialize(list_title)
        @title = list_title
        @items = Array.new # Starts empty! No Items yet!
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
     

     def print_list
        $report_file.write("\n")
        $report_file.write("#{title}".ljust(56) + "Status")
        $report_file.write("\n")
        $report_file.write('#' * 75)
        $report_file.write("\n")
        @items.each_with_index {|item,index| 
            $report_file.write("#{index + 1} - #{@items[index].description}".ljust(55) + " " + "Completed?: #{@items[index].completed_status}\n")}
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
    
end

