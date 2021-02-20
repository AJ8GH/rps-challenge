feature 'winning and losing' do
  scenario 'player rock - AI scissors' do
    allow_any_instance_of(Ai).to receive(:move) { :scissors }
    sign_up_and_go
    click_button 'Play'
    click_link 'Rock'
    expect(page).to have_content 'Frank wins!'
    expect(page).not_to have_content 'Sinatra'
  end
end
