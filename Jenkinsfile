pipeline{
	       
		tools{
			maven 'M2_HOME'
			jdk 'JAVA_HOME'
			}
	    	
		
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
