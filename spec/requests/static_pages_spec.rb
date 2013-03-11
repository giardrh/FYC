require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Find Your Click'" do
      visit '/static_pages/home'
      page.should have_content('Find Your Click')
    end
    
    it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title',
                        :text => "Find Your Click | Home")
    end
  end
  
    describe "Help page" do

      it "should have the content 'Help'" do
        visit '/static_pages/help'
        page.should have_content('Help')
      end
      
        it "should have the title 'Help'" do
          visit '/static_pages/help'
          page.should have_selector('title',
                            :text => "Find Your Click | Help")
        end
      end
    
    describe "About page" do

       it "should have the content 'About'" do
         visit '/static_pages/about'
         page.should have_content('About')
       end
       
       it "should have the title 'About Us'" do
         visit '/static_pages/about'
         page.should have_selector('title',
                       :text => "Find Your Click | About Us")
     end
  end
end