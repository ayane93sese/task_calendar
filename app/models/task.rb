class Task < ApplicationRecord

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :rank
  belongs_to :status

  validates :title, presence:true

  with_options numericality: { other_than: 1, message: "を選択してください" }do
  validates :category_id
  validates :rank_id
  validates :status_id
end

end