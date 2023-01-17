Given(/^Ecommerce webpage Login Page loads$/) do
  $browser.goto "https://ecommerce-playground.lambdatest.io/index.php?route=account/login"
  $user_session = LoginPage.new
  $user_account_session = AccountPage.new
end

Then(/^Ecommerce Login Link is present loaded$/) do
  expect($user_session.username_textbox.name)
  expect($user_session.password_textbox.name)
end

Then(/^Correct Username and Password Should Login Successfully (.*) (.*)$/) do |username, password|
  puts "------"
  puts username
  $user_session.username_textbox.send_keys(username)
  sleep(1)
  $user_session.password_textbox.send_keys(password)
  sleep(1)
  $user_session.login_button.click
end

And(/^My Account page should display after login$/) do
  expect($user_account_session.account_header.name)
end

And(/^Matching Account Details should be displayed$/) do
  expect($user_account_session.edit_account_information.name)
  expect($user_account_session.change_your_password.name)
  expect($user_account_session.modify_your_address_book.name)
  expect($user_account_session.modify_your_wish_list.name)
  expect($user_account_session.subscribe_to_newsletter.name)
end
