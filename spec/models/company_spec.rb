require 'rails_helper'

RSpec.describe Company, type: :model do
  describe '#email_domain' do
  	context 'successful new Company creation' do
  		it 'allows creation of a Company with blank email' do
  			count = Company.count
  			cp = Company.create(email: '', name: 'mainstreet')
  			new_count = Company.count
  			expect(new_count).to eq(count + 1)
  		end

  		it 'allows creation of a Company with email having domain getmainstreet.com' do
  			count = Company.count
  			cp = Company.create(email: 'sach@getmainstreet.com', name: 'mainstreet')
  			new_count = Company.count
  			expect(new_count).to eq(count + 1)
  		end
  	end

  	context 'failure in new Company creation' do
  		it 'not allows creation of a Company with invalid domain' do
  			count = Company.count
  			cp = Company.create(email: 'sach@gmail.com', name: 'mainstreet')
  			new_count = Company.count
  			expect(new_count).to eq(count)
  			expect(cp.errors.messages[:email]).to eq(["Improper domain in email"])
  		end
  	end
  end
end
