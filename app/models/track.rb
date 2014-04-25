# == Schema Information
#
# Table name: tracks
#
#  id         :integer          not null, primary key
#  track_name :string(255)      not null
#  album_id   :integer          not null
#  created_at :datetime
#  updated_at :datetime
#

class Track < ActiveRecord::Base

  validates :track_name, :album_id, presence: true

  belongs_to :album
  has_one :band, through: :album, source: :band


end
