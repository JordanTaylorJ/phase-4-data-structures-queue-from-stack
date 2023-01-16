require_relative './stack'


class MyQueue
    
    def initialize 
        @s1 = Stack.new 
        @s2 = Stack.new
    end 

    def add(value)
        until @s1.empty?  do 
            top = @s1.pop()
            @s2.push(top)
        end
        @s2.push(value)
        until @s2.empty? do 
            bottom = @s2.pop()
            @s1.push(bottom)
        end
    end 

    def remove 
        until @s1.empty?  do 
            top = @s1.pop()
            @s2.push(top)
        end
        @s2.pop()
        until @s2.empty? do 
            bottom = @s2.pop()
            @s1.push(bottom)
        end
    end 

    def peek
        
    end 

end 