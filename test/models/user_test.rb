# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  client_id  :integer
#  name       :string
#  surname    :string
#  birthdate  :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
