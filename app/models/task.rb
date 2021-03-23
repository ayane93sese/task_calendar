class Task < ApplicationRecord

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :rank
  belongs_to :status

  validates :title, presence:true
  validates :start_time, presence:true

  with_options numericality: { other_than: 1, message: "Select" }do
  validates :category_id
  validates :rank_id
  validates :status_id
end

  belongs_to :user

end