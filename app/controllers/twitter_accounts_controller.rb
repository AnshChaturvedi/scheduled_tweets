class TwitterAccountsController < ApplicationController
  before_action :require_user_logged_in!
  before_action :set_twitter_account, only: [:destroy]

  def index
    @twitter_accounts = Current.user.twitter_accounts
  end

  def destroy
    Rails.logger.info params[:id]
    @twitter_account.destroy
    redirect_to twitter_accounts_path, notice: "Twitter account @#{@twitter_account.username} has been deleted"
  end

  private
  def set_twitter_account
    @twitter_account = Current.user.twitter_accounts.find(params[:id])
  end

end