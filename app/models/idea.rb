class Idea < ActiveRecord::Base

  has_many :comments

  validates :title, presence: true
  validates :content, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
  validates :author, length: { in: 6..20 }
  validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/}

  accepts_nested_attributes_for :comments, :allow_destroy => true, :reject_if => :all_blank
end
