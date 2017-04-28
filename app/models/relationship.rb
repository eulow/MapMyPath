# == Schema Information
#
# Table name: relationships
#
#  id             :integer          not null, primary key
#  user_one_id    :integer          not null
#  user_two_id    :integer          not null
#  status         :integer          not null
#  action_user_id :integer          not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Relationship < ApplicationRecord
  validates :user_one_id, :user_two_id, :status, :action_user_id, presence: true
  validates :user_one_id, uniqueness: { scope: :user_two_id }

  # status: 0 pending friend request
  # status: 1 confirmed friend


end
