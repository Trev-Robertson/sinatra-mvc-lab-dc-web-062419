class PigLatinizer
    
    attr_reader :string

    def initialize(string)
        @string = string
    end

      def latinize
        split_string = string.split(" ")

       split_string_more = split_string.map do |word|
                    new_elem = word.split("")
            first_letter = new_elem.shift
            if first_letter =~ /[aeiou]/
                new_elem << [first_letter, "w", "a", "y"]
            else
                new_elem << [first_letter, "a", "y"]
            end
            
       end
   join_elements = split_string_more.map do |word|
        word.join
      end
      join_elements.join(" ")

      end


end