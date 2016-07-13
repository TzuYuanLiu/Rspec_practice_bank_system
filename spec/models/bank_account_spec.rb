require 'rails_helper'

RSpec.describe BankAccount, type: :model do
	it "可以存錢" do
		account = BankAccount.create(name: "foo", amount: 100)
		account.存錢(100)
		expect(account.餘額).to be 200
	end

	it "不可以存負的錢" do
		account = BankAccount.create(name: "foo", amount: 100)
		account.存錢(-10)
		expect(account.餘額).to be 100
	end

	it "可以領錢" do
		account = BankAccount.create(name: "foo", amount: 100)
		account.領錢(10)
		expect(account.餘額).to be 90
	end

	it "不可以領負的錢" do
		account = BankAccount.create(name: "foo", amount: 100)
		account.領錢(-10)
		expect(account.餘額).to be 100
	end

end
