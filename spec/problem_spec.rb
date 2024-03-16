require "spec_helper"
require_relative "../lib/problem"

RSpec.describe VendingMachine do
    let(:machine) { VendingMachine.new }
  
    describe "#initialize" do
      it "initializes the vending machine with 20 bottles" do
        expect(machine.get_inventory).to eq(20)
      end
    end
  
    describe "#purchase" do
      it "reduces the inventory when drinks are purchased" do
        machine.purchase(5)
        expect(machine.get_inventory).to eq(15)
      end
    end
  
    describe "#restock" do
      it "increases the inventory when drinks are restocked" do
        machine.restock(10)
        expect(machine.get_inventory).to eq(30)
      end
    end
  
    describe "#report" do
      it "displays the current inventory" do
        expect { machine.report }.to output("Inventory: 20 bottles\n").to_stdout
      end
    end
end