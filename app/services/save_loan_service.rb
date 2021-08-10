class SaveLoanService
  def initialize(params:)
    @params = params.deep_symbolize_keys
  end

  def call
    loan = Loan.new(params)
    loan.save
  end

  private
  
  attr_reader :params
end