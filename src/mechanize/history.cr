require "./page"

class MechanizeCr::History < Array(MechanizeCr::Page)
  property max_size : Int32
  def initialize(max_size = 100)
    @max_size = max_size
    super
  end
end
