class Account < ApplicationRecord
  has_one :account_history
  has_one :supplier, through: :account_history
end
