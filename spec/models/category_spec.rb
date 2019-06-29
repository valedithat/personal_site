require 'rails_helper'

describe Category do
  describe 'relationships' do
    it { should have_many(:article_categories) }
    it { should have_many(:articles) }
  end
end
