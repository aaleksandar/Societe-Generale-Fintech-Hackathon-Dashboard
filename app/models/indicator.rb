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

class Indicator < ApplicationRecord
end
