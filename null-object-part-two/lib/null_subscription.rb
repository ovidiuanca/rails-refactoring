class NullSubscription
  NO_PLAN = 'No Plan'

  def has_mentoring?
    false
  end

  def charge(credit_card)
  end

  def price
    0
  end

  def plan_name
    NO_PLAN
  end
end
