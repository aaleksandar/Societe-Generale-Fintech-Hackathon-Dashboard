# == Schema Information
#
# Table name: loans
#
#  id                  :integer          not null, primary key
#  type                :integer
#  purchase_date       :date
#  status              :integer
#  amount              :integer
#  repayment           :date
#  interest_rate       :decimal(, )
#  administrative_cost :decimal(, )
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  user_id             :integer
#

require 'test_helper'

class LoanTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
