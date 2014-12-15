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
  end
end