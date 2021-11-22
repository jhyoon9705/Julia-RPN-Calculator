struct Rational
  value::String
end

function StrToRat(num::Rational)
  numerator, denominator = split(num.value, "/")
  return parse(Int, numerator) // parse(Int, denominator)
end

function ChangeRatForm(num::String)
  numerator, denominator = split(num, "//")
  numer = parse(Int, numerator)
  denomin = parse(Int, denominator)
  if numer % denomin == 0
    return string(numer / denomin)
  end
  return join(split(num, "//"), "/")
end

function Addition(m::Rational, n::Rational)
  return Rational, ChangeRatForm(string(StrToRat(m) + StrToRat(n)))
end

function Addition(m::Rational, n::Integer)
  return Rational, ChangeRatForm(string(StrToRat(m) + parse(Int, n.value)))
end

function Addition(m::Rational, n::Float)
  return Rational, ChangeRatForm(string(StrToRat(m) + rationalize(parse(Float64, n.value))))
end

function Addition(m::Integer, n::Rational)
  return Rational, ChangeRatForm(string(parse(Int, m.value) + StrToRat(n)))
end

function Addition(m::Float, n::Rational)
  return Rational, ChangeRatForm(string(rationalize(parse(Float64, m.value)) + StrToRat(n)))
end


function Subtraction(m::Rational, n::Rational)
  return Rational, ChangeRatForm(string(-StrToRat(m) + StrToRat(n)))
end

function Subtraction(m::Rational, n::Integer)
  return Rational, ChangeRatForm(string(-StrToRat(m) + parse(Int, n.value)))
end

function Subtraction(m::Rational, n::Float)
  return Rational, ChangeRatForm(string(-StrToRat(m) + rationalize(parse(Float64, n.value))))
end

function Subtraction(m::Integer, n::Rational)
  return Rational, ChangeRatForm(string(-parse(Int, m.value) + StrToRat(n)))
end

function Subtraction(m::Float, n::Rational)
  return Rational, ChangeRatForm(string(rationalize(-parse(Float64, m.value)) + StrToRat(n)))
end


function Multiplication(m::Rational, n::Rational)
  return Rational, ChangeRatForm(string(StrToRat(m) * StrToRat(n)))
end

function Multiplication(m::Rational, n::Integer)
  return Rational, ChangeRatForm(string(StrToRat(m) * parse(Int, n.value)))
end

function Multiplication(m::Rational, n::Float)
  return Rational, ChangeRatForm(string(StrToRat(m) * rationalize(parse(Float64, n.value))))
end

function Multiplication(m::Integer, n::Rational)
  return Rational, ChangeRatForm(string(parse(Int, m.value) * StrToRat(n)))
end

function Multiplication(m::Float, n::Rational)
  return Rational, ChangeRatForm(string(rationalize(parse(Float64, m.value)) * StrToRat(n)))
end


function Division(m::Rational, n::Rational)
  return Rational, ChangeRatForm(string(StrToRat(m) \ StrToRat(n)))
end

function Division(m::Rational, n::Integer)
  return Rational, ChangeRatForm(string(StrToRat(m) \ parse(Int, n.value)))
end

function Division(m::Rational, n::Float)
  return Rational, ChangeRatForm(string(StrToRat(m) \ rationalize(parse(Float64, n.value))))
end

function Division(m::Integer, n::Rational)
  return Rational, ChangeRatForm(string(parse(Int, m.value) \ StrToRat(n)))
end

function Division(m::Float, n::Rational)
  return Rational, ChangeRatForm(string(rationalize(parse(Float64, m.value)) \ StrToRat(n)))
end

