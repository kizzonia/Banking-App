class TransactionsController < ApplicationController
  def index
    @transactions = @account.transactions.order("created_at DESC")

  end
end
