class App
  def home
    @home ||= Home.new
  end

  def results
    @results ||= Results.new
  end
end
