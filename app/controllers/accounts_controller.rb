class AccountsController < ApplicationController
    def index
    @accounts = Account.all
  end

  def show
    @account = Account.find(params[:id])
  end

  def new
    @account = current_user.accounts.build
  end
  
  def create
    @account = current_user.accounts.build(account_params)

    if @account.save
      redirect_to @account, notice: "Account was sucessfully created"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @account = Account.find(params[:id])
  end

  def update
    @account = Account.find(params[:id])

    if @account.update(account_params)
      redirect_to @account, notice: "Account was sucessfully updated"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @account = Account.find(params[:id])
    @account.destroy

    redirect_to accounts_path, notice: "Account was sucessfully deleted", status: :see_other
  end

  private
    def account_params
      params.require(:account).permit(:profile_pic, :biography, :portfolio)
    end
end
