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
String material
String projectmanager
String salescontact
String noofboardsordered
String noofpanelsmade
String notes
Process process
Date pepDate
String pepMean
String pepOperator
String dcCell
String dcAt
String dcAb
String dcSpec
String dcOperator
String dcMinCuDeposit
String dcMaxCuDeposit
String dcAsf
String dcTct
Date dcDate
String dcRack
Date pluritecDate
String pluritecOperator
String pluritecXcomp
String pluritecYcomp

static constraints = {process(nullable:true)
					pepMean(nullable:true)
					pepOperator(nullable:true)
					dcCell(nullable:true)
					dcAt(nullable:true)
					dcAb(nullable:true)
					dcSpec(nullable:true)
					dcOperator(nullable:true)
					dcMinCuDeposit(nullable:true)
					dcMaxCuDeposit(nullable:true)
					dcDate(nullable:true)
					pepDate(nullable:true)
					dcAsf(nullable:true)
					dcTct(nullable:true)
					dcRack(nullable:true)
					pluritecDate(nullable:true)
					pluritecOperator(nullable:true)
					pluritecXcomp(nullable:true)
					pluritecYcomp(nullable:true)
					material(nullable:true)
}

double getScrubbedTotalValue() {
	if (!totalvalue) return 0.0
	Double.parseDouble(totalvalue.replaceAll("[\\\$-,-a-zA-Z]",""))
}
String toString(){
	return workorder
   }

}