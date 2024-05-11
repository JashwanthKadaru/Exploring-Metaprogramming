class Array
    def replace(original, replacement)
        self.map {|e| e == original ? replacement : e }
    end
end
