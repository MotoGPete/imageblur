class Image
	
	def initialize(rows)
		@rows = rows	
	end

	def output_image
	
		@rows.each do |rows|
  		puts rows.each { |p| p }.join(" ")
		end
	end
end

image1 = Image.new([
[0,0,0,0],
[0,1,0,0],
[0,0,0,1],
[0,0,0,0]
])

image.output_image

image2 = Image.new([
[0,0,0,0],
[0,1,0,0],
[0,0,0,1],
[0,0,0,0]
])

