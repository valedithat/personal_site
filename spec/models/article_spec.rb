require 'rails_helper'

describe Article do
  describe 'relationships' do
    it { should belong_to(:user) }
    it { should have_many(:article_categories) }
    it { should have_many(:categories) }
  end
end
