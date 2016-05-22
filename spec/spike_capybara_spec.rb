require 'spec_helper.rb'

describe 'The website' do
  before(:all) do
    visit ''
  end

  it 'should show the correct page title' do
    expect(page).to have_title "pendragonchainmail"
    expect(find('#comp-io0p51x4')).to have_text "Pendragon Chainmail"
  end

  describe 'Menu' do
    dropDownMenu = '#DrpDwnMn0'

    it 'should exist' do
      expect(page).to have_selector(dropDownMenu)
    end

    it 'should have a shop link' do
      expect(find(dropDownMenu)).to have_text "Shop"
    end
  end
end