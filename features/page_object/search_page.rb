# Search Page Object Model
class SearchPage
  def search_box
    $browser.input(name: "search")
  end

  def search_icon
    $browser.button(type: "submit")
  end

  def search_header
    $browser.h1(text: "Search - Phone")
  end
end
