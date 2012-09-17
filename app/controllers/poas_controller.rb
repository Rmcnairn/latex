class PoasController < ApplicationController
  # GET /poas
  # GET /poas.json
  def index
    @poas = Poa.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @poas }
    end
  end

  # GET /poas/1
  # GET /poas/1.json
  def show
    @poa = Poa.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @poa }
    end
  end

  # GET /poas/new
  # GET /poas/new.json
  def new
    @poa = Poa.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @poa }
    end
  end

  # GET /poas/1/edit
  def edit
    @poa = Poa.find(params[:id])
  end

  # POST /poas
  # POST /poas.json
  def create
    @poa = Poa.new(params[:poa])

    respond_to do |format|
      if @poa.save
        format.html { redirect_to @poa, notice: 'Poa was successfully created.' }
        format.json { render json: @poa, status: :created, location: @poa }
      else
        format.html { render action: "new" }
        format.json { render json: @poa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /poas/1
  # PUT /poas/1.json
  def update
    @poa = Poa.find(params[:id])

    respond_to do |format|
      if @poa.update_attributes(params[:poa])
        format.html { redirect_to @poa, notice: 'Poa was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @poa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /poas/1
  # DELETE /poas/1.json
  def destroy
    @poa = Poa.find(params[:id])
    @poa.destroy

    respond_to do |format|
      format.html { redirect_to poas_url }
      format.json { head :ok }
    end
  end
end
