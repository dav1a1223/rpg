json.array!(@answers) do |answer|
  json.extract! answer, :id, :name, :pwd
  json.url answer_url(answer, format: :json)
end
