feature App do
  scenario 'Says hello' do
    visit '/'
    expect(page).to have_content 'Hello'
  end
end
