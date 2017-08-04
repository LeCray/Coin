class Transaction < ApplicationRecord
  belongs_to :bank_account

  	TRANSACTION_TYPES = ["deposit", "withdraw", "transfer"]

  	validates :bank_account, presence: true
  	validates :amount, presence: true, numericality: true
  	validates :transaction_type, presence: true, inclusion: {in: TRANSACTION_TYPES}
end
