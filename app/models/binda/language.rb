# require "countries"

class Binda::Language < ::Binda::ApplicationRecord

	validates :lang, presence: true, inclusion: { in: ISO3166::Country.codes }

end