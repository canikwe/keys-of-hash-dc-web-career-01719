require "pry"
class Hash
    
    def keys_of(*arguments) #passes the array as an argument within an array
        arr = []
        self.each do |key, val| #used self to access the hash that the #keys_of method is operating on. Another way is to call #map on itself within  #keys_of. Self is optional. Within the monkey patch, the method would know that map would be called on itself without an explicit 'self' variable. 
            if arguments.include?(val)
                arr << key
            end
           
        end
        arr
    end
end