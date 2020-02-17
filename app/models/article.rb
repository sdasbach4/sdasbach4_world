class Article < ApplicationRecord
    has_one :category

    validates_presense_of :title
    validates_presense_of :content

    scope :active, 	     -> { where('active = ?', true) }
    scope :alphabetical, -> { order('title') }

end
