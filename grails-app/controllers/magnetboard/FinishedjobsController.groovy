package magnetboard

class FinishedjobsController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [finishedjobsInstanceList: Finishedjobs.list(params), finishedjobsInstanceTotal: Finishedjobs.count()]
    }

    def create = {
        def finishedjobsInstance = new Finishedjobs()
        finishedjobsInstance.properties = params
        return [finishedjobsInstance: finishedjobsInstance]
    }

    def save = {
        def finishedjobsInstance = new Finishedjobs(params)
        if (finishedjobsInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'finishedjobs.label', default: 'Finishedjobs'), finishedjobsInstance.id])}"
            redirect(action: "show", id: finishedjobsInstance.id)
        }
        else {
            render(view: "create", model: [finishedjobsInstance: finishedjobsInstance])
        }
    }

    def show = {
        def finishedjobsInstance = Finishedjobs.get(params.id)
        if (!finishedjobsInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'finishedjobs.label', default: 'Finishedjobs'), params.id])}"
            redirect(action: "list")
        }
        else {
            [finishedjobsInstance: finishedjobsInstance]
        }
    }

    def edit = {
        def finishedjobsInstance = Finishedjobs.get(params.id)
        if (!finishedjobsInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'finishedjobs.label', default: 'Finishedjobs'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [finishedjobsInstance: finishedjobsInstance]
        }
    }

    def update = {
        def finishedjobsInstance = Finishedjobs.get(params.id)
        if (finishedjobsInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (finishedjobsInstance.version > version) {
                    
                    finishedjobsInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'finishedjobs.label', default: 'Finishedjobs')] as Object[], "Another user has updated this Finishedjobs while you were editing")
                    render(view: "edit", model: [finishedjobsInstance: finishedjobsInstance])
                    return
                }
            }
            finishedjobsInstance.properties = params
            if (!finishedjobsInstance.hasErrors() && finishedjobsInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'finishedjobs.label', default: 'Finishedjobs'), finishedjobsInstance.id])}"
                redirect(action: "show", id: finishedjobsInstance.id)
            }
            else {
                render(view: "edit", model: [finishedjobsInstance: finishedjobsInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'finishedjobs.label', default: 'Finishedjobs'), params.id])}"
            redirect(action: "list")
        }
    }
		
    def delete = {
        def finishedjobsInstance = Finishedjobs.get(params.id)
        if (finishedjobsInstance) {
            try {
                finishedjobsInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'finishedjobs.label', default: 'Finishedjobs'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'finishedjobs.label', default: 'Finishedjobs'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'finishedjobs.label', default: 'Finishedjobs'), params.id])}"
            redirect(action: "list")
        }
    }
}
