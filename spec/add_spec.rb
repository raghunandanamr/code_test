class Add
end

RSpec.describe Add do

    it 'creates a student class' do
      add = Add.new
      expect(add).to be_kind_of(Add)
    end
  
    it 'when empty string is i/p then output should be zero' do 
        ip = ""
        addition = ip.to_i 
        expect(addition).to eq(0)
    end

    it 'add number based on i/p passed' do 
        ip = "2" 
        add = ip.to_i + 0
        expect(add).to eq(ip.to_i)
    end

    it 'add number based on sepearated comma' do 
        ip = "1,2"
        op = ip.chars(&:to_i).sum
        expect(op).to eq(3)
    end

    it 'should handle next line when add numbers' do
        ip = "1\n2,3"
        op = ip.chars.map(&:to_i).sum
        expect(op).to eq(6)
    end

    it 'should return true if ip is invalid' do 
        ip = "1,\n"
        op = ip.chars.last == "\n"
        expect(op).to eq(true)
    end

    it 'should add if delimiter is present' do 
        ip = "//;\n1;2"
        op = ip.chars.map(&:to_i).sum
        expect(op).to eq(3)
    end 
   it 'should display message if negative numbers present' do 
    ip = "-1,-2,-3,4"
     splited_ip = ip.split(",")
     op = []
     splited_ip.map{|d| if !d.to_i.positive? then op.push("negative numbers not allowed <#{d}>") end }
     expect(op).to eq(["negative numbers not allowed <-1>",
     "negative numbers not allowed <-2>",
     "negative numbers not allowed <-3>"]
    )

   end

end