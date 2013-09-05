class RequestsController < ApplicationController
  def new
    @errors = {}
  end

  def create
    @errors = {}
    if params[:name].empty?
      @errors[:name] = "Введите ФИО"
      params[:name].clear
    end
    if params[:email].empty? or !params[:email].match /[\w]@[a-z].[a-z]/
      @errors[:email] = "Укажите корректную почту" 
      params[:email].clear
    end
    if params[:select].empty?
      @errors[:select] = "Выберите один из вариантов"
    end

    if @errors.empty?
      RequestMailer.request_mail(params[:name], params[:email], params[:select]).deliver
      redirect_to root_path
    else
      render "new"
    end
  end
end
