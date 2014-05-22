package magnetboard

class Machine {
	
	static hasMany = [maintenanceOnMachines: MaintenanceOnMachines]
	
	 String name
      	 
  String toString(){
	  return name
	 }
  
}
