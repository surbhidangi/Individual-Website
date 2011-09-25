class ApplicationController < ActionController::Base
  protect_from_forgery
  helper :all
  #before_filter :get_announcements

  #def get_announcements
  #  @announcements_top = Announcement.find(:all, :conditions => ['starts_at <= ? and ends_at >= ?', DateTime.now, DateTime.now] )
  #  @announcements_top
  #end


end
