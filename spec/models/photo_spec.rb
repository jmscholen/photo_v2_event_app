require 'spec_helper'

describe Photo do 
	it 'should be invalid without a name' do
		@photo = Photo.create
		@photo.should be(nil)
		# photo: {name = "bill"}
		# @photo.name.should eq("bill")
	end

	it 'should be valid with a name' do
	end
	it 'should have a user associated with it' do
	end

end
