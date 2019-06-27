require 'rails_helper'

describe 'Article' do
  let(:user) { users(:one) }

  describe "GET index" do
    let(:path) { articles_path }

    it 'shows all articles' do
      visit path
      Article.all.each do |article|
        expect(page).to have_content article.title
        expect(page).to have_content article.description
      end
    end
  end
end
