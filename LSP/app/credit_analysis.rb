class CreditAnalysis
  attr_accessor :analysts

  def initialize(analysts, applications)
    @analysts = analysts
    @applications = applications
  end

  def analyse_all_applications
    @analysts.each do |analyst|
      @applications.each do |application|
        if analyst.class == AutomaticDecisionAnalyst
          reject = [true, false].sample
          analyst.analyse(application, reject)
        else
          analyst.analyse(application)
        end
      end
    end
  end
end
