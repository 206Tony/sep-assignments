require 'Rspec'

class Line 
  attr_accessor :members

  def initialize
    self.members = []
  end

  def join(person)
    members.push(person)
  end

  def leave(person)
    members.delete(person)
  end

  def front
    members[0]
  end

  def middle
    members[members.length/2]
  end

  def back
    members[members.length - 1]
  end

  def search(person)
    members.each do |member|
      if person === member
        return member
      end
    end
  end

  private

  def index(person)
    num = 0
    members.each do |member|
      if person === member
        return number
      else
        num += 1
      end
    end
  end
end