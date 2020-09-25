resource "null_resource" "minikubeservice" {
	  provisioner "local-exec" {
	    command = "minikube service list"
	    
	  }
	  depends_on = [
	      kubernetes_deployment.anipress,
	      kubernetes_service.anilb,
	      aws_db_instance.anidb
	 
	     ]
	}
