class CelestialBody
    attr_accessor :type, :name
end

default_body = CelestialBody.new
default_body.type = 'planet'

bodies = Hash.new(default_body)
bodies['Mars'].name = 'Mars'
p bodies['Mars']

bodies['Europe'].name = 'Europe'
bodies['Europe'].type = 'moon'
p bodies['Europe']

bodies['Venus'].name = 'Venus'
p bodies['Venus']
