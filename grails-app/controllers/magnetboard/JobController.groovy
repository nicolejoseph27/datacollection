package magnetboard

import grails.plugins.springsecurity.Secured

@Secured(['ROLE_ADMIN'])

class JobController {

	
    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 15, 100)
        [jobInstanceList: Job.list(params), jobInstanceTotal: Job.count()]
    }
	
	def pepData = {
		def jobInstance = Job.findAllByPepMeanIsNotNull()
		jobInstance.sort{it.pepDate}
		def pep = []
		jobInstance.each {
		pep << [it.pepDate, it.pepMean]
		}
		[jobInstance: jobInstance,pep: pep]
	}

    def create = {
        def jobInstance = new Job()
        jobInstance.properties = params
        
    }
	
	def copy = {
		def jobInstance = Job.get(params.id)
		render(view: "create", model: [jobInstance: jobInstance])
	}

    def save = {
        def jobInstance = new Job(params)
        if (jobInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'job.label', default: 'Job'), jobInstance.id])}"
            redirect(action: "show", id: jobInstance.id)
        }
        else {
            render(view: "create", model: [jobInstance: jobInstance])
        }
    }

    def show = {
        def jobInstance = Job.get(params.id)
		def process1 = jobInstance.process?.canister
		if (process1 ==~ 'finished')
		{
		def today = new Date()
		def job1 = new Finishedjobs(jobname:jobInstance.jobname,companyname:jobInstance.companyname,datefinished: today,shoporder:jobInstance.shoporder,nooflayers:jobInstance.nooflayers,noboardsperpanel:jobInstance.noboardsperpanel,size:jobInstance.size,projectmanager:jobInstance.projectmanager,salescontact:jobInstance.salescontact,notes:jobInstance.notes,workorder:jobInstance.workorder,noofpanelsmade:jobInstance.noofpanelsmade,noofboardsordered:jobInstance.noofboardsordered,totalvalue:jobInstance.totalvalue,valueperboard:jobInstance.valueperboard)
		saveOrThrow(job1)
		jobInstance.delete(flush: true)
		}
        if (!jobInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'job.label', default: 'Job'), params.id])}"
            redirect(action: "list")
        }
        else {
            [jobInstance: jobInstance]
        }
    }
	
	def saveOrThrow(def o) {
		if (!o.save()) {
			println "COULD NOT SAVE: ${o}"
			o.errors.allErrors.each { println it }

			throw new RuntimeException('Failed')
		}
	}

    def edit = {
        def jobInstance = Job.get(params.id)
		if (!jobInstance) {
            flash.message = "${message(code: 'default.notjobInstance.process.found.message', args: [message(code: 'job.label', default: 'Job'), params.id])}"
            redirect(action: "list")
        }
        else {
			return [jobInstance: jobInstance]
        }
		
    }
	
	def print = {
		def jobInstance = Job.get(params.id)
		render(view: "printmagnet", model: [jobInstance: jobInstance])
	}
	
	def reCreate = {
		if(magnetboard.Finishedjobs.findByJobname(params.partnumber)){
		def jobnumber = magnetboard.Finishedjobs.findByJobname(params.partnumber)
		def finishedjobsInstance = Finishedjobs.get(jobnumber.id)
		def jobInstance = new Job(Jobname: params.partnumber, Companyname: finishedjobsInstance.companyname,Noboardsperpanel: finishedjobsInstance.noboardsperpanel,Nooflayers: finishedjobsInstance.nooflayers,Notes: finishedjobsInstance.notes,Projectmanager: finishedjobsInstance.projectmanager,Salescontact: finishedjobsInstance.salescontact,Size: finishedjobsInstance.size)
		render(view: "create", model: [jobInstance: jobInstance])
		}
		else {
		def jobInstance = new Job(Jobname: params.partnumber)
		render(view: "create", model: [jobInstance: jobInstance])
		}
	}	

	def PEP = {
		if(magnetboard.Job.findByWorkorder(params.workorder)){
		def jobNumber = magnetboard.Job.findByWorkorder(params.workorder)
			def jobInstance = Job.get(jobNumber.id)
			def today = new Date()
			jobInstance.pepMean = params.mean	
			jobInstance.pepOperator = params.operator
			jobInstance.pepDate = today
			redirect(controller: "machine", action: "addJobDataList")		
		}
		else {
			flash.message =  "NO WORK ORDER FOUND"
			redirect(controller: "machine", action: "addJobDataList")
		}	
	}
	
	def pluritec = {
		if(magnetboard.Job.findByWorkorder(params.workorder)){
		def jobNumber = magnetboard.Job.findByWorkorder(params.workorder)
			def jobInstance = Job.get(jobNumber.id)
			def today = new Date()
			jobInstance.pluritecXcomp = params.Xcomp
			jobInstance.pluritecYcomp = params.Ycomp
			jobInstance.pluritecOperator = params.operator
			jobInstance.pluritecDate = today
			redirect(controller: "machine", action: "addJobDataList")
		}
		else {
			flash.message =  "NO WORK ORDER FOUND"
			redirect(controller: "machine", action: "addJobDataList")
		}
	}
	
	def dcplating = {
		if(magnetboard.Job.findByWorkorder(params.workorder)){
		def jobNumber = magnetboard.Job.findByWorkorder(params.workorder)
			def jobInstance = Job.get(jobNumber.id)
			def today = new Date()
			jobInstance.dcCell = params.cell
			jobInstance.dcDate = today
			jobInstance.dcAt = params.areaTop
			jobInstance.dcAb = params.areaBottom
			jobInstance.dcSpec = params.spec
			jobInstance.dcOperator = params.operator
			jobInstance.dcMinCuDeposit = params.minCuDeposit
			jobInstance.dcMaxCuDeposit = params.maxCuDeposit
			jobInstance.dcAsf = params.asf
			jobInstance.dcTct = params.totalCopperTime
		    redirect(controller: "machine", action: "addJobDataList")
		}
		else {
			flash.message = "NO WORK ORDER FOUND"
			redirect(controller: "machine", action: "addJobDataList")
		}
	}
	
	def dcplatingSearch = {
		if(magnetboard.Job.findByJobname(params.jobName)){
		def searchJob = magnetboard.Job.findAllWhere(["jobname": params.jobName])
		searchJob.sort{it.dcDate}
		def jobSearch = []
		searchJob.each {
		jobSearch << [it.dcDate, it.dcAsf, it.dcTct, it.dcCell, it.dcMinCuDeposit, it.dcMaxCuDeposit]
		}
		[searchJob: searchJob, jobSearch: jobSearch]
		}
		else {flash.message = "No Job Found"
			  redirect(controller: "machine", action: "addJobDataList")
			}
	}
    def update = {
        def jobInstance = Job.get(params.id)
		def process1 = jobInstance.process?.canister
		if (jobInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (jobInstance.version > version) {
                    
                    jobInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'job.label', default: 'Job')] as Object[], "Another user has updated this Job while you were editing")
                    render(view: "edit", model: [jobInstance: jobInstance])
                    return
                }
            }
            jobInstance.properties = params
			def process2 = jobInstance.process?.canister
			if (process1 && (process1 != process2))
			{
				def today = new Date()
				def job2 = new Throughput(process: process1,datefinished: today,jobname: jobInstance.jobname,companyname: jobInstance.companyname,totalvalue: jobInstance.totalvalue,workorder: jobInstance.workorder)
				saveOrThrow(job2)
			}
            if (!jobInstance.hasErrors() && jobInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'job.label', default: 'Job'), jobInstance.id])}"
                redirect(action: "show", id: jobInstance.id)
            }
            else {
                render(view: "edit", model: [jobInstance: jobInstance])
				
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'job.label', default: 'Job'), params.id])}"
            redirect(action: "list")
        }
		
	}
	
	
	def delete = {
        def jobInstance = Job.get(params.id)
        if (jobInstance) {
            try {
                jobInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'job.label', default: 'Job'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'job.label', default: 'Job'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'job.label', default: 'Job'), params.id])}"
            redirect(action: "list")
        }
    }
}
