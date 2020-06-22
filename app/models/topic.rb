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

# topic.title
# topic.content
# topic.???

# ## Schema Information
#
# Table name: `topics`
#
# ### Columns
#
# Name              | Type               | Attributes
# ----------------- | ------------------ | ---------------------------
# **`id`**          | `integer`          | `not null, primary key`
# **`content`**     | `text`             |
# **`published`**   | `boolean`          | `default(TRUE)`
# **`title`**       | `string`           |
# **`created_at`**  | `datetime`         | `not null`
# **`updated_at`**  | `datetime`         | `not null`
#
