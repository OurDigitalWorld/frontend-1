module SearchHelper
    def formatResult(obj)
        ret_val = ""

        if obj.nil? or obj.empty? then
            return "Unspecified"
        end

        if obj.is_a?(Array) then
            obj.each do |str|
                if str.is_a?(Array) then
                    ret_val = ret_val + formatResult(str)                    
                else 
                    ret_val = ret_val + str
                end
            end
            return ret_val 
        end 
        return obj 
    end

end
