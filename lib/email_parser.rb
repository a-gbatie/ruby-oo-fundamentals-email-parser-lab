# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
attr_accessor :csv_emails
    # new arr = []
    def initialize(csv_emails)
        @csv_emails = csv_emails
    end

    def parse
        csv_emails.split.collect do |x|
            x.split(',')
        end
        .flatten.uniq
        # emails = ["avi@test.com, arel@test.com"]
    end
end
