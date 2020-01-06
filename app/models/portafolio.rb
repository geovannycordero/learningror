class Portafolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

  def self.angular
    where(subtitle: 'Angular')
  end

  scope :ruby_on_rails, -> { where(subtitle: 'Ruby on rails') }

  after_initialize :set_defaults

  def set_defaults
    # ||= set the default image only if the image is nil
    self.main_image ||= "https://via.placeholder.com/300.png/09f/fffC/O%20https://placeholder.com/"
    self.thumb_image ||= "https://via.placeholder.com/150C/O%20https://placeholder.com/%20/"
  end
end
