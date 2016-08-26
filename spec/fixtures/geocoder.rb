addresses = {
    'Holtermansgatan 10, 411 29, Gothenburg' =>
        {
            'latitude' => 57.6914445,
            'longitude' => 11.9731215,
            'address' => 'Holtermansgatan 10, 411 29, Gothenburg',
            'city' => 'Gothenburg',
            'country' => 'Sweden',
            'country_code' => 'SE'
        }
}


Geocoder.configure(lookup: :test)
addresses.each { |lookup, results| Geocoder::Lookup::Test.add_stub(lookup, [results]) }