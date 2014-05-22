package magnetboard

class MaintenanceOnMachines {

    static belongsTo = Machine
	
	Date mainDate
	String mainOperator
	Machine machine
	String laborHours
	String costOfParts
	String notes
	
	static constraints = {laborHours(nullable:true)
					costOfParts(nullable:true)
					notes(nullable:true)
	}
}
