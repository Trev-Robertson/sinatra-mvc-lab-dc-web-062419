class PigLatinizer
    
    attr_accessor :string

        def initialize(sting)
            @string = string
        end


      def latinize(string)
        split_string = string.split(" ")

       split_string_more = split_string.map do |word|
                    new_elem = word.split("")
            if (new_elem.first =~ /[aeiou]/) != nil
                new_elem << ["w", "a", "y"]
            else
                # binding.pry
                while (new_elem.first =~ /[aeiou]/) == nil do
               first_letter = new_elem.shift
            #    binding.pry
               new_elem << first_letter
            #    binding.pry
                end
                new_elem << ["a", "y"]
            end
            
       end
   join_elements = split_string_more.map do |word|
        word.join
      end
      join_elements.join(" ")

      end


end