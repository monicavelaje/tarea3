#Solution File
class Node

    attr_accessor :value, :next_node

    def initialize(value = nil)
        @value = value
    end

    def to_s
        @value
    end

end

class SinglyLinkedList

    attr_accessor :head

    def initialize(first_value=nil)
        @head = Node.new(first_value) if first_value
    end

    def add(value)
        #adds a new node to the list, and makes it the new head and links it to the former head
        new_node = Node.new(value)
        new_node.next_node = @head

        @head = new_node
    end

    def remove
        @head = @head.next_node
    end
end
