class Page < ActiveRecord::Base
  has_many :nodes, :dependent => :destroy

  attr_accessor :seed
  accepts_nested_attributes_for :nodes

  validates :handle, :uniqueness => true
  validates :handle, :presence => true

  scope :by_path, lambda{|path|
    joins(:nodes).where(:nodes => {:path => path})
  }
  before_save :changeable?

  def changeable?
    return true if seed
    self.state != 'solid'
  end

  extend Forwardable

  def_delegators :locale_node, :title, :text, :path, :keywords

  def locale_node
    self.nodes.where(:locale => I18n.locale).first 
  end
end
