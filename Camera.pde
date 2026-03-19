/* Manage view controls */

// Fonction pour gèrer la vue du terrain
void keyPressed(){
    if (keyCode == RIGHT){
        speedDelta = 0.05;
    }else if (keyCode == LEFT){
        speedDelta = -0.5; 
    }else if(key == ' '){
        speed = -speed;
    }    
}

void keyReleased() {
  if (keyCode == RIGHT || keyCode == LEFT) speedDelta = 0;
}