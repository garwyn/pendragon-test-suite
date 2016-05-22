require 'spec_helper.rb'

describe 'The website' do

  pageHeader = '#comp-io0p51x4'
  dropDownMenu = '#DrpDwnMn0'
  etsyShopUrl = 'https://www.etsy.com/shop/PendragonChainmail'

  before(:all) do
    visit ''
  end

  it 'should show the correct page title' do
    expect(page).to have_title "pendragonchainmail"
    expect(find(pageHeader)).to have_text "Pendragon Chainmail"
  end

  describe 'Menu' do
    it 'should exist' do
      expect(page).to have_selector(dropDownMenu)
    end

    it 'should have the correct links' do
      expect(find(dropDownMenu)).to have_text "Home"
      expect(find(dropDownMenu)).to have_text "Portfolio"
      expect(find(dropDownMenu)).to have_text "Contact Us"
      expect(find(dropDownMenu)).to have_link("Shop", :href => etsyShopUrl)
    end
  end
end