# == Schema Information
#
# Table name: albums
#
#  id         :integer          not null, primary key
#  album_name :string(255)      not null
#  band_id    :integer          not null
#  created_at :datetime
#  updated_at :datetime
#

class Album < ActiveRecord::Base

  validates :album_name, :band_id, presence: true

  belongs_to :band
  has_many :tracks, dependent: :destroy

end
