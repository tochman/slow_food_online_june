addresses = {
    'Holtermansgatan 10, 411 29, Göteborg' => {
        'data' => {
            'address_components' => [
                {
                    'long_name' => '10',
                    'short_name' => '10',
                    'types' => [
                        'street_number'
                    ]
                },
                {
                    'long_name' => 'Holtermansgatan',
                    'short_name' => 'Holtermansgatan',
                    'types' => [
                        'route'
                    ]
                },
                {
                    'long_name' => 'Landala',
                    'short_name' => 'Landala',
                    'types' => [
                        'political',
                        'sublocality',
                        'sublocality_level_1'
                    ]
                },
                {
                    'long_name' => 'Gothenburg',
                    'short_name' => 'Gothenburg',
                    'types' => [
                        'locality',
                        'political'
                    ]
                },
                {
                    'long_name' => 'Göteborg',
                    'short_name' => 'Göteborg',
                    'types' => [
                        'postal_town'
                    ]
                },
                {
                    'long_name' => 'Västra Götalands län',
                    'short_name' => 'Västra Götalands län',
                    'types' => [
                        'administrative_area_level_1',
                        'political'
                    ]
                },
                {
                    'long_name' => 'Sweden',
                    'short_name' => 'SE',
                    'types' => [
                        'country',
                        'political'
                    ]
                },
                {
                    'long_name' => '411 29',
                    'short_name' => '411 29',
                    'types' => [
                        'postal_code'
                    ]
                }
            ],
            'formatted_address' => 'Holtermansgatan 10, 411 29 Göteborg, Sweden',
            'geometry' => {
                'bounds' => {
                    'northeast' => {
                        'lat' => 57.69145309999999,
                        'lng' => 11.9731215
                    },
                    'southwest' => {
                        'lat' => 57.6914445,
                        'lng' => 11.9731116
                    }
                },
                'location' => {
                    'lat' => 57.6914445,
                    'lng' => 11.9731215
                },
                'location_type' => 'RANGE_INTERPOLATED',
                'viewport' => {
                    'northeast' => {
                        'lat' => 57.6927977802915,
                        'lng' => 11.9744655302915
                    },
                    'southwest' => {
                        'lat' => 57.69009981970849,
                        'lng' => 11.9717675697085
                    }
                }
            },
            'partial_match' => true,
            'place_id' => 'Ei1Ib2x0ZXJtYW5zZ2F0YW4gMTAsIDQxMSAyOSBHw7Z0ZWJvcmcsIFN2ZXJpZ2U',
            'types' => [
                'street_address'
            ]
        },
        'cache_hit' => nil
    }
}

Geocoder.configure(lookup: :test)
addresses.each { |lookup, results| Geocoder::Lookup::Test.add_stub(lookup, [results]) }