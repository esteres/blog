class User < ApplicationRecord
  has_many :posts

  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true
  validates_format_of :email, with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/ 

  def email_preview
    email.gsub(/@.*$/, '@*******.com')
  end
end
