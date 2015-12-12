# league navbar
Given(/^I am on the "(.*?)" homepage$/) do |arg1|
  visit 'leagues'
  within('tr',text: arg1) do 
      click_on 'Enter'
  end
end

Given(/^I am on "(.*?)" of the league$/) do |arg1|
   click_on arg1
end

Then(/^The second nav bar should have "(.*?)" "(.*?)" "(.*?)" "(.*?)" "(.*?)" and "(.*?)"$/) do |arg1, arg2, arg3, arg4, arg5, arg6|
  within('ul', text: arg1) do
      should have_link(arg2)
      should have_link(arg3)
      should have_link(arg4)
      should have_link(arg5)
      should have_link(arg6)
  end
end


Then(/^I should be on the meets screen$/) do
  current_path.should == "/meets"
end

#leagues messages
Given(/^the following messages have been added to "(.*?)":$/) do |arg1, message_table|
  league = League.find_by(:league_name => arg1)
  message_table.hashes.each do |message|
    admin = User.find_by(:user_id => message['user_id'])
    league.league_messages.create!(user_id: admin.id, content: message['content'])
  end
end

When(/^I compose a new message with "(.*?)"$/) do |arg1|
  page.should have_field("league_message_content")
  fill_in('league_message_content', :with =>  arg1)
end

#view standings
Then(/^I will see "(.*?)" "(.*?)" on the row with username "(.*?)"$/) do |arg1, arg2, arg3|
  within('tr', text: arg3) do
    should have_content(arg1)
    should have_content(arg2)
  end
end

When(/^I clicked "(.*?)" on the first row$/) do |arg1|
  first(:link, arg1).click
end