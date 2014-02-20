package magnetboard

import magnetboard.Finishedjobs


import grails.plugins.springsecurity.Secured

@Secured(['ROLE_ADMIN'])
class ProcessController {

	static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

	def index = {
		redirect(action: "list", params: params)
	}

	def list = {
		params.max = Math.min(params.max ? params.int('max') : 75, 100)
		[processInstanceList: Process.list(params), processInstanceTotal: Process.count(),jobInstanceList:Job.list()]
	}
	
	def prioritylist = {
		params.max = Math.min(params.max ? params.int('max') : 50, 100)
		[processInstanceList: Process.list(params), processInstanceTotal: Process.count()]
	}
	def bethview = {
		params.max = Math.min(params.max ? params.int('max') : 75, 100)
		[processInstanceList: Process.list(params), processInstanceTotal: Process.count(),jobInstanceList:Job.list()]
	}

	def create = {
		def processInstance = new Process()
		processInstance.properties = params
		return [processInstance: processInstance]
	}

	def save = {
		def processInstance = new Process(params)
		if (processInstance.save(flush: true)) {
			flash.message = "${message(code: 'default.created.message', args: [message(code: 'process.label', default: 'Process'), processInstance.id])}"
			redirect(action: "priorityshow", id: processInstance.id)
		}
		else {
			render(view: "create", model: [processInstance: processInstance])
		}
	}

	def show = {
		def processInstance = Process.get(params.id)
		if (!processInstance) {
			flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'process.label', default: 'Process'), params.id])}"
			redirect(action: "list")
		}
		else {
			[processInstance: processInstance]
		}
	}
	
	def priorityshow = {
		def processInstance = Process.get(params.id)
		if (!processInstance) {
			flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'process.label', default: 'Process'), params.id])}"
			redirect(action: "list")
		}
		else {
			[processInstance: processInstance]
		}
	}

	def edit = {
		def processInstance = Process.get(params.id)
		if (!processInstance) {
			flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'process.label', default: 'Process'), params.id])}"
			redirect(action: "list")
		}
		else {
			return [processInstance: processInstance]
		}
	}

	def priorityedit = {
		def processInstance = Process.get(params.id)
		if (!processInstance) {
			flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'process.label', default: 'Process'), params.id])}"
			redirect(action: "list")
		}
		else {
			return [processInstance: processInstance]
		}
	}
	
	def update = {
		def processInstance = Process.get(params.id)
		if (processInstance) {
			if (params.version) {
				def version = params.version.toLong()
				if (processInstance.version > version) {

					processInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'process.label', default: 'Process')] as Object[], "Another user has updated this Process while you were editing")
					render(view: "edit", model: [processInstance: processInstance])
					return
				}
			}
			processInstance.properties = params
			if (!processInstance.hasErrors() && processInstance.save(flush: true)) {
				flash.message = "${message(code: 'default.updated.message', args: [message(code: 'process.label', default: 'Process'), processInstance.id])}"
				redirect(action: "priorityshow", id: processInstance.id)
			}
			else {
				render(view: "edit", model: [processInstance: processInstance])
			}
		}
		else {
			flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'process.label', default: 'Process'), params.id])}"
			redirect(action: "prioritylist")
		}
	}

	def delete = {
		def processInstance = Process.get(params.id)
		if (processInstance) {
			try {
				processInstance.delete(flush: true)
				flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'process.label', default: 'Process'), params.id])}"
				redirect(action: "list")
			}
			catch (org.springframework.dao.DataIntegrityViolationException e) {
				flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'process.label', default: 'Process'), params.id])}"
				redirect(action: "show", id: params.id)
			}
		}
		else {
			flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'process.label', default: 'Process'), params.id])}"
			redirect(action: "list")
		}
	}
	
	def saveOrThrow(def o) {
		if (!o.save()) {
			println "COULD NOT SAVE: ${o}"
			o.errors.allErrors.each { println it }

			throw new RuntimeException('Failed')
		}
	}

	def dropJob = {
		def oldprocessInstance = Process.get(params.oldprocessId)
		def processInstance = Process.get(params.processId)
		def jobInstance = Job.get(params.jobId)
		jobInstance.process = processInstance
		if (oldprocessInstance)
		{
			def today = new Date()
			def job2 = new Throughput(process:oldprocessInstance.canister,datefinished: today,jobname: jobInstance.jobname,companyname: jobInstance.companyname,totalvalue: jobInstance.totalvalue,workorder: jobInstance.workorder)
			saveOrThrow(job2)
		}	
		// When job is finished
		if (processInstance ==~ 'finished')
		{
		def today = new Date()
			def job1 = new Finishedjobs(jobname:jobInstance.jobname,companyname:jobInstance.companyname,datefinished: today,shoporder:jobInstance.shoporder,nooflayers:jobInstance.nooflayers,noboardsperpanel:jobInstance.noboardsperpanel,size:jobInstance.size,projectmanager:jobInstance.projectmanager,salescontact:jobInstance.salescontact,notes:jobInstance.notes,workorder:jobInstance.workorder,noofpanelsmade:jobInstance.noofpanelsmade,noofboardsordered:jobInstance.noofboardsordered,totalvalue:jobInstance.totalvalue,valueperboard:jobInstance.valueperboard)
		saveOrThrow(job1)
		jobInstance.delete(flush: true)}
		} 
}