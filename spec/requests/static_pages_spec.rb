require 'spec_helper'

describe "Static pages" do
   let(:base_title) { "Find Your Click" }

  describe "Home page" do

    it "should have the content 'Find Your Click'" do
      visit '/static_pages/home'
      page.should have_content('Find Your Click')
    end
    
    it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title',
                        :text => "#{base_title} | Home")
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
                            :text => "#{base_title} | Help")
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
                       :text => "#{base_title} | About Us")
     end
     
     describe "Contact page" do

        it "should have the content 'Contact'" do
          visit '/static_pages/contact'
          page.should have_content('contact')
        end

        it "should have the title 'Contact'" do
          visit '/static_pages/contact'
          page.should have_selector('title',
                        :text => "#{base_title} | Contact")
  
  end
end