def func1()
	p "Hi, i'm 1"
end

def func2()
	p "Hi, im 2"
	func1()
end

func2()