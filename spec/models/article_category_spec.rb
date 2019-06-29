require 'rails_helper'

describe ArticleCategory do
  describe 'relationships' do
    it { should belong_to(:category) }
    it { should belong_to(:article) }
  end
end
