require "rails_helper"

RSpec.describe Book, type: :model do
  it "is valid with a title" do
    book = Book.new(title: "The Hobbit", author: "J.R.R. Tolkien", price: 9.99, published_date: Date.new(1937, 9, 21))
    expect(book).to be_valid
  end

  it "is not valid without a title" do
    book = Book.new(title: nil)
    expect(book).to_not be_valid
  end

  it "is not valid without an author" do
    book = Book.new(title: "The Hobbit", author: nil, price: 9.99, published_date: Date.new(1937, 9, 21))
    expect(book).to_not be_valid
  end

  it "is not valid without a price" do
    book = Book.new(title: "The Hobbit", author: "J.R.R. Tolkien", price: nil, published_date: Date.new(1937, 9, 21))
    expect(book).to_not be_valid
  end

  it "is not valid without a published date" do
    book = Book.new(title: "The Hobbit", author: "J.R.R. Tolkien", price: 9.99, published_date: nil)
    expect(book).to_not be_valid
  end
end
