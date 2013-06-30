json.array!(@resources) do |resource|
  json.extract! resource, :resource_id, :resource_type, :tags, :owner, :beneficiary, :sharing_policy, :content
  json.url resource_url(resource, format: :json)
end
