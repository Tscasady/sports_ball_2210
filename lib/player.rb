class Player

  attr_reader :monthly_cost, :contract_length, :nickname

  def initialize(name, monthly_cost, contract_length)
    @name = name
    @monthly_cost = monthly_cost
    @contract_length = contract_length
    @nickname
  end

  def first_name
    @name.split()[0]
  end

  def last_name
    @name.split()[1]
  end

  def total_cost
    monthly_cost * contract_length
  end

  def set_nickname!(nickname)
    @nickname = nickname
  end

  def short_term?
    @contract_length <= 24
  end

  def long_term?
    !short_term?
  end
end
