class Blog    
  def initialize()
    @posts = []
  end

  def create_front_page

  end

  def publish_front_page
  	@posts.each do |post|
  		post.show_post
  	end
	end

  def add_post post
  	@posts << post
  end
end

class Post    
  def initialize(title, date, text)
    @title = title
    @date = date
    @text = text
  end

  def show_post
  	puts "post #{@title}"
  	puts "**************"
  	puts "post #{@text}"
  	puts "--------------"
  end

end

my_blog = Blog.new
my_first_post = Post.new("title1", 1, "text1")
my_second_post = Post.new("title2", 2, "text2")
my_blog.add_post(my_first_post)
my_blog.add_post(my_second_post)
my_blog.publish_front_page