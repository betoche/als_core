class DocumentTypeByCountry < ApplicationRecord
  belongs_to :country
  belongs_to :document_type
end
