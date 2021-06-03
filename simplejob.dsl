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
	registryCredentials('	0a330222-582d-430f-a6ef-79d063fe4555')
      }
 }
 publishers{
 	archiveArtifacts('target/*.jar')
 }
}
