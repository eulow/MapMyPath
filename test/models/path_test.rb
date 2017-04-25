# == Schema Information
#
# Table name: paths
#
#  id            :integer          not null, primary key
#  name          :string           not null
#  polyline      :text             not null
#  distance      :float            not null
#  start_address :string           not null
#  end_address   :string           not null
#  duration      :integer          default("0")
#  done          :boolean          default("false")
#  done_date     :date
#  user_id       :integer          not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  description   :text
#

require 'test_helper'

class PathTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
