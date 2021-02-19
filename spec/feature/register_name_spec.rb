feature 'registering name' do
  scenario 'see name after registering' do
    visit '/'
    fill_in :name, with: 'Frank'
    click_button 'Play'
    expect(page).to have_content 'Frank'
  end
end