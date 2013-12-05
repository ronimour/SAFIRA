require 'spec_helper'

feature 'Entrepreneur Features' do 

  	context 'Create' do
    
	    background do
	      visit 'entrepreneurs/new'
	    end

	    context 'with correct inputs' do
	      background do
	        fill_in 'entrepreneur[name]', with: 'Name'
	        fill_in 'entrepreneur[personal_email]', with: 'Personal email'        
	        fill_in 'entrepreneur[professional_email]', with: 'Professional email'
	        click_on 'Save'
	      end
	      scenario 'it displays the project' do
	        expect(page).to have_content 'Name'
	      end
	      
	    end

	    scenario 'with incorrect inputs' do
	      click_on 'Save'
	    end
	end	
	
end