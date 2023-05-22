# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
    attr_reader :email_addresses

    def initialize(email_addresses)
        @email_addresses = email_addresses
    end
    
    def parse
        email_addresses.split(/[,\s]+/).uniq
    end
end

# Example usage and output
email_addresses = "pashy@shiru.com, person@somewhere.org"
parser = EmailAddressParser.new(email_addresses)

puts parser.parse