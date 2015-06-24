Given(/^I am at the starting page for filtro$/) do
  visit root_path
end

Given(/^I am a regular user$/) do
   expect(page).to have_content("Usuário: ")
end

Given(/^I click the option "(.+)" for "(.+)"$/) do |text, menu|
  expect(page).to have_content(menu)
  click_button(text)
end

Then(/^I should see "(.+)"$/) do |text|
  expect(page).to have_content(text)
end
