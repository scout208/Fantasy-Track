# Completed step definitions for basic features: AdminCreateMeet
 
 Then(/^I should not see "(.*?)"$/) do |arg1|
    page.should_not have_content(arg1)
 end

#add or delete events 
 Then(/^I should be directed for new event page$/) do
    current_path.should == "/events/new"
    page.has_field?('event[event_name]', :type => 'text_field')
    page.has_field?('event[event_type]', :type => 'text_field')
    page.has_button?('Save')
 end

 When(/^I fill in event name with "(.*?)" and Event type with "(.*?)"$/) do |arg1, arg2|
    fill_in('event_event_name', :with =>  arg1)
    fill_in('event_event_type', :with => arg2)
 end

  Then(/^I shoud see "(.*?)"$/) do |arg1|
    page.should have_content(arg1)
  end
  
#add or delete entrants
Given(/^I am on the Entrants screen of "(.*?)" under "(.*?)"$/) do |arg1, arg2|
   visit '/meets'
   click_on arg2
   click_on arg1
end

When(/^I clicked "(.*?)" on the row with name of "(.*?)"$/) do |arg1,arg2|
  within('tr', text: arg2) do
      click_on arg1
  end
end