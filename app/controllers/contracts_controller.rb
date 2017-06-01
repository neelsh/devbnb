class ContractsController < ApplicationController
  before_action :set_contract, only: [:show, :mark_as_accepted, :mark_as_declined]

  def create
    @contract = Contract.new(contract_params)
    @contract.service = Service.find(params[:service_id])
    @contract.user = current_user
    @contract.status = "pending"
    if @contract.save
      redirect_to contract_path(@contract)
    else
      render "contracts/show"
    end
  end

  def show
  end

  def mark_as_accepted
    @contract.status = "accepted"
    @contract.save
    redirect_to pages_contracts_path
  end

  def mark_as_declined
    @contract.status = "declined"
    @contract.save
    redirect_to pages_contracts_path
  end


  private

  def contract_params
    params.require(:contract).permit(:accepted, :message)
  end

  def set_contract
    @contract = Contract.find(params[:id])
  end
end
