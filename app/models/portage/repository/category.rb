class Portage::Repository::Category
  attr_reader :name, :path
  
  # Creates a new Category model
  #
  # @params[String] path Category base directory path
  def initialize(path)
    unless File.directory? path
      raise ArgumentError, "#{path} does not look like a valid category for respository."
    end
    
    @path = path
    @name = path.split('/').last
  end
  