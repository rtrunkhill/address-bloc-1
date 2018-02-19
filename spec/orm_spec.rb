require 'bloc_record/selection.rb'

RSpec.describe Class do
#     let(:dummy_class) { Class.new { extend Selection } }
    class DummyClass
    end
    
    before(:each) do
        @dummy_class = Class.new
        @dummy_class.extend(Selection)
    end
          
        # describe "validation" do
    it "raises argument errors" do
        expect { @dummy_class.find_one("first") }.to raise_error(ArgumentError)
    end
    
    it "raises argument errors" do
        expect { @dummy_class.find("first", 1) }.to raise_error(ArgumentError)
    end
    
    it "calls method_missing correctly" do
        @dummy_class.find_by_name(:peter_kirk)
        #expect{ @dummy_class.find_by_name(:peter_kirk) }.to raise_error(NameError)
    end

    # it 'tests for database queriers' do
    #     expect{ @dummy_class.find_each(:name) }.to make_database_queries
    # end
    

#   describe "#to_s" do
#     it "prints an entry as a string" do
#       entry = Entry.new('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
#       expected_string = "Name: Ada Lovelace\nPhone Number: 010.012.1815\nEmail: augusta.king@lovelace.com"
#       expect(entry.to_s).to eq(expected_string)
#     end
#   end
end

