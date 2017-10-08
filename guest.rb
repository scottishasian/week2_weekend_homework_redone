class Guests

  attr_accessor :name, :money, :favourite

  def initialize(database = {})
    details = guest_info.merge(database)
    #.merge merges hashes together into one lot.
    # allows class info to be called externally.

    @name = details.fetch(:name)
    @money = details.fetch(:money)
    @favourite = details.fetch(:favourite)

    #.fetch returns a value from the hash for a
    # given key.
  end

  def guest_info
    {name: "none",
    money: 0,
    favourite: "none"}
  end
end

# person = Guests.new(:name => "none", :money => 0)
#

#trying out initialize hashes based on info on
#stack overflow.
