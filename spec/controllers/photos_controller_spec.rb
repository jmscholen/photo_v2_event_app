require 'spec_helper'

describe PhotoController do 

	describe 'get #show' do 
		it 'should assign photo to @photo' do	
			photo = FactoryGirl.create(:photo)
			get :show, id: photo.id
			assigns(:photo).should eq(photo)
		end
	end

	describe 'put #update' do 
		it 'should update photo' do
			photo = FactoryGirl.create(:photo)
			put :update, id: photo.id, photo:{name: "classroom"}
			assigns(:photo).name.should eq("classroom")
		end
	end
end
