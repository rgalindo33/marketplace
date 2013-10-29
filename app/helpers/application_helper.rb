module ApplicationHelper

  # 
  # generates a link which gives the current class to the active link so 
  # you can know in which page you are
  # @param  link_text (string) text to be shown
  # @param  link_path the path of the link
  # 
  def nav_link(link_text, link_path)
    class_name = current_page?(link_path) ? 'current' : ''
    link_to link_text, link_path, class: class_name
  end
  
end
