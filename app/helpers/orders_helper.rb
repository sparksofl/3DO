module OrdersHelper
	def av_materials
		materials = Material.all
		array = []
		materials.each do |m|
			array.push([m.m_type, m.company_id])
		end
	end
end