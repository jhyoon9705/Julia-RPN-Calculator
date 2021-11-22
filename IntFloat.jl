global Stack = []

struct Integer
  value::String
end

struct Float
  value::String
end

function Add()
  m = pop!(Stack)
  n = pop!(Stack)
  newType, res = Addition(m, n)
  push!(Stack, newType(res))
  println(res)
end

function Sub()
  m = pop!(Stack)
  n = pop!(Stack)
  newType, res = Subtraction(m, n)
  push!(Stack, newType(res))
  println(res)
end

function Mult()
  m = pop!(Stack)
  n = pop!(Stack)
  newType, res = Multiplication(m, n)
  push!(Stack, newType(res))
  println(res)
end

function Div()
  m = pop!(Stack)
  n = pop!(Stack)
  newType, res = Division(m, n)
  push!(Stack, newType(res))
  println(res)
end

function Addition(m::Integer, n::Integer)
  return Integer, string(parse(Int, m.value) + parse(Int, n.value))
end

function Addition(m::Integer, n::Float)
  return Float, string(parse(Float64, m.value) + parse(Float64, n.value))
end

function Addition(m::Float, n::Integer)
  return Float, string(parse(Float64, m.value) + parse(Float64, n.value))
end

function Addition(m::Float, n::Float)
  return Float, string(parse(Float64, m.value) + parse(Float64, n.value))
end

function Subtraction(m::Integer, n::Integer)
  return Integer, string(-parse(Int, m.value) + parse(Int, n.value))
end

function Subtraction(m::Integer, n::Float)
  return Float, string(-parse(Float64, m.value) + parse(Float64, n.value))
end

function Subtraction(m::Float, n::Integer)
  return Float, string(-parse(Float64, m.value) + parse(Float64, n.value))
end

function Subtraction(m::Float, n::Float)
  return Float, string(-parse(Float64, m.value) + parse(Float64, n.value))
end

function Multiplication(m::Integer, n::Integer)
  return Integer, string(parse(Int, m.value) * parse(Int, n.value))
end

function Multiplication(m::Integer, n::Float)
  return Float, string(parse(Float64, m.value) * parse(Float64, n.value))
end

function Multiplication(m::Float, n::Integer)
  return Float, string(parse(Float64, m.value) * parse(Float64, n.value))
end

function Multiplication(m::Float, n::Float)
  return Float, string(parse(Float64, m.value) * parse(Float64, n.value))
end

function Division(m::Integer, n::Integer)
  return Float, string(parse(Int, m.value) \ parse(Int, n.value))
end

function Division(m::Integer, n::Float)
  return Float, string(parse(Float64, m.value) \ parse(Float64, n.value))
end

function Division(m::Float, n::Integer)
  return Float, string(parse(Float64, m.value) \ parse(Float64, n.value))
end

function Division(m::Float, n::Float)
  return Float, string(parse(Float64, m.value) \ parse(Float64, n.value))
end 

function enter(num)
  push!(Stack, num)
end

function clear()
  Stack = []
end
