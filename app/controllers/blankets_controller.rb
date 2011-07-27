class BlanketsController < ApplicationController
  # GET /blankets
  # GET /blankets.xml
  def index
    @blankets = Blanket.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @blankets }
    end
  end

  # GET /blankets/1
  # GET /blankets/1.xml
  def show
    @blanket = Blanket.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @blanket }
    end
  end

  # GET /blankets/new
  # GET /blankets/new.xml
  def new
    @blanket = Blanket.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @blanket }
    end
  end

  # GET /blankets/1/edit
  def edit
    @blanket = Blanket.find(params[:id])
  end

  # POST /blankets
  # POST /blankets.xml
  def create
    @blanket = Blanket.new(params[:blanket])

    respond_to do |format|
      if @blanket.save
        format.html { redirect_to(@blanket, :notice => 'Blanket was successfully created.') }
        format.xml  { render :xml => @blanket, :status => :created, :location => @blanket }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @blanket.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /blankets/1
  # PUT /blankets/1.xml
  def update
    @blanket = Blanket.find(params[:id])

    respond_to do |format|
      if @blanket.update_attributes(params[:blanket])
        format.html { redirect_to(@blanket, :notice => 'Blanket was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @blanket.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /blankets/1
  # DELETE /blankets/1.xml
  def destroy
    @blanket = Blanket.find(params[:id])
    @blanket.destroy

    respond_to do |format|
      format.html { redirect_to(blankets_url) }
      format.xml  { head :ok }
    end
  end
end
