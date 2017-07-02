# == Schema Information
#
# Table name: chances
#
#  id                    :integer          not null, primary key
#  kredit_kes            :integer
#  kredit_refinansiranje :integer
#  kredit_stambeni       :integer
#  kredit_auto           :integer
#  kredit_evergrin       :integer
#  kredit_fluo           :integer
#  kredit_potrosacki     :integer
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  user_id               :integer
#

class Chance < ApplicationRecord
  belongs_to :user
  has_many :factors
end
