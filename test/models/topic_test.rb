require 'test_helper'

class TopicTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

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
