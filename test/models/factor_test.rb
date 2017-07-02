# == Schema Information
#
# Table name: factors
#
#  id         :integer          not null, primary key
#  chance_id  :integer
#  title      :string
#  amount     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class FactorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
