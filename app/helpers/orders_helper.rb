module OrdersHelper
	# def av_materials
	# 	materials = Material.all
	# 	array = []
	# 	materials.each do |m|
	# 		array.push([m.m_type, m.company_id])
	# 	end
	# 	return array
	# end

	# def prices
	# 	materials = Material.all
	# 	pr = []
	# 	materials.each do |m|
	# 		pr.push([m.price])
	# 	end
	# 	return pr
	# end

	def materials
		materials = Material.all
	end

	def country
		#f_ip = Array.new(4){rand(256)}.join('.')
		Geocoder.search(current_user.ip).first.country
	end

	def nearest
		#@locations = Location.near(params[:search], 50, :order => :distance)
	end
end