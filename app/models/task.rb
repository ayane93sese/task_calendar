class Task < ApplicationRecord

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :rank
  belongs_to :status

  validates :title, presence:true

end