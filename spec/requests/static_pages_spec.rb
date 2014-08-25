require 'spec_helper'

describe "Static pages" do

let(:base_title) { "Ruby on Rails Tutorial Sample App | " }

  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end

    it "should have the right title" do
  		visit '/static_pages/home'
  		expect(page).to have_title("#{base_title}Home")
	  end

    it "should have the phrase I love Frannie" do
      visit '/static_pages/home'
      expect(page).to have_content("I love Frannie")
    end
  end

 describe "Help Page" do
 	it "should have the word 'help'" do
 		visit '/static_pages/help'
 		expect(page).to have_content('help')
 	end

 	 it "should have the right title" do
  		visit '/static_pages/help'
  		expect(page).to have_title("#{base_title}Help")
	end
 end

describe "About page" do

	it "should have the word 'about'" do
		visit 'static_pages/about'
		expect(page).to have_content('About')
	end
 	 
 	it "should have the right title" do
  		visit '/static_pages/about'
  		expect(page).to have_title("#{base_title}About")
	end
end

describe "Contact page" do
	
	it "should have the word contact" do
		visit 'static_pages/contact'
		expect(page).to have_content('Contact')
	end
 	 
 	it "should have the right title" do
  		visit '/static_pages/contact'
  		expect(page).to have_title("#{base_title}Contact")
	end
end


end