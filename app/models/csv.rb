class Csv < ActiveRecord::Base
  attr_accessible :name, :title

  def self.to_csv list
  	CSV.generate do |csv|
      csv << column_names
      list.each do |item|
        csv << item.attributes.values_at(*column_names)
      end
    end
  end
end
