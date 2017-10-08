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

  def room_status
    return @guests
  end

  def find_guest_by_name(guest_name)
    @guests.find{|name|
      if name.name == guest_name.name
        return name.name
      else
        return "Not found"
      end}
  end

  def guest_check_out(guest_name)
    result = find_guest_by_name(guest_name)
    if guest_name.name == result
      @guests.delete(guest_name)
    end
  end

  # def add_room_details(name, cost, capacity)
  #   @name[:name]
  # end

end
