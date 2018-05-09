# 練習1：請印出從 1 到 100 之間所有的單數。

p [*1..100].select{ |x| x.odd? }

# 練習2：請印出從 1 到 100 之間所有的單數的總和。

p [*1..100].select{ |x| x.odd? }.reduce{ | total ,x | total+=x }


# 練習：改良版土砲 times 方法
class Integer 
	def my_times
		0.upto(self-1).each do |x|
			yield x
		end
	end
end	

5.my_times { |i| puts i }      


# 印出數字 0 ~ 4

# 練習：土砲 select 方法

class Array
	def my_select
		temp = []
		self.each do |a| 
			temp << a if yield(a)
		end
		temp
	end
end
p [1, 2, 3, 4, 5].my_select { |i| i.odd? }

# 只印出單數 1, 3, 5