def a_lambda
  a = lambda { return 'Salut' }
  a.call
  return 'Au revoir'
end

def a_proc
  a = Proc.new { return 'Salut' }
  a.call
  return 'Au revoir'
end

puts a_lambda
puts a_proc