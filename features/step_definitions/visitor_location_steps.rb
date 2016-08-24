Then(/^my location should be established$/) do
  coords = page.evaluate_script('map.getCenter();')
  expect(coords['lat']).to eq 57.7089
  expect(coords['lng']).to eq 11.97460000000001
end
