class ContractsController < ApplicationController
  before_action :set_contract, only: [:show]

  def create
    @contract = Contract.new(contract_params)
    @contract.service = Service.find(params[:service_id])
    @contract.user = current_user
    if @contract.save
      redirect_to contract_path(@contract)
    else
      render "contracts/show"
    end
  end

  def show
  end


  private

  def contract_params
    params.require(:contract).permit(:accepted)
  end

  def set_contract
    @contract = Contract.find(params[:id])
  end
end
