ActiveAdmin.register Page do
    form do |f| 
      f.inputs "Meta" do
        f.input :handle
        f.input :published
      end

      f.has_many :nodes do |n|
      n.input :path
      n.input :locale, :as => :country_code
      n.input :keywords
      n.input :title
      n.input :text
      end
      f.buttons
    end
end
