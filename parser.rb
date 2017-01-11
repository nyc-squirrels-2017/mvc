require_relative "library"
require_relative "book"
require 'pry'
require 'csv'

module Parser
  def self.load(filename)
    collection = []
    CSV.foreach(filename, :header_converters =>  :symbol, :headers => true, :converters => :all) do |item|
      collection << item.to_h
    end
    collection
  end
end



p library = Library.new(parser: Parser)
