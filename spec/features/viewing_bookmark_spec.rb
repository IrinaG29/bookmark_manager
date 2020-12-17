require 'pg'

feature 'Viewing bookmarks' do
  scenario 'visiting the index page' do
    visit('/')
    expect(page).to have_content "Bookmark Manager"
  end

  scenario 'A cat can see bookmark' do

    Bookmark.create(title: "Kikis cat", url: 'http://www.makersacademy.com')
    Bookmark.create(title: "Kikis cat", url: 'http://www.destroyallsoftware.com')
    Bookmark.create(title: "Kikis cat", url: 'http://www.google.com')

    visit ('/bookmarks')
    expect(page).to have_link("Kikis cat", href: "http://www.makersacademy.com")
    expect(page).to have_link("Kikis cat", href: "http://www.destroyallsoftware.com")
    expect(page).to have_link("Kikis cat", href: "http://www.google.com")
  end
end
