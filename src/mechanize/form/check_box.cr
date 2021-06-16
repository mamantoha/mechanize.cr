class MechanizeCr::FormContent::CheckBox < MechanizeCr::FormContent::Field
  property :checked

  def initialize(node : Node | Myhtml::Node, value = nil)
    @checked = !!node["checked"]
    super(node, value)
  end

  def check
    #uncheck_peers
    @checked = true
  end

  def uncheck
    @checked = false
  end

  def checked?
    checked
  end

  def click
    checked ? uncheck : check
  end

  def query_value
    [@name, @value || "on"]
  end
end
