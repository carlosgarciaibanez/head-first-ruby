class CelestialBody
    attr_accessor :type, :name
end

default_body = CelestialBody.new
default_body.type = 'planet'

bodies = Hash.new do |hash, key|
    body = CelestialBody.new
    body.type = 'planet'
    hash[key] = body
end

bodies['Mars'].name = 'Mars'
p bodies['Mars']

bodies['Europe'].name = 'Europe'
bodies['Europe'].type = 'moon'
p bodies['Europe']

bodies['Venus'].name = 'Venus'
p bodies['Venus']

p bodies
