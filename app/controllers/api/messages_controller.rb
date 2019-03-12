class Api::MessagesController < ApplicationController

  # before_action :authenticate_message
  

  def index
    @message = Message.all
    render 'index.json.jbuilder'
  end

  def create
    @message = Message.new(
      subject: params[:subject],
      body: params[:message]
      )

    if @message.save
      render 'show.json.jbuilder'

    else
        render json: {errors: @message.errors.full_messages}, status: :bad_request
    end
  end

  def show
    @message = Message.find(params[:id])
    render 'show.json.jbuilder'
  end


  # def destroy
  #   @message = Message.find(params[:id])
  #   @message.destroy
  #   render json: {message: "This shit was burned with fire"}
  # end

end