class Node < ActiveRecord::Base
  belongs_to :page


  validates :path, {
    :uniqueness => true, 
    :if         => :path
  }
  validates :title, :text, :locale,  {
    :presence   => true, 
    :uniqueness => {:scope => :page_id}
  }

end
