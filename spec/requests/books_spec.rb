require "rails_helper"

RSpec.describe "Books", type: :request do
  before do
    sign_in Admin.create!(email: "tester@example.com")
  end

  it "creates a book with a title (sunny day)" do
    post books_path, params: { book: { title: "The Hobbit", author: "J.R.R. Tolkien", price: 9.99, published_date: "1937-09-21" } }

    expect(Book.count).to eq(1)
    expect(flash[:notice]).to eq("Book created.")
    expect(Book.last.title).to eq("The Hobbit")
  end

  it "does not create a book without a title (rainy day)" do
    post books_path, params: { book: { title: "", author: "J.R.R. Tolkien", price: 9.99, published_date: "1937-09-21" } }

    expect(Book.count).to eq(0)
    expect(flash[:alert]).to eq("Title can't be blank.")
  end

  it "creates a book with an author (sunny day)" do
    post books_path, params: { book: { title: "The Hobbit", author: "J.R.R. Tolkien", price: 9.99, published_date: "1937-09-21" } }

    expect(Book.count).to eq(1)
    expect(flash[:notice]).to eq("Book created.")
    expect(Book.last.author).to eq("J.R.R. Tolkien")
  end

  it "creates a book with a price (sunny day)" do
    post books_path, params: { book: { title: "The Hobbit", author: "J.R.R. Tolkien", price: 9.99, published_date: "1937-09-21" } }

    expect(Book.count).to eq(1)
    expect(flash[:notice]).to eq("Book created.")
    expect(Book.last.price).to eq(BigDecimal("9.99"))
  end

  it "creates a book with a published date (sunny day)" do
    post books_path, params: { book: { title: "The Hobbit", author: "J.R.R. Tolkien", price: 9.99, published_date: "1937-09-21" } }

    expect(Book.count).to eq(1)
    expect(flash[:notice]).to eq("Book created.")
    expect(Book.last.published_date).to eq(Date.new(1937, 9, 21))
  end
end
