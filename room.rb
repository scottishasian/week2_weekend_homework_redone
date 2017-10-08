class Room

  attr_accessor :name, :cost, :capacity, :guests

  def initialize(room_database = {})
    details = room_info.merge(room_database)

    @name = details.fetch(:name)
    @cost = details.fetch(:cost)
    @capacity = details.fetch(:capacity)
    @guests = []

  end

  def room_info
    {name: "none",
    cost: 0,
    capacity: 0}
  end

  def guest_count
    return @guests.count
  end

  def guest_check_in(guest_details)
    @guests << guest_details
  end

  def guest_status
    return @guests
  end

  # def add_room_details(name, cost, capacity)
  #   @name[:name]
  # end

end
