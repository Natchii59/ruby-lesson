module A

  def demo
    puts 'Demo'
  end

end

class C

  extend A

end

c = C.new
c.extend(A)
c.demo
