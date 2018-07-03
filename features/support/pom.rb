class Home < SitePrism::Page
  element :search_field, '[name="q"]'

  def fill_in_and_search(value)
    search_field.send_keys(value)
    search_field.send_keys(:enter)
  end
end

class Results < SitePrism::Page
  elements :links, 'div.bkWMgd'

  def first_result_text
    links.first.text
  end
end
