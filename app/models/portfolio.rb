class Portfolio < ApplicationRecord
    validates_presence_of :title, :body, :main_image, :thumb_image

    def self.java
        where(subtitle: 'Java')
    end

    scope :ruby, -> { where(subtitle: 'Ruby') }
end
