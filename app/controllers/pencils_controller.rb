class PencilsController < ApplicationController
  # GET /pencils
  # GET /pencils.xml
  def index
    @pencils = Pencil.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @pencils }
    end
  end

  # GET /pencils/1
  # GET /pencils/1.xml
  def show
    @pencil = Pencil.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @pencil }
    end
  end

  # GET /pencils/new
  # GET /pencils/new.xml
  def new
    @pencil = Pencil.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @pencil }
    end
  end

  # GET /pencils/1/edit
  def edit
    @pencil = Pencil.find(params[:id])
  end

  # POST /pencils
  # POST /pencils.xml
  def create
    @pencil = Pencil.new(params[:pencil])

    respond_to do |format|
      if @pencil.save
        format.html { redirect_to(@pencil, :notice => 'Pencil was successfully created.') }
        format.xml  { render :xml => @pencil, :status => :created, :location => @pencil }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @pencil.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /pencils/1
  # PUT /pencils/1.xml
  def update
    @pencil = Pencil.find(params[:id])

    respond_to do |format|
      if @pencil.update_attributes(params[:pencil])
        format.html { redirect_to(@pencil, :notice => 'Pencil was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @pencil.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /pencils/1
  # DELETE /pencils/1.xml
  def destroy
    @pencil = Pencil.find(params[:id])
    @pencil.destroy

    respond_to do |format|
      format.html { redirect_to(pencils_url) }
      format.xml  { head :ok }
    end
  end
end
