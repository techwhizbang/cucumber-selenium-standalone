Before('@async_off') do
  page.driver.options[:resynchronize] = false
end