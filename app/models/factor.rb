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

class Factor < ApplicationRecord
  belongs_to :chance
end
