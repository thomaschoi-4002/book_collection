require "rails_helper"

RSpec.describe "Books", type: :request do
  it "creates a book with a title (sunny day)" do
    post books_path, params: { book: { title: "The Hobbit", author: "J.R.R. Tolkien", price: 9.99, published_date: "1937-09-21" } }

    expect(Book.count).to eq(1)
    expect(flash[:notice]).to eq("Book created.")
  end

  it "does not create a book without a title (rainy day)" do
    post books_path, params: { book: { title: "" } }

    expect(Book.count).to eq(0)
    expect(flash[:alert]).to eq("Title can't be blank.")
  end

  it "creates a book with an author (sunny day)" do
    post books_path, params: { book: { title: "The Hobbit", author: "J.R.R. Tolkien", price: 9.99, published_date: "1937-09-21" } }

    expect(Book.count).to eq(1)
    expect(flash[:notice]).to eq("Book created.")
  end

  it "creates a book with a price (sunny day)" do
    post books_path, params: { book: { title: "The Hobbit", author: "J.R.R. Tolkien", price: 9.99, published_date: "1937-09-21" } }

    expect(Book.count).to eq(1)
    expect(flash[:notice]).to eq("Book created.")
  end

  it "creates a book with a published date (sunny day)" do
    post books_path, params: { book: { title: "The Hobbit", author: "J.R.R. Tolkien", price: 9.99, published_date: "1937-09-21" } }

    expect(Book.count).to eq(1)
    expect(flash[:notice]).to eq("Book created.")
  end
end
