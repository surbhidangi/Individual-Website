class Announcement < ActiveRecord::Base
 attr_accessible :message, :starts_at, :ends_at

  def self.search(search)
    if search
      where('message LIKE ?', "%#{search}%")
    else
      scoped
    end
  end

 # def self.current_announcements   #class method
  #with_scope :find => { }
    #if hide_time.nil?
     # find [:all, :conditions => (['starts_at <= ?', DateTime.now]&['ends_at >= ?', DateTime.now])]
  #  end
end
