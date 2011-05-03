require 'spec_helper'

describe "Tasks" do
  describe "GET /tasks", :js => true do
    it "displays task" do 
      Task.create!(:name => "Buy Car")
      visit tasks_path
      page.should have_content("Buy Car")
    end   
     
    # Testing javascript link
     it "support js" do 
        visit tasks_path
        click_link "Test for JS support"
        page.should have_content("JS works")
      end
  end 
  
  # Testing creation of Tasks
  describe "POST /tasks" do
    it "create task" do 
      visit tasks_path
      fill_in "Name", :with => "Paint Fences" 
      click_button "Add"
      page.should have_content("Paint Fences")
    end
  end  
  
  
  
  
end
