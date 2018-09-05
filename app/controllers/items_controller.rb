class ItemsController < ApplicationController
  before_action :get_departments

  def index
    @items = Item.all
  end

  def show
  end

  def new
  end

  def edit
  end

  private

    def get_departments
      @departments = Department.all
    end
end
