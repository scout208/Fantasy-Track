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