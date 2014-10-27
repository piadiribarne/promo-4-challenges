require "sqlite3"
DB = SQLite3::Database.new("db/posts.db")

class Post
  # TODO: implement some reader and/or writers
  attr_reader :id, :date
  attr_accessor:title, :url, :votes

  def initialize( options = {})
    @id = options[:id]
    @title = options[:title]
    @url = options[:url]
    @date = options[:date]
    @votes = options[:votes]

    if options[:date] == nil
      @date = Time.now
    end

    if options[:vote] == nil
      @votes = 0
    end
  end

  def upvote
    @votes = @votes +1
  end

  def save
    if @id == nil
      DB.execute("INSERT INTO posts (title,url,date,votes)
      VALUES ('#{@title}' , '#{@url}', '#{@date.to_i}', '#{@votes}') ;")
    else
      query = "UPDATE posts SET title = '#{@title}', url = '#{@url}', date = '#{@date.to_i}', votes = '#{@votes}' WHERE id = #{@id} ;"
      DB.execute(query)
    end
    @id = DB.last_insert_row_id
  end

  def self.all
    rows = DB.execute("SELECT * FROM posts ;")
    posts = []
    rows.each do |columns|
      posts << Post.new({ id: columns[0], title: columns[1], url: columns[2], date: Time.at(columns[3]), votes: columns[4] })
    end
    return posts
  end

  def self.find(id_numb)
    columns = DB.execute("SELECT * FROM posts WHERE id = #{id_numb};").first
    if columns == nil
      post = nil
    else
      post = Post.new({ id: columns[0], title: columns[1], url: columns[2], date: Time.at(columns[3]), votes: columns[4] })
    end
  end

  def destroy
    DB.execute("DELETE FROM posts")
  end

  end