class ProtestsController < ApplicationController
  # GET /protests
  # GET /protests.json
  def index
    @protests = Protest.all

    respond_to do |format|
      format.html # index.html.erb
      format.json  { render :json => @protests }
    end
  end

  # GET /protests/1
  # GET /protests/1.json
  def show
    @protest = Protest.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json  { render :json => @protest }
    end
  end

  # GET /protests/new
  # GET /protests/new.json
  def new
    @protest = Protest.new

    respond_to do |format|
      format.html # new.html.erb
      format.json  { render :json => @protest }
    end
  end

  # POST /protests
  # POST /protests.json
  def create
    @protest = Protest.new(params[:protest])

    respond_to do |format|
      if @protest.save
        format.html { redirect_to(@protest, :notice => 'Protest was successfully created.') }
        format.json  { render :json => @protest, :status => :created, :location => @protest }
      else
        format.html { render :action => "new" }
        format.json  { render :json => @protest.errors, :status => :unprocessable_entity }
      end
    end
  end
end
