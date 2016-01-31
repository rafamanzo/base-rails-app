SimpleCov.start 'rails' do
  add_group "Jobs", "app/jobs"
  add_group "Channels", "app/channels"
end

# Uncomment this to fail tests if the coverage has not been met
# Remember that the tag :nocov: exists, but do not abuse of it :)
# SimpleCov.minimum_coverage 100
