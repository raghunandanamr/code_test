class Add 
    attr_accessor :ip
    def initialize(ip = false )
        @ip = ip
    end

    def check_whether_ip_valid_or_not 
        return false if !ip
        splited_ip = ip.split(",")
        op = []
        return true if ip.chars.last == "\n"
        splited_ip.map{|d| if d.to_i.negative?() then op.push("negative numbers not allowed <#{d}>") end }
        puts "#{op.inspect}"
        return true if op.length > 0
        final_op = 0
        final_op = ip.chars.map(&:to_i).sum
        puts "#{final_op.inspect}"
    end
end