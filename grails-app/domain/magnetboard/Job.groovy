package magnetboard

class Job {
	
	static transients = ['scrubbedTotalValue']
	
	static belongsTo = Process
	
String priority
String thickness
String jobname
String companyname
String shoporder
String duedate
String workorder
String totalvalue
String valueperboard
String nooflayers
String noboardsperpanel
String size
String cam
String projectmanager
String salescontact
String noofboardsordered
String noofpanelsmade
String notes
Process process
Date PEP_date
String PEP_mean
String PEP_operator
String DC_cell
String DC_A_T
String DC_A_B
String DC_spec
String DC_operator
String DC_minCuDeposit
String DC_maxCuDeposit
Date DC_date


static constraints = {process(nullable:true)
					PEP_mean(nullable:true)
					PEP_operator(nullable:true)
					DC_cell(nullable:true)
					DC_A_T(nullable:true)
					DC_A_B(nullable:true)
					DC_spec(nullable:true)
					DC_operator(nullable:true)
					DC_minCuDeposit(nullable:true)
					DC_maxCuDeposit(nullable:true)
					DC_date(nullable:true)
					PEP_date(nullable:true)
}

double getScrubbedTotalValue() {
	if (!totalvalue) return 0.0
	Double.parseDouble(totalvalue.replaceAll("[\\\$-,-a-zA-Z]",""))
}
}