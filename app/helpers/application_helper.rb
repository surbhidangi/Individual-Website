module ApplicationHelper
  def javascript (*files)
    content_for(:ead) {javascript_include_tag(*files)}
  end
  def stylesheet(*files)
    content_for(:head) {stylesheet_link_tag(*files)}
  end
#  def current_announcements
 #   @current_announcements ||= Announcement.current_announcements(session[:announcements_hide_time])
#  end

  def sortable(column, title = nil)
    title ||= column.titleize
    css_class = column == sort_column ? "current #{sort_direction}" :nil
    direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
    link_to comment, :params.merge(:sort => column, :direction => direction, :page => nil), {:class => css_class}
  end

   def get_announcements_helper
     @announcements_top = Announcement.find(:all, :conditions => ['starts_at <= ? and ends_at >= ?', DateTime.now, DateTime.now] )
     @announcements_top
   end



end
