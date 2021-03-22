class Task < ApplicationRecord

  validates :title, presence:true
  validate :date_before_start

end

def date_before_start
  errors.add(:start_time, "は過去の日付を選択できません") if start_time < Date.today
end