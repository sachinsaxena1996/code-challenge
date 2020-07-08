require 'rails_helper'

RSpec.describe Company, type: :service do
  describe '.city_state' do
		it 'returns city and state in an array' do      
			expect(AddressService.city_state('93003')).to eq(['Ventura', 'California'])
		end
  end
end
