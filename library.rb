class Library
  def initialize(args={})
    @storage = args.fetch(:storage, "library.csv")
    @parser = args[:parser]
    @books = load_books
  end

  def load_books
    @books = @parser.load(@storage).map{|book| Book.new(book)}
  end
end