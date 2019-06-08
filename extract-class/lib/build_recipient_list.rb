class BuildRecipientList
  DELIMITERS = /[\n,;]+/
  WHITESPACES = /\s+/

  def initialize(recipients)
    @recipients = recipients
  end

  def execute
    recipients.gsub(WHITESPACES, '').split(DELIMITERS)
  end

  private

  attr_reader :recipients
end
