class AttachStylesToBeers < ActiveRecord::Migration[5.2]
  def change 
    say "Starting migration" 
    Beer.all.each do |b|
      style = Style.find_by name: b['style']
      b.style = style 
      b.save
    end

    say "Beers have now styles"

    remove_column :beers, :style

    say "Beers column style removed"
  end
end
