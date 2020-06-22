class Topic < ApplicationRecord

  scope :published, -> { where(published: true) }

  def self.search(keywords)
    if keywords.blank? # if keywords.nil? || keywords == ""
      self
    else # recherche sur le titre uniquement
      self.where('title LIKE ?', "%#{keywords}%")
    end
  end

end
