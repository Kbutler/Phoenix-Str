class AdminedPage1sController < ActorAdminedPageController
  # GET /admined_page1s
  # GET /admined_page1s.json
  def index
    @admined_page1s = AdminedPage1.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admined_page1s }
    end
  end

  # GET /admined_page1s/1
  # GET /admined_page1s/1.json
  def show
    @admined_page1 = AdminedPage1.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admined_page1 }
    end
  end

  # GET /admined_page1s/new
  # GET /admined_page1s/new.json
  def new
    @admined_page1 = AdminedPage1.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admined_page1 }
    end
  end

  # GET /admined_page1s/1/edit
  def edit
    @admined_page1 = AdminedPage1.find(params[:id])
  end

  # POST /admined_page1s
  # POST /admined_page1s.json
  def create
    @admined_page1 = AdminedPage1.new(params[:admined_page1])

    respond_to do |format|
      if @admined_page1.save
        format.html { redirect_to @admined_page1, notice: 'Admined page1 was successfully created.' }
        format.json { render json: @admined_page1, status: :created, location: @admined_page1 }
      else
        format.html { render action: "new" }
        format.json { render json: @admined_page1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admined_page1s/1
  # PUT /admined_page1s/1.json
  def update
    @admined_page1 = AdminedPage1.find(params[:id])

    respond_to do |format|
      if @admined_page1.update_attributes(params[:admined_page1])
        format.html { redirect_to @admined_page1, notice: 'Admined page1 was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @admined_page1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admined_page1s/1
  # DELETE /admined_page1s/1.json
  def destroy
    @admined_page1 = AdminedPage1.find(params[:id])
    @admined_page1.destroy

    respond_to do |format|
      format.html { redirect_to admined_page1s_url }
      format.json { head :ok }
    end
  end
end
