# == Schema Information
#
# Table name: expenses
#
#  id          :integer          not null, primary key
#  category_id :integer
#  fecha       :datetime
#  concept     :string
#  amount      :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Expense < ActiveRecord::Base
	belongs_to :category
	validates :concept, presence: true,
                    length: { minimum: 3 }
end
