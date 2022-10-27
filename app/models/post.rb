class Post < ApplicationRecord
  belongs_to :user

  def body_preview
    body.truncate(15, separator: /\n/)
  end
end
