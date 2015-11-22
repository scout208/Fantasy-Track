# Completed step definitions for basic features: AdminCreateMeet
 
 Then(/^I should not see "(.*?)"$/) do |arg1|
    page.should_not have_content(arg1)
 end

#add or delete events 
 Then(/^I should be directed for new event page$/) do
    current_path.should == "/events/new"
    page.should have_field('event_event_name')
    page.should have_field('event_event_type')
    page.should have_button('Save')
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

Given(/^I have joined "(.*?)" with passcode of "(.*?)"$/) do |arg1, arg2|
  click_on "Join League"
  within('tr', text: arg1) do
      click_on "Join"
  end
  fill_in('league_pass_code', :with => arg2)
  click_on "Save"
end

When(/^I clicked "(.*?)" on the row with name of "(.*?)"$/) do |arg1,arg2|
  within('tr', text: arg2) do
      click_on arg1
  end
end


#Add view Join leagues
Given(/^the following leagues have been added to FantasyTrack:$/) do |leagues_table|
  leagues_table.hashes.each do |league|
    l = League.new(league)
    l.league_name = league['league_name']
    l.pass_code = league['pass_code']
    l.save()
  end
end

Then(/^I should see the view where I am able to create new league$/) do
  current_path.should == "/leagues/new"
    page.should have_field('league_league_name')
    page.should have_field('league_pass_code')
    page.should have_button('Create League')
end

Then(/^I am on the my league page$/) do
   current_path.should == "/leagues"
end

When(/^I fill in the league name with "(.*?)" and pass code with "(.*?)"$/) do |arg1, arg2|
    fill_in('league_league_name', :with =>  arg1)
    fill_in('league_pass_code', :with => arg2)
end

Given(/^I created a league with name of "(.*?)" and passcode of "(.*?)"$/) do |arg1, arg2|
    click_on "My Leagues"
    click_on "Create New League"
    fill_in('league_league_name', :with =>  arg1)
    fill_in('league_pass_code', :with => arg2)
    click_on "Create League"
end

Then(/^I should be on the page to enter the league passcode$/) do
    page.should have_field('league_pass_code')
    page.should have_button('Save')
end

When(/^I enter "(.*?)" as passcode$/) do |arg1|
  fill_in('league_pass_code', :with => arg1)
end

Then(/^I should be on the page to enter the friend email for "(.*?)"$/) do |arg1|
    page.should have_field('user_email')
    page.should have_button('Send Invite')
end

When(/^I fill in the email with "(.*?)"$/) do |arg1|
  fill_in('user_email', :with => arg1)
end

Then(/^in the mail to "(.*?)" it says "(.*?)"$/) do |email, arg1|
  open_email(email)
  expect(current_email).to have_content arg1
end
