class PostView
  # TODO: implement some methods here when controller needs to `puts` or `gets`
  def display_post(post)
    puts "Post title: #{post.name} - Url : #{post.url} - created at: #{post.created_at} - votes: #{post.votes}"
  end

  def create_post
    puts "Title?"
    name = gets.chomp
    puts "url?"
    url = gets.chomp
    return {name: name, url: url}
  end


  def view_all_posts(posts)
    posts.each do |post|
      display_post(post)
    end
  end

  def ask_for_id
    puts "ID?"
    return id = gets.chomp.to_i
  end

  def ask_updated_data
    puts "Updated Title?"
    name = gets.chomp
    puts "Udated url?"
    url = gets.chomp
    return {name: name, url: url}
  end

end

