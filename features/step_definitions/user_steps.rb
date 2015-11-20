#user login feature
Given (/^I am on the Fantasy\-Track home page$/) do
  visit root_url # express the regexp above with the code you wish you had
end
  
  When(/^I press "(.*?)"$/) do |arg1|
    click_on arg1
  end

  When(/^I see the "(.*?)" "(.*?)" and "(.*?)" options on menu$/) do |arg1, arg2, arg3|
     within('#navbar') do
       should have_content(arg1)
       should have_content(arg2)
       should have_content(arg3)
    end
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
  
  Then(/^I should be redirected to homepage without seeing "(.*?)" Button$/) do |arg1|
    current_path.should == "/"
    page.should have_no_content(arg1)
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
    page.has_field?('user_id', :type => 'text_field')
    page.has_field?('email', :type => 'email_field')
    page.has_field?('password', :type => 'password_field')
    page.has_field?('password_confirmation', :type => 'password_field')
    page.has_button?('Sign up')
  end