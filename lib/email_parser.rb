# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require 'pry'
class EmailAddressParser
    attr_accessor :email
    def initialize email_addresses
        @email = email_addresses
    end

    def parse 
        array_1 = @email.split
        array_2 = array_1.map do |email|
            if email[email.length - 1] == ","
                # binding.pry 
                email.delete (email[email.length - 1])
            # binding.pry 
            else 
                email
            end
        end
        array_2.uniq
    end
end 

parser = EmailAddressParser.new("yogi.sjv@gmail.com, anil.yogi@gmail.com anju@ayhoo.com")
# binding.pry  