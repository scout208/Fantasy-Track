#user login feature
Given (/^I am on the Fantasy\-Track home page$/) do
  visit root_url # express the regexp above with the code you wish you had
end
  
  When(/^I press "(.*?)"$/) do |arg1|
    click_on arg1
  end

  When(/^I see the "(.*?)" "(.*?)" "(.*?)" and "(.*?)" options on menu$/) do |arg1, arg2, arg3, arg4|
     within('#navbar') do
       should have_link(arg1)
       should have_link(arg2)
       should have_link(arg3)
       should have_link(arg4)
    end
  end
  
  Then(/^I should see the view where I am able to login$/) do
    current_path.should == "/login"
    page.should have_field('session_email')
    page.should have_field('session_password')
    page.should have_button('Log in')
  end
  

Given(/^the following users have been added to FantasyTrack:$/) do |users_table|
  # table is a Cucumber::Ast::Table
  users_table.hashes.each do |user|
    
    u = User.new(user)
    u.user_id = user['user_id']
    u.email = user['email']
    u.role = user['role']
    u.password = user['password']
    if u.user_id != 'test2'
       u.email_confirmed = true
    end
    u.save()
  end
end  

Given (/^I am on the login screen$/) do
   visit '/login'
end
  When(/^I added an email of "(.*?)" and a password "(.*?)"$/) do |arg1, arg2|
    fill_in('session_email', :with =>  arg1)
    fill_in('session_password', :with => arg2)
  end
  
  Then(/^I should be redirected to homepage without seeing "(.*?)" and "(.*?)" Button$/) do |arg1,arg2|
    current_path.should == "/"
    page.should have_no_button(arg1)
    page.should have_no_button(arg2)
  end

  Then(/^I should see "(.*?)"$/) do |arg1|
    page.should have_content(arg1)
  end

  Then(/^I should be signed in as the administrator$/) do
     expect(page).to have_selector("#admin")
     page.should have_content('logged in')
  end

  Then(/^I should be signed in as a user who is not the administrator$/) do
    expect(page).not_to have_selector("#admin")
    page.should have_content('logged in')
  end
  
  Then(/^I will have "(.*?)" "(.*?)" and "(.*?)" on the menu$/) do |arg1, arg2, arg3|
    within('#navbar') do
       should have_content(arg1)
       should have_content(arg2)
       should have_content(arg3)
    end
  end

  Then(/^I should have "(.*?)" "(.*?)" "(.*?)" "(.*?)" and "(.*?)" on the menu$/) do |arg1, arg2, arg3, arg4, arg5|
    within('#navbar') do
       should have_content(arg1)
       should have_content(arg2)
       should have_content(arg3)
       should have_content(arg4)
       should have_content(arg5)
    end
  end
  
  
#user sign up feature

  Then(/^I should see the view where I am able to sign up$/) do
    current_path.should == "/signup"
    page.should have_field("user_user_id")
    page.should have_field('user_email')
    page.should have_field('user_password')
    page.should have_field('user_password_confirmation')
    page.should have_button('Sign Up')
  end
  
  When(/^I am on the signup page$/) do
    visit '/signup'
  end

  When(/^I am fill the fields with username of "(.*?)"  email of "(.*?)" password of "(.*?)" confirmation password of "(.*?)"$/) do |arg1, arg2, arg3, arg4|
    fill_in('user_user_id', :with =>  arg1)
    fill_in('user_email', :with => arg2)
    fill_in('user_password', :with =>  arg3)
    fill_in('user_password_confirmation', :with => arg4)
  end
  
  When(/^I click on "(.*?)" in the email to "(.*?)"$/) do |arg1, email|
     open_email(email)
     current_email.has_link?(arg1).should be_truthy
     current_email.click_on arg1
  end

  Then(/^"(.*?)" receives an email with "(.*?)"$/) do |email, subject|
     open_email(email)
     expect(current_email.subject).to eq subject
  end
  
  
  
#view Meets events entrants
Given(/^the following Meets have been added to FantasyTrack:$/) do |meets_table|
  meets_table.hashes.each do |meet|
    
    m = Meet.new(meet)
    m.meet_name = meet['meet_name']
    m.location_city = meet['location_city']
    m.location_country = meet['location_country']
    m.start_date = meet['start_date']
    m.end_date = meet['end_date']
    m.released = meet['released']
    m.save()
  end
end

Given(/^I am logged in with email of "(.*?)" and a password "(.*?)"$/) do |arg1, arg2|
   visit '/login'
   fill_in('session_email', :with =>  arg1)
   fill_in('session_password', :with => arg2)
   click_on "Log in"
end

When(/^I click "(.*?)"$/) do |arg1|
  find_link(arg1).click
