Given (/^I am on the Fantasy\-Track home page$/) do
  visit root_url # express the regexp above with the code you wish you had
end

  When(/^I press the login button$/) do
    click_on 'Login'
  end

  Then(/^I should see the view where I am able to login$/) do
    current_path.should == "/login"
    page.has_field?('email', :type => 'email_field')
    page.has_field?('password', :type => 'password_field')
    page.has_button?('Log in')
  end
  



Given(/^the following users have been added to FantasyTrack:$/) do |users_table|
  # table is a Cucumber::Ast::Table
  users_table.hashes.each do |user|
    
    u = User.new(user)
    u.user_id = user['user_id']
    u.email = user['email']
    u.role = user['role']
    u.password = user['password']
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
   
  When (/^I press "(.*?)"$/) do |arg1|
     click_on 'Log in'
  end
  
  Then(/^I should be redirected to homepage$/) do
    current_path.should == ""
  end

  Then(/^I should see "(.*?)"$/) do |arg1|
    page.should have_content(arg1)
  end

  Then(/^I should be signed in as the administrator$/) do
     expect(page).to have_selector("#admin")
  end

  Then(/^I should be signed in as a user who is not the administrator$/) do
    expect(page).not_to have_selector("#admin")
  end
  
  