pipeline{
	       
		tools{
			maven 'M2_Home'
			jdk 'JAVA_HOME'
			}
	    	
		agent { label 'master' }
	     	 stages{
	        	   stage('Checkout Stage'){
	           		steps{
	                  		git url: 'https://github.com/KritikaSri/Pipeline_Code.git'
	              			bat 'mvn clean'
		       			}
	          		}
		   	       stage('Compile Stage'){
	          		 steps{
			      		 bat 'mvn compile'
		       			}
	             		}
		 }
}
