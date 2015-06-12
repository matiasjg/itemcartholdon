json.array!(@itemholdons) do |itemholdon|
  json.extract! itemholdon, :id, :shopifyId, :minStock, :active, :untilDate
  json.url itemholdon_url(itemholdon, format: :json)
end
