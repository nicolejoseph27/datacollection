package magnetboard

import java.util.Date;

class Throughput {
	
	static transients = ['scrubbedTotalValue', 'dateDateFinished', 'timeDateFinished']
	
String jobname	
String companyname
String totalvalue
String workorder	
String process
Date datefinished



	String toString() {
		"$process: $jobname"
	}
	
	double getScrubbedTotalValue() {
		if (!totalvalue) return 0.0
		Double.parseDouble(totalvalue.replaceAll("[\\\$-,-a-zA-Z]",""))
	}
	
	String getDateDateFinished() { datefinished.prettyDate()}
	
	String getTimeDateFinished() { datefinished.prettyTimeOnly()}
}