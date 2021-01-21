require './app/credit_analysis'
require './app/application'
require './app/analyst'
require './app/automatic_decision_analyst'

first_application = Application.new("João")
second_application = Application.new("Luana")
third_application = Application.new("Lucas")
applications = [first_application, second_application, third_application]

katniss_everdeen = Analyst.new("Katniss Everdeen")
aemon_targaryen = Analyst.new("Aemon Targaryen")
doctor_strange = AutomaticDecisionAnalyst.new("Doctor Strange")
analysts = [katniss_everdeen, aemon_targaryen, doctor_strange]

creditas = CreditAnalysis.new(analysts, applications)
creditas.analyse_all_applications
