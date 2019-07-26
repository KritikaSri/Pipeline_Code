pipeline{
	       
		tools{
			maven 'M2_HOME'
			jdk 'JAVA_HOME'
			}
	    	options {
	    		buildDiscarder(logRotator(numToKeepStr: '4', artifactNumToKeepStr: '4'))
	  		}
			agent {
	    	node {
			    label ''
	      	            customWorkspace '/var/lib/jenkins/myspace'
	    		}
	  		}
	     	stages{
	        	   stage('Checkout Stage'){
	           		steps{
	                  		git url: 'https://github.com/KritikaSri/Pipeline_Code.git'
	              			sh 'mvn clean'
		       			}
	          		}
		   	   stage('Compile Stage'){
	          		 steps{
			      		 sh 'mvn compile'
		       			}
	             		}
			   stage('Integration Test')	{
				steps{
				         sh 'mvn integration-test'
					}
				}
			  stage('Static Code Analysis Stage'){
		                steps{
		         		sh 'mvn sonar:sonar'
				      }
		  		}
	      		 stage("Quality Gate"){
		        	 steps {
	              			timeout(time: 1) {
	                		waitForQualityGate abortPipeline: true
	              			}
				 }
	       			}
	                 
		 	stage('Testing Stage'){
		  		steps{
			  		sh 'mvn test'
		     	  	        junit 'target/surefire-reports/*.xml'	
		      			 sh 'mvn surefire-report:report'
					 }
				}
		       stage('Code Coverage Test'){
				steps{
					sh 'mvn cobertura:cobertura' 
					cobertura autoUpdateHealth: false, autoUpdateStability: false, coberturaReportFile: 'target/site/cobertura/coverage.xml', conditionalCoverageTargets: '70, 0, 0', failUnhealthy: false, failUnstable: false, lineCoverageTargets: '80, 0, 0', maxNumberOfBuilds: 0, methodCoverageTargets: '80, 0, 0', onlyStable: false, sourceEncoding: 'ASCII', zoomCoverageChart: false
					}
				}
				
			 stage('Code Coverage Test'){
				steps{
			         	 jacoco execPattern: '**/jacoco.exec'
					 }
				}
				
			  stage('Parallel jobs'){
				parallel{
			   		stage('Security Testing'){
			    			steps{
							sh 'mvn findbugs:findbugs'
							}
						}
						
		          		stage('Performance Testing'){
			  			
			     			steps{
			           			sh 'mvn verify -X'
		                   			}
		           			}
						
					}
				}
				
			   stage('Package'){
	          		steps{
					sh 'mvn war:war'
				}
			}
			
			stage('Deploy2')
			{
			  steps{
					sh 'mvn deploy'
				}
			}
			
			stage('tomcat server')
			{
			steps{
			sh 'cp /var/lib/jenkins/workspace/pipeline-jenkins/target/myweb-0.0.5.war /usr/apache/apache-tomcat-8.5.41'
			}
			}
			
			}
		}

