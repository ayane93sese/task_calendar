require 'rails_helper'

RSpec.describe Task, type: :model do
  before do
    @task = FactoryBot.build(:task)
  end

  describe "予定新規登録" do
    context "新規登録できるとき" do
      it "titleとstart_time、category_idとrank_idとstatus_idが存在すれば登録できる" do
        expect(@task).to be_valid
      end
      it "titleが存在すれば登録できる" do
        @task.title = "test"
        expect(@task).to be_valid
      end
      it "start_timeが存在すれば登録できる" do
        @task.start_time = "3000-01-01 00:00:00"
        expect(@task).to be_valid
      end
      it "category_idが1以外で選択されていれば登録できる" do
        @task.category_id = 2
        expect(@task).to be_valid
      end
      it "rank_idが1以外で選択されていれば登録できる" do
        @task.rank_id = 2
        expect(@task).to be_valid
      end
      it "status_idが1以外で選択されていれば登録できる" do
        @task.status_id = 2
        expect(@task).to be_valid
      end
      it "textは存在しなくても登録できる" do
        @task.text = ""
        expect(@task).to be_valid
      end
    end
    context "新規登録できないとき" do
      it "titleが空では登録できない" do
        @task.title = ""
        @task.valid?
        expect(@task.errors.full_messages).to include("Title can't be blank")
      end
      it "start_timeが空では登録できない" do
        @task.start_time = ""
        @task.valid?
        expect(@task.errors.full_messages).to include("Start time can't be blank")
      end
      it "category_idが1では登録できない" do
        @task.category_id = 1
        @task.valid?
        expect(@task.errors.full_messages).to include("Category Select")
      end
      it "rank_idが1では登録できない" do
        @task.rank_id = 1
        @task.valid?
        expect(@task.errors.full_messages).to include("Rank Select")
      end
      it "status_idが1では登録できない" do
        @task.status_id = 1
        @task.valid?
        expect(@task.errors.full_messages).to include("Status Select")
      end
    end
  end
end
