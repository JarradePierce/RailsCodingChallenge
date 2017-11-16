
class Cuboid

  attr_accessor :height, :width, :length, :x, :y, :z

  #BEGIN public methods that should be your starting point
  def initialize(height,width,length, x, y, z)
    @height = height
    @width  = width
    @length = length
    @x      = x
    @y      = y
    @z      = z
  end

  #this will move the object to new positions
  def move_to!(x, y, z)
    self.x = x
    self.y = y
    self.z = z
    return true
  end
  
  #find the vertices for each cuboid
  def vertices

    total_vertices = []
    # I was having trouble finding the vertices's for the cuboid I think all the data I need is
    # x, y, z, But I don't quite understand the formula needed to solve this I wish I did I was 
    # having fun solving this problem if you guys could maybe email me the solution or formula I would appreciate it
    # v1
    # v2
    # v3
    # v4
    # v5
    # v6
    # v7
    # v8
  end

  #confirm intersection
  def check_intersects?(intersection_points)
    if intersection_points.any?
      return true
    else
      return false
    end
  end
  
  # check if x position intersects
  def x_pos_intersects?(other)
    cuboid_x_axis_points = []
    other_cuboid_x_axis_points = []
    intersection_points = []

    # find max width of subjects x axis point
    self.x.upto(self.x + self.width){ |x| cuboid_x_axis_points << x }
    
    # find max width of other cuboids x axis
    other.x.upto(other.x + other.width){ |x| other_cuboid_x_axis_points << x }

    # add intersection points to intersection_points array
    cuboid_x_axis_points.each do |i|
      other_cuboid_x_axis_points.each do |k|
        if i == k
          intersection_points << k
        end
      end
    end
    check_intersects?(intersection_points)
  end

  # check if y position intersects
  def y_pos_intersects?(other)
    cuboid_y_axis_points = []
    other_cuboid_y_axis_points = []
    intersection_points = []

    # find max height of cuboid y axis
    self.y.upto(self.y + self.length){ |y| cuboid_y_axis_points << y }

    # find max height of other y axis
    other.y.upto(other.y + other.length){ |y| other_cuboid_y_axis_points << y }

    # add intersection points to intersection_points array
    cuboid_y_axis_points.each do |i|
      other_cuboid_y_axis_points.each do |k|
        if i == k
          intersection_points << k
        end
      end
    end
    check_intersects?(intersection_points)
  end

  # check if z position intersects
  def z_pos_intersects?(other)
    cuboid_z_axis_points = []
    other_cuboid_z_axis_points = []
    intersection_points = []

    # find max height of cuboid z axis
    self.z.upto(self.z + self.height){ |z| cuboid_z_axis_points << z }

    # find max height of other cuboid z axis
    other.z.upto(other.z + other.height){ |z| other_cuboid_z_axis_points << z }

    # add intersection points to intersection_points array
    cuboid_z_axis_points.each do |i|
      other_cuboid_z_axis_points.each do |k|
        if i == k
          intersection_points << k
        end
      end
    end
    check_intersects?(intersection_points)
  end

  # check all intersection points
  def intersects?(other)
    if x_pos_intersects?(other) == true && z_pos_intersects?(other) == true && y_pos_intersects?(other) == true
      return true
    else
      return false
    end
  end

  #END public methods that should be your starting point  
end




