json.array!(@computadors) do |computador|
  json.extract! computador, :id, :cpu, :, :memoria, :disco, :disco_mag, :
  json.url computador_url(computador, format: :json)
end
