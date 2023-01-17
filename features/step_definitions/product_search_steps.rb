Given(/^User navigates to the homepage$/) do
  $browser.goto "https://ecommerce-playground.lambdatest.io"
  $user_session = SearchPage.new
  $user_account_session = AccountPage.new
end

Then(/^Search Box is present and loaded$/) do
  expect($user_session.search_box.name)
end

Then(/^User searches for a phone$/) do
  puts "------"
  $user_session.search_box.send_keys("Phone")
  sleep(1)
  $user_session.search_icon.click
end

And(/^There should be an iPhone displayed as part of the results$/) do
  expect($user_session.search_header.text).to eq("Search - Phone")
end
