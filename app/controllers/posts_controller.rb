class PostsController < ApplicationController
before_filter :load_forum

def load_forum
@topic = Topic.find(params[:topic_id])
end

  # GET /posts
  # GET /posts.xml
  def index
    @posts = @topic.posts

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @posts }
    end
  end

  # GET /posts/1
  # GET /posts/1.xml
  def show
    @post = @topic.posts.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post }
    end
  end

  # GET /posts/new
  # GET /posts/new.xml
  def new
    @post = @topic.posts.build

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post }
    end
  end

  # GET /posts/1/edit
  def edit
    @post = @topic.posts.find(params[:id])
  end

  # POST /posts
  # POST /posts.xml
   def create
@post = @topic.posts.build(params[:post])

respond_to do |format|
if @post.save
flash[:notice] = 'Post was successfully created.'
format.html { redirect_to(@topic) }
format.xml { render :xml => @post, :status => :created, :location => @topic }
else
format.html { render :action => "new" }
format.xml { render :xml => @post.errors, :status => :unprocessable_entity }
end
end
end

  # PUT /posts/1
  # PUT /posts/1.xml
  def update
    @post = @topic.posts.find(params[:id])

    respond_to do |format|
      if @post.update_attributes(params[:post])
        flash[:notice] = 'Post was successfully updated.'
        format.html { redirect_to(@topic) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.xml
  def destroy
    @post = @topic.posts.find(params[:id])
    @post.destroy

    respond_to do |format|
      format.html { redirect_to(@topic) }
      format.xml  { head :ok }
    end
  end
end
