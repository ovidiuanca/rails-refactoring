class User
  include ActiveModel::Model
  attr_accessor :created_at, :credit_card
  attr_writer :subscription

  def charge
    subscription.charge(credit_card)
  end

  def has_mentoring?
    subscription.has_mentoring?
  end

  def price
    subscription.price
  end

  def plan_name
    subscription.plan_name
  end

  def subscription
    if free_trial?
      FreeTrialSubscription.new
    else
      @subscription || NullSubscription.new
    end
  end

  private

  def free_trial?
    created_at >= 30.days.ago
  end
end
