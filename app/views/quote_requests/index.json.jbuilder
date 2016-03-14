json.array!(@quote_requests) do |quote_request|
  json.extract! quote_request, :id, :user_id, :website, :callback, :description, :hours, :cost, :nte
  json.url quote_request_url(quote_request, format: :json)
end
