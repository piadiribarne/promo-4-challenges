require_relative "../views/post_view.rb"

class PostsController
  def initialize
    @view = PostView.new
  end

  def index
    # DO NOT WRITE SQL QUERIES
    # TODO: gather all posts from the database
    # TODO: give them to the view to be printed
    all_posts = Post.all
    @view.view_all_posts(all_posts)

  end

  def create
    # DO NOT WRITE SQL QUERIES
    # TODO: create a post
    post_data = @view.create_post
    Post.create(post_data)
  end

  def update
    # DO NOT WRITE SQL QUERIES
    # TODO: update a post
    id = @view.ask_for_id
    updated_data = @view.ask_updated_data
    post = Post.find(id)
    post.update_attributes(updated_data)
  end

  def destroy
    # DO NOT WRITE SQL QUERIES
    # TODO: destroy a post
    id = @view.ask_for_id
    post = Post.find(id)
    post.delete
  end

  def upvote
    # DO NOT WRITE SQL QUERIES
    # TODO: increment the `votes` column for a post
    id = @view.ask_for_id
    post = Post.find(id)
    if post.votes == nil
      post.votes = 0
    end
    post.votes = post.votes + 1
    post.save
  end
end