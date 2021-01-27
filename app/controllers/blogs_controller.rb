class BlogsController < ApplicationController
  before_action :set_blog, only: %i[ show edit update destroy ]

  # GET /blogs or /blogs.json
  def index
    @blogs = Blog.all
  end

  # GET /blogs/1 or /blogs/1.json
  def show
  end

  # GET /blogs/new
  def new
    @blog = Blog.new
  end

  # GET /blogs/1/edit
  def edit
  end

  # POST /blogs or /blogs.json
  def create
    @blog = Blog.new(blog_params)
    @blog.user2_id = current_user2.id
      if params[:back]
        render :new
      else
    #respond_to do |format|
        if @blog.save
          redirect_to blogs_path, notice: 'Picture was successfully created.'
          #format.html { redirect_to @blog, notice: "Blog was successfully created." }
          #format.json { render :show, status: :created, location: @blog }
        else
          render :new
          #format.html { render :new, status: :unprocessable_entity }
          #format.json { render json: @blog.errors, status: :unprocessable_entity }
        end
      end
    #end
  end
  def confirm
    @blog = Blog.new(blog_params)
    @blog.user2_id = current_user2.id
  end

  # PATCH/PUT /blogs/1 or /blogs/1.json
  def update
    #respond_to do |format|
      if @blog.update(blog_params)
        redirect_to blogs_path, notice: 'Picture was successfully updated.'
        #format.html { redirect_to @blog, notice: "Blog was successfully updated." }
        #format.json { render :show, status: :ok, location: @blog }
      else
        render :edit
        #format.html { render :edit, status: :unprocessable_entity }
        #format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    #end
  end
  # DELETE /blogs/1 or /blogs/1.json
  def destroy
    @blog.destroy
    respond_to do |format|
      format.html { redirect_to blogs_url, notice: "Blog was successfully destroyed." }
      format.json { head :no_content }
    end
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog
      @blog = Blog.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def blog_params
      params.require(:blog).permit(:content, :image, :image_cache, :user2_id)
    end
end