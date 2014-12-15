require 'spec_helper'

describe Customer do
  describe '#statement' do
    context 'no rental' do
      it {
        customer = Customer.new('matsuda')
        expect(customer.statement).to eq "Rental Record for matsuda\nAmount owed is  0\nYou earned 0 frequent renter points"
      }
    end

    context 'new release movie one rental' do
      it {
        customer = Customer.new('matsuda')
        customer.add_rental(Rental.new(Movie.new('Test', 1), 10))
        expect(customer.statement).to eq "Rental Record for matsuda\n\tTest\t30\nAmount owed is  30\nYou earned 2 frequent renter points"
      }
    end
=begin
    context 'sample 1' do
      let(:programmer_count) { 60 }
      let(:offers) { [[40, 4300], [30, 2300], [20, 2400]].map{|values| Offer.new(*values)} }
      specify do
        expect(Kirishima.main(programmer_count, offers)).to eq 6600
      end
    end
    context 'sample 2' do
      let(:programmer_count) { 250 }
      let(:offers) { [[35, 3640], [33, 2706], [98, 9810], [57, 5472], [95, 7790]].map{|values| Offer.new(*values)} }
      specify do
        expect(Kirishima.main(programmer_count, offers)).to eq 23072
      end
    end
=end
  end
end