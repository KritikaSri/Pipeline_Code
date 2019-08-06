pipeline{
	       
	tools{
		maven 'M2_Home'
		jdk 'JAVA_HOME'
	}
	    	
	agent{ 
		label 'master' 
	}
	
	stages{
	    stage('Checkout Stage'){
	        
			steps{
	            git url: 'https://github.com/KritikaSri/Pipeline_Code.git'
		       	}
	    }
		
		stage('setup'){
	        steps{
			    bat 'mvn clean'
		    }
	    }
		
		stage('Compile Stage'){
			steps{
			    bat 'mvn compile'
		    }
	    }
		
		stage('Sonar quality check'){
	        steps{
			    bat 'mvn sonar:sonar'
		    }
		}	
			 
		stage('Unit testing'){
	        steps{
			    bat 'mvn test'
		    }
	    }
		
		stage('code covearge'){
	        steps{
			    bat 'mvn cobertura:cobertura'
		    }
	    }
	}	
}
