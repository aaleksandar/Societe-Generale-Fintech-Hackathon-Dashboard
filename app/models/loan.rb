# == Schema Information
#
# Table name: loans
#
#  id                  :integer          not null, primary key
#  loan_type           :string
#  purchase_date       :date
#  status              :string
#  amount              :integer
#  repayment           :date
#  interest_rate       :decimal(, )
#  administrative_cost :decimal(, )
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  user_id             :integer
#

class Loan < ApplicationRecord
  belongs_to :user
end
