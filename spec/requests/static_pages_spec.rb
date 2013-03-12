require 'spec_helper'

describe "Static pages" do
   let(:base_title) { "Find Your Click" }

  describe "Home page" do
    before { visit root_path } 

    it "should have the content 'Find Your Click'" do
      page.should have_content('Find Your Click')
    end
    
    it "should have the base title" do
      page.should have_selector('title',
                        :text => "Find Your Click")
    end
    
      it "should not have a custom page title" do
        page.should_not have_selector('title', :text => '| Home')
      end
    end
  
    describe "Help page" do
      before { visit help_path}

      it "should have the content 'Help'" do
        page.should have_content('Help')
      end
      
        it "should have the title 'Help'" do
          page.should have_selector('title',
                            :text => "#{base_title} | Help")
        end
      end
    
    describe "About page" do
      before { visit about_path}

       it "should have the content 'About'" do
         page.should have_content('About')
       end
       
       it "should have the title 'About Us'" do
         page.should have_selector('title',
                       :text => "#{base_title} | About Us")
     end
    end
     
     describe "Contact page" do
       before { visit contact_path}

        it "should have the content 'Contact'" do
          page.should have_content('Contact')
        end

        it "should have the title 'Contact'" do
          page.should have_selector('title',
                        :text => "#{base_title} | Contact")
  
  end
end
end