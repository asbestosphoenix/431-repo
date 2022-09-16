# location: spec/unit/unit_spec.rb
require 'rails_helper'
require 'Date'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'Harry Potter'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('Harry Potter')
  end
end

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Author', with: 'JK Rowling'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('JK Rowling')
  end
end

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Price', with: 28.99
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content(28.99)
  end
end

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Published_Date', with: Date.new(2001,02,25)
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('2012-02-25')
  end
end
