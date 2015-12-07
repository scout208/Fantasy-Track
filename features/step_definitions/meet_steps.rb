# Completed step definitions for basic features: AdminCreateMeet
 
 Then(/^I should not see "(.*?)"$/) do |arg1|
    page.should_not have_content(arg1)
 end

 Then(/^I should be on the view to create new meet$/) do
    current_path.should == "/meets/new"
    page.should have_content("Create A New Meet")
    page.should have_field('meet_meet_name')
    page.should have_field('meet_location_city')
    page.should have_field('meet_location_country')
    page.should have_field('meet_start_date')
    page.should have_field('meet_end_date')
    page.should have_button('Save')
 end

When /^An admin has created a meet with name "(.*?)" and location_city "(.*?)" and location_country "(.*?)" and start_date "(.*?)" and end_date "(.*?)"$/ do |name, location_city, location_country, start_date, end_date|
  visit '/login'
  fill_in('session_email', :with =>  'admin@gmail.com')
  fill_in('session_password', :with => 'password')
  click_on('Log in')
  visit '/meets/new'
  fill_in('meet_meet_name', :with => name)
  fill_in('meet_location_city', :with => location_city)
  fill_in('meet_location_country', :with => location_country)
  fill_in('meet_start_date', :with => start_date)
  fill_in('meet_end_date', :with => end_date)
  click_button 'Save'
end
When(/^I am on the view to create new meet$/) do
   visit "/meets/new"
end

When(/^I fill in the name of "(.*?)" location_city "(.*?)" location_country "(.*?)" start_date "(.*?)" and end_date "(.*?)"$/) do |arg1, arg2, arg3, arg4, arg5|
   fill_in('meet_meet_name', :with =>  arg1)
   fill_in('meet_location_city', :with => arg2)
   fill_in('meet_location_country', :with =>  arg3)
   fill_in('meet_start_date', :with => arg4)
   fill_in('meet_end_date', :with =>  arg5)
end

Then(/^I should be on the Meets screen$/) do
   current_path.should == "/meets"
end

Then(/^I should see a meet entry with name "(.*?)" location_city "(.*?)" location_country "(.*?)" start_date "(.*?)" and end_date "(.*?)"$/) do |arg1, arg2, arg3, arg4, arg5|
  within('tr', text: arg1) do
     should have_content(arg2)
     should have_content(arg3)
     should have_content(arg4)
     should have_content(arg5)
  end
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
 
 When /^I have logged in as admin$/ do
    visit '/login' 
    fill_in('session_email', :with =>  'admin@gmail.com')
    fill_in('session_password', :with => 'password')
    click_on('Log in')
 end


Then(/^I should be on the event screen of "(.*?)"$/) do |arg1|
  page.should have_content(arg1)
  page.should have_content("Meet Detail")
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

#adminEditCreatesAthlete
Then(/^I should be directed to the Athletes Page$/) do
  page.should have_content("Athlete List")
  current_path.should == "/athletes"
end

Then(/^I should be on the view to Create New Athlete$/) do
  current_path.should == "/athletes/new"
  page.should have_content("Enter Athlete Details")
  page.should have_field("athlete_first_name")
  page.should have_field("athlete_last_name")
  page.should have_field("athlete_country")
  page.should have_field("athlete_birth_date")
  page.should have_field("athlete_notes")
  page.should have_button("Save")
end

When(/^I fill in first name with "(.*?)" last name with "(.*?)" country with "(.*?)" birthdate with "(.*?)" and notes with "(.*?)"$/) do |arg1, arg2, arg3, arg4, arg5|
   fill_in("athlete_first_name", :with =>  arg1)
   fill_in('athlete_last_name', :with => arg2)
   fill_in('athlete_country', :with =>  arg3)
   fill_in('athlete_birth_date', :with => arg4)
   fill_in('athlete_notes', :with =>  arg5)
end

Given(/^I am on the view to create athlete$/) do
  visit "/athletes/new"
end

Given(/^I am on the athlete page$/) do
  visit "/athletes"
end

Then(/^I should see the search box$/) do
   page.should have_css(type: "search")
end

When(/^I click on "(.*?)" for athlete "(.*?)"$/) do |arg1, arg2|
  within('tr', text: arg2) do
      click_on arg1
  end
end

Then(/^I should be on the detail page of "(.*?)"$/) do |arg1|
  page.should have_content("Athlete Detail")
  page.should have_content(arg1)
end

Given(/^I am on the athlete detail page of "(.*?)"$/) do |arg1|
  visit "/athletes"
  click_on arg1
end

Then(/^I should be on the view to edit detail with "(.*?)" "(.*?)" "(.*?)" "(.*?)" "(.*?)"$/) do |arg1, arg2, arg3, arg4, arg5|
  find_field('athlete_first_name').value.should eq arg1
  find_field('athlete_last_name').value.should eq arg2
  find_field('athlete_country').value.should eq arg3
  find_field('athlete_birth_date').value.should eq arg4
  find_field('athlete_notes').value.should eq arg5
end

When(/^I change birthdate into "(.*?)"  and notes with "(.*?)"$/) do |arg1, arg2|
   fill_in('athlete_birth_date', :with => arg1)
   fill_in('athlete_notes', :with =>  arg2)
end



Then(/^I will see "(.*?)" with country "(.*?)" and birthdate with "(.*?)"$/) do |arg1, arg2, arg3|
   within('tr', text: arg1) do
       should have_content(arg2)
       should have_content(arg3)
   end
 end
 
