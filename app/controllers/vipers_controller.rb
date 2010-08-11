class VipersController < ApplicationController
  # GET /vipers
  # GET /vipers.xml
  def index
    @vipers = Viper.all
    @vipers = Viper.paginate :page =>params[:page], 
                                     :order => 'created_at desc', 
                                    # :conditions => conditions,
                                     :per_page => 2

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @vipers }
    end
  end

  # GET /vipers/1
  # GET /vipers/1.xml
  def show
    @viper = Viper.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @viper }
    end
  end

  # GET /vipers/new
  # GET /vipers/new.xml
  def new
    @viper = Viper.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @viper }
    end
  end

  # GET /vipers/1/edit
  def edit
    @viper = Viper.find(params[:id])
  end

  # POST /vipers
  # POST /vipers.xml
  def create
    @viper = Viper.new(params[:viper])

    respond_to do |format|
      if @viper.save
        flash[:notice] = 'Viper was successfully created.'
        format.html { redirect_to(@viper) }
        format.xml  { render :xml => @viper, :status => :created, :location => @viper }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @viper.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /vipers/1
  # PUT /vipers/1.xml
  def update
    @viper = Viper.find(params[:id])

    respond_to do |format|
      if @viper.update_attributes(params[:viper])
        flash[:notice] = 'Viper was successfully updated.'
        format.html { redirect_to(@viper) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @viper.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /vipers/1
  # DELETE /vipers/1.xml
  def destroy
    @viper = Viper.find(params[:id])
    @viper.destroy

    respond_to do |format|
      format.html { redirect_to(vipers_url) }
      format.xml  { head :ok }
    end
  end
end
