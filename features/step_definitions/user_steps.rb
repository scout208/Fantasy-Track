
Given /^ I am on the Fantasy-Track home page$/ do
    visit root
end

When /^I press login button$/ do
    click_button 'login_button'
end

Then /^I should see the login view$/ do
    visit login
end