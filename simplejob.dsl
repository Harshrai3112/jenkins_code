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
 	 }
}
