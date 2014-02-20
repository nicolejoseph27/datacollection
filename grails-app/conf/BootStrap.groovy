import magnetboard.Process

import magnetboard.Job

import com.magnetboard.Role
import com.magnetboard.User
import com.magnetboard.UserRole

class BootStrap {

String canisters

def saveOrThrow(def o) {
		if (!o.save()) {
			println "COULD NOT SAVE: ${o}"
			o.errors.allErrors.each { println it }

			throw new RuntimeException('Failed')
		}
}

def loadCanisters(){
		def canisters = ['CAM','shear','chem clean','tackyroll','laminate','print','develop','AOI before etch','etch/strip','Post etch punch','AOI after etch','plasma','bondfilm','layup','laser drill','concept 129','drill','PTH','Primary','pattern','reverse pulse','PPG plating','In-process insp.','Strip Sn/Pb','Gold','Out of DFSM','LPI Coating','Soldermask Print','Legend Coat','Legend Print','HAL','Score','Route','Laser Route','Electrical Test','Routed for test','Repair','Final','Outside services','Heatsinks','Ecobond','Tack Coverlay','Assembly','finished']
		canisters.each{i->
			saveOrThrow(new Process (canister:i))}
		
	}
def springSecurityService

    def init = { servletContext ->
		
		Date.metaClass.prettyTimeOnly = {
			String.format('%1$tl:%1$tM %1$Tp',delegate );
		}
	 
		java.sql.Timestamp.metaClass.prettyTimeOnly = {
			String.format('%1$tl:%1$tM %1$Tp',delegate );
		}
	 
		if (Process.list()) {
			println "Database already loaded"
			return}		
			loadCanisters()
			// add dummy jobs for testing purposes.  Must add the rest of the variables if this section is going to be used.
			//def p1 = Process.get(1)
			//def p2 = Process.get(2)
			//def job1 = new Job(jobname:'3368',companyname:'Compunetics',process:p1)
			//def job2 = new Job(jobname:'XMTR',companyname:'Sechan',process:p2)
			//def job3 = new Job(jobname:'206P307',companyname:'Talla Com',process:null)
			//saveOrThrow(job1)
			//saveOrThrow(job2)
			//saveOrThrow(job3)
			
			def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush: true)
			def userRole = new Role(authority: 'ROLE_USER').save(flush: true)
			String password = springSecurityService.encodePassword('compunet')
			def testUser = new User(username: 'compunet', enabled: true, password: password)
			testUser.save(flush: true)
			UserRole.create testUser, adminRole, true
			assert User.count() == 1
			assert Role.count() == 2
			assert UserRole.count() == 1
	}
    def destroy = {
    }
}