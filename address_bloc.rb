require_relative 'controllers/menu_controller'
require 'bloc_record'
 
BlocRecord.connect_to("db/address_bloc.sqlite")

menu = MenuController.new
system "clear"
puts "Welcome to AddressBloc!"
menu.main_menu

let(:selection) { Selection.new('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com') }

selection.find_one("first")