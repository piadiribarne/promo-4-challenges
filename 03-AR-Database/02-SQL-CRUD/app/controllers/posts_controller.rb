class PostsController
  def initialize
    @view = PostView.new
  end

  ################################################################
  # BEWARE: you MUST not use the global variable DB in this file #
  ################################################################

  def index
    # TODO: implement listing all posts
    all_posts = Post.all
    all_posts.each do |p|
      @view.display_post(p)
    end
  end

  def create
    # TODO: implement creating a new post
    # new_post = Post.new
    post_arguments = @view.create_post
    new_post = Post.new(post_arguments)
    new_post.save
  end

  def update
    # TODO: implement updating an existing post
  end

  def destroy
    # TODO: implement destroying a post
  end

  def upvote
    # TODO: implement upvoting a post
  end
end