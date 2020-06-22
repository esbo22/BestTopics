class User < ApplicationRecord
end

# ## Schema Information
#
# Table name: `users`
#
# ### Columns
#
# Name              | Type               | Attributes
# ----------------- | ------------------ | ---------------------------
# **`id`**          | `integer`          | `not null, primary key`
# **`birthday`**    | `date`             |
# **`email`**       | `string`           | `default(""), not null`
# **`firstname`**   | `string(80)`       |
# **`fullname`**    | `string`           |
# **`is_admin`**    | `boolean`          | `default(FALSE)`
# **`lastname`**    | `string(80)`       |
# **`created_at`**  | `datetime`         | `not null`
# **`updated_at`**  | `datetime`         | `not null`
#
# ### Indexes
#
# * `index_users_on_email`:
#     * **`email`**
# * `index_users_on_fullname`:
#     * **`fullname`**
#
