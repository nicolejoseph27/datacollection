package magnetboard

class MachineVariableController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
		def l =  MachineVariable.list(params)
		def air = []
		def hall = []
		def temp = []
		def humid = []
		def fiveMicron = []
		def goldRoom = []
		def goldRoomFilms = []
		l.each {
		air << [it.airQuality_date, it.airQuality_spray, it.airQuality_sprayafterac]
		}
		l.each {
		goldRoom << [it.airQuality_date, it.airQuality_2camera, it.airQuality_4camera]
		}
		l.each {
		goldRoomFilms << [it.airQuality_date, it.airQuality_2camera, it.airQuality_4camera, it.airQuality_films]
		}
		l.each {
		hall << [it.airQuality_date, it.airQuality_spray,  it.airQuality_hall]
		}
		l.each {
		temp << [it.airQuality_date, it.airQuality_sprayTemp,  it.airQuality_2cameraTemp, it.airQuality_4cameraTemp, it.airQuality_filmsTemp]
		}
		l.each {
		humid << [it.airQuality_date, it.airQuality_sprayHumid,  it.airQuality_2cameraHumid, it.airQuality_4cameraHumid, it.airQuality_filmsHumid]
		}
		l.each {
		fiveMicron << [it.airQuality_date, it.airQuality_spray5,  it.airQuality_sprayafterac5, it.airQuality_2camera5, it.airQuality_4camera5, it.airQuality_hall5, it.airQuality_films5]
		}
	    params.max = Math.min(params.max ? params.int('max') : 100, 100)
        [machineVariableInstanceList:l, machineVariableInstanceTotal: MachineVariable.count(),air: air,hall: hall,temp: temp,humid: humid,fiveMicron: fiveMicron,goldRoom: goldRoom,goldRoomFilms: goldRoomFilms]
    }
	
	def pluritec = {
		if (params.pluritecMaintenance)	{
			flash.message = "Joe Pawlowski"
		}
		redirect(controller: "machine", action: "addJobDataList")
	}

    def create = {
        def machineVariableInstance = new MachineVariable()
        machineVariableInstance.properties = params
        return [machineVariableInstance: machineVariableInstance]
    }

    def save = {
        def machineVariableInstance = new MachineVariable(params)
        if (machineVariableInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'machineVariable.label', default: 'MachineVariable'), machineVariableInstance.id])}"
            redirect(action: "show", id: machineVariableInstance.id)
        }
        else {
            render(view: "create", model: [machineVariableInstance: machineVariableInstance])
        }
    }

	def saveOrThrow(def o) {
		if (!o.save()) {
			println "COULD NOT SAVE: ${o}"
			o.errors.allErrors.each { println it }

			throw new RuntimeException('Failed')
		}
	}
	
    def show = {
		
		
        def machineVariableInstance = MachineVariable.get(params.id)
        if (!machineVariableInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'machineVariable.label', default: 'MachineVariable'), params.id])}"
            redirect(action: "list")
        }
        else {
            [machineVariableInstance: machineVariableInstance]
        }
    }
	
	def airQuality = {
		def today = new Date()
		def maintenanceEvent = new MachineVariable(airQuality_date: today,airQuality_operator: params.operator,airQuality_films: params.Films,airQuality_films5: params.Films5,airQuality_filmsTemp: params.FilmsTemperature,airQuality_filmsHumid: params.FilmsHumidity,airQuality_filmsPressure: params.FilmsPressure,airQuality_spray: params.spray,airQuality_spray5: params.spray5,airQuality_sprayTemp: params.sprayTemperature,airQuality_sprayHumid: params.sprayHumidity,airQuality_sprayPressure: params.sprayPressure,airQuality_sprayafterac: params.sprayAfterAirHandler,airQuality_sprayafterac5: params.sprayAfterAirHandler5,airQuality_hall: params.hall,airQuality_hall5: params.hall5,airQuality_2camera: params.twoCamera,airQuality_2camera5: params.twoCamera5,airQuality_2cameraHumid: params.twoCameraHumidity,airQuality_2cameraTemp: params.twoCameraTemperature,airQuality_2cameraPressure: params.twoCameraPressure,airQuality_4camera: params.fourCamera,airQuality_4camera5: params.fourCamera5,airQuality_4cameraHumid: params.fourCameraHumidity,airQuality_4cameraTemp: params.fourCameraTemperature,airQuality_4cameraPressure: params.fourCameraPressure)
		saveOrThrow(maintenanceEvent)
		redirect(controller: "machine", action: "addMachineDataList")
	}

    def edit = {
        def machineVariableInstance = MachineVariable.get(params.id)
        if (!machineVariableInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'machineVariable.label', default: 'MachineVariable'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [machineVariableInstance: machineVariableInstance]
        }
    }

    def update = {
        def machineVariableInstance = MachineVariable.get(params.id)
        if (machineVariableInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (machineVariableInstance.version > version) {
                    
                    machineVariableInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'machineVariable.label', default: 'MachineVariable')] as Object[], "Another user has updated this MachineVariable while you were editing")
                    render(view: "edit", model: [machineVariableInstance: machineVariableInstance])
                    return
                }
            }
            machineVariableInstance.properties = params
            if (!machineVariableInstance.hasErrors() && machineVariableInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'machineVariable.label', default: 'MachineVariable'), machineVariableInstance.id])}"
                redirect(action: "show", id: machineVariableInstance.id)
            }
            else {
                render(view: "edit", model: [machineVariableInstance: machineVariableInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'machineVariable.label', default: 'MachineVariable'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def machineVariableInstance = MachineVariable.get(params.id)
        if (machineVariableInstance) {
            try {
                machineVariableInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'machineVariable.label', default: 'MachineVariable'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'machineVariable.label', default: 'MachineVariable'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'machineVariable.label', default: 'MachineVariable'), params.id])}"
            redirect(action: "list")
        }
    }
}
