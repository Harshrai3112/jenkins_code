job("firstDSLJob"){
	description("hello world DSL")
  	scm{
    	github("vimallinuxworld13/simple-java-maven-app")
    }
  	steps{
      maven{
        goals('package')
      	mavenInstallation('mvn3')
      }
      shell('java -jar target/*.jar')
 }
 publishers{
 	archiveArtifacts('target/*.jar')
 }
}
