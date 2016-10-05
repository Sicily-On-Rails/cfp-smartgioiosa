json.extract! proposal, :id, :title, :description, :created_at, :updated_at
json.url proposal_url(proposal, format: :json)