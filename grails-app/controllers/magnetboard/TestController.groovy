package magnetboard

class TestController {

    def index = { }
	
	def testCall = {
//		sleep(1000)
		render "Received Message, attrs: $params"
	}
	
	def remoteCall = {
		render "SUCCESSFULL call to remote function"
	}
}
