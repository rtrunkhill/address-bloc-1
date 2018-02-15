require 'bloc_record'

RSpec.describe Class do
    let(:dummy_class) { Class.new { include Selection } }
    # before(:each) do
    #     @dummy_class = Class.new
    #     @dummy_class.extend(Selection)
    # end
      
    # describe "validation" do
        it "raise argument errors" do
            expect(dummy_class.find_one("first")).to eq 1
        end

  

#   describe "#to_s" do
#     it "prints an entry as a string" do
#       entry = Entry.new('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
#       expected_string = "Name: Ada Lovelace\nPhone Number: 010.012.1815\nEmail: augusta.king@lovelace.com"
#       expect(entry.to_s).to eq(expected_string)
#     end
#   end
end

