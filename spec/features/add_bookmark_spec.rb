require 'pg'

feature 'add bookmarks' do
  scenario 'add a bookmark to page' do

    # connection = PG.connect(dbname: 'bookmark_manager_test')
    #
    # connection.exec("INSERT INTO bookmarks VALUES(1, 'http://www.makersacademy.com');")
    # connection.exec("INSERT INTO bookmarks VALUES(2, 'http://www.destroyallsoftware.com');")
    # connection.exec("INSERT INTO bookmarks VALUES(3, 'http://www.google.com');")

    # visit ('/bookmarks')
    # expect(page).to have_content "http://www.makersacademy.com"
    # expect(page).to have_content "http://www.destroyallsoftware.com"
    # expect(page).to have_content "http://www.google.com"

    visit('/bookmarks/new')
    fill_in('title', with: "Test")
    fill_in('url', with: 'http://www.testbookmark.com')
    click_button('Submit')
    expect(page).to have_content 'Test'
  end
end
