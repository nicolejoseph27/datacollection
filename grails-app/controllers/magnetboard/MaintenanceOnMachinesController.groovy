package magnetboard

class MaintenanceOnMachinesController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [maintenanceOnMachinesInstanceList: MaintenanceOnMachines.list(params), maintenanceOnMachinesInstanceTotal: MaintenanceOnMachines.count()]
    }
	
	def maintenanceGraph = {
		
	}

    def create = {
        def maintenanceOnMachinesInstance = new MaintenanceOnMachines()
        maintenanceOnMachinesInstance.properties = params
        return [maintenanceOnMachinesInstance: maintenanceOnMachinesInstance]
    }

    def save = {
        def maintenanceOnMachinesInstance = new MaintenanceOnMachines(params)
        if (maintenanceOnMachinesInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'maintenanceOnMachines.label', default: 'MaintenanceOnMachines'), maintenanceOnMachinesInstance.id])}"
            redirect(action: "show", id: maintenanceOnMachinesInstance.id)
        }
        else {
            render(view: "create", model: [maintenanceOnMachinesInstance: maintenanceOnMachinesInstance])
        }
    }

    def show = {
        def maintenanceOnMachinesInstance = MaintenanceOnMachines.get(params.id)
        if (!maintenanceOnMachinesInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'maintenanceOnMachines.label', default: 'MaintenanceOnMachines'), params.id])}"
            redirect(action: "list")
        }
        else {
            [maintenanceOnMachinesInstance: maintenanceOnMachinesInstance]
        }
    }

    def edit = {
        def maintenanceOnMachinesInstance = MaintenanceOnMachines.get(params.id)
        if (!maintenanceOnMachinesInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'maintenanceOnMachines.label', default: 'MaintenanceOnMachines'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [maintenanceOnMachinesInstance: maintenanceOnMachinesInstance]
        }
    }

    def update = {
        def maintenanceOnMachinesInstance = MaintenanceOnMachines.get(params.id)
        if (maintenanceOnMachinesInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (maintenanceOnMachinesInstance.version > version) {
                    
                    maintenanceOnMachinesInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'maintenanceOnMachines.label', default: 'MaintenanceOnMachines')] as Object[], "Another user has updated this MaintenanceOnMachines while you were editing")
                    render(view: "edit", model: [maintenanceOnMachinesInstance: maintenanceOnMachinesInstance])
                    return
                }
            }
            maintenanceOnMachinesInstance.properties = params
            if (!maintenanceOnMachinesInstance.hasErrors() && maintenanceOnMachinesInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'maintenanceOnMachines.label', default: 'MaintenanceOnMachines'), maintenanceOnMachinesInstance.id])}"
                redirect(action: "show", id: maintenanceOnMachinesInstance.id)
            }
            else {
                render(view: "edit", model: [maintenanceOnMachinesInstance: maintenanceOnMachinesInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'maintenanceOnMachines.label', default: 'MaintenanceOnMachines'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def maintenanceOnMachinesInstance = MaintenanceOnMachines.get(params.id)
        if (maintenanceOnMachinesInstance) {
            try {
                maintenanceOnMachinesInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'maintenanceOnMachines.label', default: 'MaintenanceOnMachines'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'maintenanceOnMachines.label', default: 'MaintenanceOnMachines'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'maintenanceOnMachines.label', default: 'MaintenanceOnMachines'), params.id])}"
            redirect(action: "list")
        }
    }
}
