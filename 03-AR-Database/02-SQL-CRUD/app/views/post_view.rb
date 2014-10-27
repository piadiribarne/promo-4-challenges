class PostView
  # TODO: implement methods called by the PostsController
  def display_post(post)
    puts "Post: #{post.title} - #{post.url} - created at: #{post.date} - votes: #{post.votes}"
  end

  def create_post
    puts "Title?"
    title = gets.chomp
    puts "url?"
    url = gets.chomp
    return {title: title, url: url}
  end

end