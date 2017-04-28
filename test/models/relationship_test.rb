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

require 'test_helper'

class RelationshipTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
