require_relative '../models/address_book'
require_relative '../models/entry'
require 'bloc_record'

BlocRecord.connect_to('db/address_bloc.sqlite')

people = { 1 => { "first_name" => "David" }, 2 => { "first_name" => "Jeremy" } }

# puts Entry.update(1, {:name => "David"})
puts  Entry.update(people.keys, people.values)