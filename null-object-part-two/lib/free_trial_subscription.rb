class FreeTrialSubscription
  FREE_TRIAL = 'Free Trial'

  def has_mentoring?
    true
  end

  def charge(credit_card)
  end

  def price
    0
  end

  def plan_name
    FREE_TRIAL
  end
end
