# Completed step definitions for basic features: AdminCreateMeet

Given /^I am on the Meets page$/ do
  visit '/meets'
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
 
 Then /^I should see a meet entry with name "(.*?)" and location_city "(.*?)" and location_country "(.*?)" and start_date "(.*?)" and end_date "(.*?)"$/ do |name, location_city, location_country, start_date, end_date|
   result=false
   all("tr").each do |tr|
     if tr.has_content?(name) && tr.has_content?(location_city) && tr.has_content?(location_country) && tr.has_content?(start_date) && tr.has_content?(end_date)
       result = true
       break
     end
   end  
   expect(result).to be_truthy
 end
 
 When /^I have logged in as admin$/ do
    visit '/login' 
    fill_in('session_email', :with =>  'admin@gmail.com')
    fill_in('session_password', :with => 'password')
    click_on('Log in')
 end
 
 When /^I have visited the "(.*?)" meet details page$/ do  |name|
   visit '/meets'
   all("tr").each do |tr|
     if tr.has_content? (name)
       click_on "#{name}"
     end
   end
 end
 
 When /^I have clicked the "(.*?)" button$/ do |button|
   click_on "#{button}"
 end