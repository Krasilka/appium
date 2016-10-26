
def server_url
    "http://0.0.0.0:4723/wd/hub"
end

Before do

  if @driver != nil
    @driver.quit
  end

  $driver.start_driver

  def on(screen_class)
    screen = screen_class.new driver
    screen
  end

end

After { $driver.driver_quit }