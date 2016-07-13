class BankAccount < ActiveRecord::Base
	def 存錢(n)
		update_attributes(amount: self.amount + n) if n.positive?
	end
	
	def 餘額
		amount
	end	

	def 領錢(n)
		update_attributes(amount: self.amount - n) if n.positive?
	end

end
