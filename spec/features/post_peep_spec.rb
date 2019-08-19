feature 'Posting Peeps' do
  scenario 'User posts a new peep' do
    visit('/')
    click_button('Post a Peep!')
    expect(current_path).to eq '/new_peep'

    fill_in('peep', with: 'Hello Chitter!')
    click_button('Submit')

    expect(current_path).to eq '/'
    expect(page).to have_content 'Hello Chitter!'
  end
end
