module ApplicationHelper
  def nav_link(name, url)
    
    content_tag(:h3, {
      :class => url_for =~ %r{#{url}} ? :active : nil
    }) do
      link_to(name, url)
    end
  end


  def page_path(handle)
    Page.where(:handle => handle).first.path
  end
end
