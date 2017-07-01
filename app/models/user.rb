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

class User < ApplicationRecord
  has_many :loans
  has_one :chance, inverse_of: :user, dependent: :destroy
  accepts_nested_attributes_for :chance, allow_destroy: true
end
