class Supplement < ApplicationRecord
  belongs_to :user
  attachment :image

  def self.search(search)
    if search != ""
      Supplement.where('title LIKE(?)', "%#{search}%")
    else
      Supplement.all
    end
  end

  with_options presence: true do
    validates :title
    validates :body
    validates :image
  end
end
