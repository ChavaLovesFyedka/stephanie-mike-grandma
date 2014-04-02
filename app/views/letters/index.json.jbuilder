json.array!(@letters) do |letter|
  json.extract! letter, :id, :var1, :var2, :var3, :var4, :var5
  json.url letter_url(letter, format: :json)
end
