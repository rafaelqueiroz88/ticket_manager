json.extract! person_datum, :id, :username, :name, :lastname, :birthdate, :rg, :cpf, :created_at, :updated_at
json.url person_datum_url(person_datum, format: :json)
