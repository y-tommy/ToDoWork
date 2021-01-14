class Task < ApplicationRecord
  belongs_to :user
  belongs_to :group, optional: true

  def self.search(search)
    if search
      Task.where(['content LIKE ?', "%#{search}%"])
    else
      Task.all
    end
  end

end