end

Then(/^I should see all of the meets$/) do
  @meet = Meet.all
  @meet.each do |meet|
     page.should have_content(meet.meet_name)
  end
end

Given(/^I am on the Meets screen$/) do
  visit '/meets'
end

  
Given(/^the following Events have been added to Doha Diamond League Meet:$/) do |events_table|
  events_table.hashes.each do |event|
    
    e = Event.new(event)
    e.event_name = event['event_name']
    e.event_type = event['event_type']
    e.meet_id = 1
    e.save()
  end
end

Given(/^the following athletes have been added to FantasyTrack:$/) do |athlete_table|
  
  athlete_table.hashes.each do |athlete|
    
    a = Athlete.new(athlete)
    a.first_name = athlete['first_name']
    a.last_name = athlete['last_name']
    a.birth_date = athlete['birth_date']
    a.country = athlete['country']
    a.notes =athlete['notes']
    a.save()
  end
  
end


Given(/^the following athletes are added to event "(.*?)" under "(.*?)":$/) do |eventname,meetname,entrants_table|
  dohaMeet = Meet.find_by(:meet_name => meetname)
  m800 = dohaMeet.events.find_by(:event_name => eventname)
  entrants_table.hashes.each do |entrant|
    
    e = Athlete.find_by(:first_name => entrant['first_name'],:last_name => entrant['last_name'] )
  
    curAthlete = Athlete.find_by(:first_name => e.first_name, :last_name => e.last_name)
    m800.active_event_entrants.create(:athlete_id => curAthlete.id)
  end
  
end

Then(/^I should see all events for "(.*?)" Meet$/) do |arg1|
  dohaMeet = Meet.find_by(:meet_name => arg1)
  @events = dohaMeet.events
  @events.each do |event|
     page.should have_content(event.event_name)
  end
end

Given(/^I am on the event screen of "(.*?)"$/) do |arg1|
  visit '/meets'
  click_on arg1
end

Then(/^I should see all the entrants attending "(.*?)"$/) do |arg1|
  event = Event.find_by(:event_name => arg1)
  @entrants = event.entrants
  @entrants.each do |entrant|
     page.should have_content(entrant.first_name)
     page.should have_content(entrant.last_name)
  end
end

Then(/^I should be seeing "(.*?)" Link on each row$/) do |arg1|
  page.all(:css, 'tr').each do 
    should have_link(arg1)
  end
end

Then(/^I should not be seeing "(.*?)" Link on each row$/) do |arg1|
  page.all(:css, 'tr').each do 
    should_not have_link(arg1)
  end
end

Then(/^I should not see "(.*?)" Link$/) do |arg1|
  page.should_not have_link(arg1)
end

Then(/^I should not see "(.*?)" Button$/) do |arg1|
  page.should_not have_button(arg1)
end

Then(/^I should see "(.*?)" Link$/) do |arg1|
  page.should have_link(arg1)
end

Then(/^I should see "(.*?)" Button$/) do |arg1|
  page.should have_button(arg1)
end


Then(/^I will see "(.*?)" with Event type of "(.*?)"$/) do |arg1, arg2|
   within('tr', text: arg1) do
     should have_content(arg2)
  end
end

Then(/^I should see all the athletes$/) do
  @athletes = Athlete.all
  @athletes.each do |athlete|
     page.should have_content(athlete.first_name)
     page.should have_content(athlete.last_name)
  end
end

#viewAboutPage 
Given(/^I am not logged in$/) do
  visit root_url
end


Then(/^I will see "(.*?)" button on the row with name of "(.*?)"$/) do |arg1, arg2|
  within('tr',text: arg2) do
    should have_button(arg1)
  end
end
# view rules results 
Then(/^I should see twitter icon$/) do
  page.should have_selector(:xpath, ".//a[@href='http://www.twitter.com']")
end

Then(/^I should see "(.*?)" button$/) do |arg1|
  page.should have_button(arg1)
end



Then(/^I should see the rules view$/) do
  current_path.should == "/scoring_rules"
  page.should have_content("Step 1: Sign Up!")
  page.should have_content("Signing up is easy! Press the login button and fill out your information. Check your email for the confirmation email and get ready to compete against your friends.")
  page.should have_content("Step 2: Form a League!")
  page.should have_content("After you have logged in. Find the Join league tab and either join a friends league or create your own. There are plenty of options to choose from and there is no limit to how many friends you can invite!")
  page.should have_content("Step 3: Compete!")
  page.should have_content("Once your league has been formed, choose athletes to join your team and compete against your friends.")
end


Then(/^I should be still on the homepage$/) do
   current_path.should == '/'
end