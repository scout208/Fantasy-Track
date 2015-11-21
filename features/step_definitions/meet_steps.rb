# Completed step definitions for basic features: AdminCreateMeet
 
 Then(/^I should not see "(.*?)"$/) do |arg1|
    page.should_not have_content(arg1)
 end
 
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