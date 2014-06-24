class HTMLGenerator

  def initialize(initialized_string = nil)
    @initialized_string = initialized_string
  end

  def section(string)
    html_string = "<section>#{string}</section>"
    determine_string_output(html_string, @initialized_string)
  end

  def unordered_list(args)
    string = "<ul>"
    args.each do |arg|
     string = string + "<li>#{arg}</li>"
    end
    html_string = string + "</ul>"
    determine_string_output(html_string, @initialized_string)
  end

  def button(button_name, hash = {})
    html_string = if hash != {}
      "<button class='#{hash[:class]}'>#{button_name}</button>"
    else
      "<button>#{button_name}</button>"
    end
    determine_string_output(html_string, @initialized_string)
  end

  def determine_string_output(html_string, initialized_string)
    return @initialized_string.gsub("CONTENT", html_string) if @initialized_string
    html_string
  end

end