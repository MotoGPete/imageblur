class Image
	attr_accessor :rows
	def initialize(rows)
		@rows = rows
	end

	

	def output_image
		@rows.each do |row|
			puts row.each { |p| p }.join(" ")
		end
	end

def blur_image
	ymax = @rows.length - 1
	xmax = @rows[0].length - 1
	
	image_out = Marshal.load( Marshal.dump(self) )

	@rows.each_with_index do |row,y|
		row.each_with_index do |p,x| 
			if p == 1
			if x != 0
			image_out.blur_to_1(x-1,y)
			end
			if x != xmax		
			image_out.blur_to_1(x+1,y)
			end
			if y != 0		
			image_out.blur_to_1(x,y-1)
			end
			if y != ymax
			image_out.blur_to_1(x,y+1)
			end

			end
		end
	end
	return image_out
end 

def blur_to_1(x,y)
	 row = @rows[y]
		row[x] = 1
end

end

image = Image.new([
	[0,0,0,0],
	[0,0,1,0],
	[0,1,0,0],
	[0,0,0,0],
	[1,0,0,0],
	[0,0,0,0]
])


image.output_image
puts " "
image.blur_image.output_image

