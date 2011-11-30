class ReceiversController < ApplicationController
  # GET /receivers
  # GET /receivers.json
  def index
    @receivers = Receiver.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @receivers }
    end
  end

  # GET /receivers/1
  # GET /receivers/1.json
  def show
    @receiver = Receiver.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @receiver }
    end
  end

  # GET /receivers/new
  # GET /receivers/new.json
  def new
    @receiver = Receiver.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @receiver }
    end
  end

  # GET /receivers/1/edit
  def edit
    @receiver = Receiver.find(params[:id])
  end

  # POST /receivers
  # POST /receivers.json
  def create
    @receiver = Receiver.new(params[:receiver])

    respond_to do |format|
      if @receiver.save
        format.html { redirect_to @receiver, notice: 'Receiver was successfully created.' }
        format.json { render json: @receiver, status: :created, location: @receiver }
      else
        format.html { render action: "new" }
        format.json { render json: @receiver.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /receivers/1
  # PUT /receivers/1.json
  def update
    @receiver = Receiver.find(params[:id])

    respond_to do |format|
      if @receiver.update_attributes(params[:receiver])
        format.html { redirect_to @receiver, notice: 'Receiver was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @receiver.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /receivers/1
  # DELETE /receivers/1.json
  def destroy
    @receiver = Receiver.find(params[:id])
    @receiver.destroy

    respond_to do |format|
      format.html { redirect_to receivers_url }
      format.json { head :ok }
    end
  end
end
