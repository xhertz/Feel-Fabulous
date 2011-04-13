class PartyPackagesController < ApplicationController
  # GET /party_packages
  # GET /party_packages.xml
  def index
    @party_packages = PartyPackage.order('position')

    if params[:sort]
      render :action => "sort", :layout => "admin"
    end
  end

  # GET /party_packages/1
  # GET /party_packages/1.xml
  def show
    @party_package = PartyPackage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @party_package }
    end
  end

  # GET /party_packages/new
  # GET /party_packages/new.xml
  def new
    @party_package = PartyPackage.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @party_package }
    end
  end

  # GET /party_packages/1/edit
  def edit
    @party_package = PartyPackage.find(params[:id])
  end

  # POST /party_packages
  # POST /party_packages.xml
  def create
    @party_package = PartyPackage.new(params[:party_package])

    respond_to do |format|
      if @party_package.save
        format.html { redirect_to(@party_package, :notice => 'Party package was successfully created.') }
        format.xml  { render :xml => @party_package, :status => :created, :location => @party_package }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @party_package.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /party_packages/1
  # PUT /party_packages/1.xml
  def update
    @party_package = PartyPackage.find(params[:id])

    respond_to do |format|
      if @party_package.update_attributes(params[:party_package])
        format.html { redirect_to(@party_package, :notice => 'Party package was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @party_package.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /party_packages/1
  # DELETE /party_packages/1.xml
  def destroy
    @party_package = PartyPackage.find(params[:id])
    @party_package.destroy

    respond_to do |format|
      format.html { redirect_to(party_packages_url) }
      format.xml  { head :ok }
    end
  end
  
  def sort
    params[:party_package].each_with_index do |party_package_id,index|
       PartyPackage.find(party_package_id).update_attribute(:position,index)
    end
    render :nothing => true
  end

end
