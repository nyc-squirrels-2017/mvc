class Book
  def initialize(args={})
    @id = args.fetch(:id, "0")
    @title = args.fetch(:title, "none")
    @author = args.fetch(:author, "none")
  end
end