require 'rails_helper'

RSpec.describe 'Merchant Index Page' do
  it 'returns a list of all merchants' do
    visit '/merchants'

    expect(page).to have_content('Schroeder-Jerde')
    save_and_open_page
    expect(page).to have_link('Schroeder-Jerde')
    click_link('Schroeder-Jerde')
    expect(current_path).to eq("/merchants/1")
  end
end
