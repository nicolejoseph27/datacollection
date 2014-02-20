package magnetboard

import org.codehaus.groovy.grails.commons.ConfigurationHolder

class ThroughputController {
	
	def exportService

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        if(!params.max) params.max = Throughput.count()		

		if(params?.format && params.format != "html"){
			response.contentType = ConfigurationHolder.config.grails.mime.types[params.format]
			response.setHeader("Content-disposition", "attachment; filename=throughput.${params.extension}")
			
			List fields = ["dateDateFinished", "timeDateFinished", "companyname", "jobname", "workorder", "process", "scrubbedTotalValue"]
			Map labels = ["workorder": "Work Order", "dateDateFinished": "Date", "timeDateFinished": "Time", "companyname": "Company", "jobname": "Job", "process": "Process", "scrubbedTotalValue": "Value"]
         
			def upperCase = { domain, value ->
				return value.toUpperCase()
			}
 
			Map formatters = [workorder: upperCase]		
			Map parameters = ["column.widths": [0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2]]
			
			
			exportService.export(params.format, response.outputStream, Throughput.list(params), fields, labels, formatters, parameters)
		}

        [throughputInstanceList: Throughput.list(params) ]
    }
	
	def create = {
        def throughputInstance = new Throughput()
        throughputInstance.properties = params
        return [throughputInstance: throughputInstance]
    }

    def save = {
        def throughputInstance = new Throughput(params)
        if (throughputInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'throughput.label', default: 'Throughput'), throughputInstance.id])}"
            redirect(action: "show", id: throughputInstance.id)
        }
        else {
            render(view: "create", model: [throughputInstance: throughputInstance])
        }
    }

    def show = {
        def throughputInstance = Throughput.get(params.id)
        if (!throughputInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'throughput.label', default: 'Throughput'), params.id])}"
            redirect(action: "list")
        }
        else {
            [throughputInstance: throughputInstance]
        }
    }

    def edit = {
        def throughputInstance = Throughput.get(params.id)
        if (!throughputInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'throughput.label', default: 'Throughput'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [throughputInstance: throughputInstance]
        }
    }

    def update = {
        def throughputInstance = Throughput.get(params.id)
        if (throughputInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (throughputInstance.version > version) {
                    
                    throughputInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'throughput.label', default: 'Throughput')] as Object[], "Another user has updated this Throughput while you were editing")
                    render(view: "edit", model: [throughputInstance: throughputInstance])
                    return
                }
            }
            throughputInstance.properties = params
            if (!throughputInstance.hasErrors() && throughputInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'throughput.label', default: 'Throughput'), throughputInstance.id])}"
                redirect(action: "show", id: throughputInstance.id)
            }
            else {
                render(view: "edit", model: [throughputInstance: throughputInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'throughput.label', default: 'Throughput'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def throughputInstance = Throughput.get(params.id)
        if (throughputInstance) {
            try {
                throughputInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'throughput.label', default: 'Throughput'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'throughput.label', default: 'Throughput'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'throughput.label', default: 'Throughput'), params.id])}"
            redirect(action: "list")
        }
    }
}
