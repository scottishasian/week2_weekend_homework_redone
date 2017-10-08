class Guests

  attr_accessor :name, :money

  def initialize(database = {})
    details = guest_info.merge(database)
    #.merge merges hashes together into one lot.

    @name = details.fetch(:name)
    @money = details.fetch(:money)

    #.fetch returns a value from the hash for a
    # given key.
  end

  def guest_info
    {name: "none",
    money: 0}
  end
end

# person = Guests.new(:name => "none", :money => 0)
#

#trying out initialize hashes based on info on
#stack overflow.
