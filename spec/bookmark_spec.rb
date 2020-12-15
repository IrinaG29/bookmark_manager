require 'bookmark'

describe Bookmark do
  describe '#all' do
    it 'returns all bookmarks' do
      folder = Bookmark.new
      bookmarks = folder.all

      expect(bookmarks).to include("http://www.makersacademy.com")
      expect(bookmarks).to include("http://www.destroyallsoftware.com")
      expect(bookmarks).to include("http://www.google.com")
    end
  end
end
