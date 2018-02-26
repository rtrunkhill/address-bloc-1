# require 'bloc_record/selection.rb'
require 'bloc_record/persistence.rb'
require 'bloc_record'

BlocRecord.connect_to("db/address_bloc.db")

RSpec.describe Class do
#     let(:dummy_class) { Class.new { extend Selection } }
    class DummyClass
    end
    
    before(:each) do
        @dummy_class = Class.new
        # @dummy_class.extend(Selection)
       #  @dummy_class.extend(Persistence)
        # @dummy_class.extend(ClassMethods)
    end
          
    people = { 1 => { "first_name" => "David" }, 2 => { "first_name" => "Jeremy" } }
    
    
    it "takes mulitple arguements for update" do
        puts "is a hash" if people.is_a?(Hash)
        # @dummy_class.update(people.keys, people.values)
        expect{ @dummy_class.find_by_name(:peter_kirk) }.to raise_error(NameError)
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

