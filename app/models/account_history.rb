class AccountHistory < ApplicationRecord
  belongs_to :supplier
  belongs_to :account
end
