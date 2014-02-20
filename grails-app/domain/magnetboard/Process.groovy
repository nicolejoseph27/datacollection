package magnetboard

class Process {

static hasMany = [jobs: Job]

String canister
Integer priority

 String toString(){
 return canister
}
}
