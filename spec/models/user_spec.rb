require 'rails_helper'

describe User do
  describe 'relationships' do
    it { should have_many(:articles) }
  end
end
