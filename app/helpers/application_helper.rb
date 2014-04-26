module ApplicationHelper

  def auth_token_input
    "<input type='hidden' name='authenticity_token' value='#{ form_authenticity_token }'>".html_safe
  end

  def display_each_item(item)
    display_string = ""
    item.all.each do |item|
      display_string << "#{item.name}"
      display_string << "<br>"
      # display_string << "<p><a href='http://www.htmldog.com'>HTML Dog</a></p>"
    end 
    display_string.html_safe
  end

  def default_option?(option, default)
    if option.id == default 
      return "selected='selected'".html_safe
    end
    nil
  end 

end
