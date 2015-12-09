require 'rails_helper'

feature "Cats" do
	scenario "show should list the toys that cat owns" do
		cat = Cat.create!(name: "Fluffy")
		toy = create_toy(cat)
		visit cat_path(cat)
		#cats_path index page, new_cat_path new page, cat_path(cat) show page, update also specify cat
		expect(page).to have_content(toy.name)
	end
end


