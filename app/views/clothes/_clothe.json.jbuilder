# frozen_string_literal: true

json.extract! clothe, :id, :created_at, :updated_at
json.url clothe_url(clothe, format: :json)
