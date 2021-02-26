require 'rails_helper'

RSpec.describe User, type: :model do
  describe '#import' do
    it 'should return the right name' do
      user = User.new
      # Authoriser le user à utiliser la callApi mais force le retour avec une valeur spécifique
      allow(user).to receive(:callApi).and_return ('[{"name": "John doe"},{},{}]')
      # On check que le callAPI est bien appelé avec la bonne URL
      expect(user).to receive(:callApi).with('https://jsonplaceholder.typicode.com/users')
      expect(user.import).to eq ('John doe')
    end
  end

end
