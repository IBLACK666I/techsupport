class HomeController < ApplicationController
  before_action :aktualny
  def index
  end
  def aktualny
    @aktualny = current_user.employee if current_user.present?
  end
end
