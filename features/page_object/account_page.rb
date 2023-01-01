# Account Page Object Model
class AccountPage
  def account_header
    $browser.link(text: "Edit Account")
  end

  def edit_account_information
    $browser.link(text: "Edit your account information")
  end

  def change_your_password
    $browser.link(text: "Change your password")
  end

  def modify_your_address_book
    $browser.link(text: "Modify your address book entries")
  end

  def modify_your_wish_list
    $browser.link(text: "Modify your wish list")
  end

  def subscribe_to_newsletter
    $browser.link(text: "Subscribe / unsubscribe to newsletter")
  end
end
