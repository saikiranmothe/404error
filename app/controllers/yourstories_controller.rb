class YourstoriesController < ApplicationController
  # GET /yourstories
  # GET /yourstories.json
  def index
    @yourstories = Yourstory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @yourstories }
    end
  end

  # GET /yourstories/1
  # GET /yourstories/1.json
  def show
    @yourstory = Yourstory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @yourstory }
    end
  end

  # GET /yourstories/new
  # GET /yourstories/new.json
  def new
    @yourstory = Yourstory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @yourstory }
    end
  end

  # GET /yourstories/1/edit
  def edit
    @yourstory = Yourstory.find(params[:id])
  end

  # POST /yourstories
  # POST /yourstories.json
  def create
    @yourstory = Yourstory.new(params[:yourstory])

    respond_to do |format|
      if @yourstory.save
        format.html { redirect_to @yourstory, notice: 'Yourstory was successfully created.' }
        format.json { render json: @yourstory, status: :created, location: @yourstory }
      else
        format.html { render action: "new" }
        format.json { render json: @yourstory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /yourstories/1
  # PUT /yourstories/1.json
  def update
    @yourstory = Yourstory.find(params[:id])

    respond_to do |format|
      if @yourstory.update_attributes(params[:yourstory])
        format.html { redirect_to @yourstory, notice: 'Yourstory was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @yourstory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /yourstories/1
  # DELETE /yourstories/1.json
  def destroy
    @yourstory = Yourstory.find(params[:id])
    @yourstory.destroy

    respond_to do |format|
      format.html { redirect_to yourstories_url }
      format.json { head :no_content }
    end
  end
end
