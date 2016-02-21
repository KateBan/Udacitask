class TodoList
	attr_accessor :title, :items
     # Initialize todo list with a title and no items
     def initialize(list_title)
        @title = list_title
        @items = Array.new # Starts empty! No Items yet!
     end

     # Create a new Item and adds it to the array of Items
     def add_item(new_item)
     	item = Item.new(new_item)
     	@items.push(item)
     end

     def remove_item(item)
        @items.delete_at(item)
     end

     def print_list
        @items.each_with_index {|item,index| 
            $report_file.write("#{index + 1} - #{@items[index].description}" + " " + "Completed: #{@items[index].completed_status}\n")}
     end
    
    
end

class Item
    attr_accessor :description, :completed_status

    # Initialize item with a description and marked as 
    # not complete
    def initialize(item_description)
    	@description = item_description
    	@completed_status = false
    end
    
end

