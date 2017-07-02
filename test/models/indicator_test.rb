# == Schema Information
#
# Table name: indicators
#
#  id         :integer          not null, primary key
#  product    :string
#  name       :string
#  score      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class IndicatorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
