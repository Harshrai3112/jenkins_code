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
      dockerBuildAndPublish {
      	repositoryName("harshrai3112/mvnprojDSL")
	tag('v1')
	registryCredentials('harshrai3112/')
      }
 }
 publishers{
 	archiveArtifacts('target/*.jar')
 }
}
