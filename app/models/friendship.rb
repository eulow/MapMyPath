# == Schema Information
#
# Table name: friendships
#
#  id         :integer          not null, primary key
#  user_id    :integer          not null
#  friend_id  :integer          not null
#  status     :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Friendship < ApplicationRecord
  validates :user, :friend, :status, presence: true
  validates :user_id, uniqueness: { scope: :friend_id }

  scope :confirmed, (-> { where(status: 'confirmed') })
  scope :pending, (-> { where(status: 'pending') })

  belongs_to :user
  belongs_to :friend, class_name: 'User'
end
