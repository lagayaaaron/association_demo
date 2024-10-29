class Supplier < ApplicationRecord
  has_one :account_history
  has_one :account, through: :account_history
end
