class ContractsController < ApplicationController
  before_action :set_contract, only: [:show, :destroy]

  def new
    @contract = Contract.new
  end

  def create
    @contract = Contract.new
    raise
    if @contract.save
      redirect_to contract_path(@contract)
    else
      render "contracts/show"
    end
  end

  def index
    @contracts = Contract.all
  end

  def show

  end

  def destroy
    @contract.destroy
    redirect_to contracts_path
  end

  private

  def set_contract
    @contract = Contract.find(params[:id])
  end
end
