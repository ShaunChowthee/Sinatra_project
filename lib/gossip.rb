require "csv"

class Gossip
  def initialize(author, message)
    @author = author
    @message = message
  end

  def save
    CSV.open("./db/gossip.csv", "ab") do |csv|
      csv << [@author, @message]
    end
  end
end
