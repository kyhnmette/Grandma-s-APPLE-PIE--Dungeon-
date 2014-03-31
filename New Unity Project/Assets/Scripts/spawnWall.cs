using UnityEngine;
using System.Collections;

public class spawnWall : MonoBehaviour {
	
    public GameObject myCube;
	public GameObject TheFloar;
 
    void Start() { //remember to change the vector coordinates according to the size of the object.
		
		for (float i = 0; i<30; i++){
       GameObject cubeSpawn = (GameObject)Instantiate(myCube, new Vector3(i,0.5f,0), transform.rotation);
		} //cubespawn: giving each object a name or it will not work
		//instantiate the gameobject
		//myCube telling it what it has to spawn
		//new vector3 telling it where to put it (z,y,x) (left/right, up/down, forth/back)
		// transform.rotation, the instantiate needs to know where the object faces towards, even if we do not change the original rotation.
		
		for (float i = 0; i<30; i++){
       	GameObject cubeSpawn = (GameObject)Instantiate(myCube, new Vector3(0,0.5f,i), transform.rotation);
		}
				for (float i = 0; i<30; i++){
       	GameObject cubeSpawn = (GameObject)Instantiate(myCube, new Vector3(29f,0.5f,i), transform.rotation);
		}
				for (float i = 0; i<30; i++){
       	GameObject cubeSpawn = (GameObject)Instantiate(myCube, new Vector3(i,0.5f,29f), transform.rotation);
		}
		
		GameObject floarSpawn = (GameObject)Instantiate(TheFloar, new Vector3(14.5f,-0.5f,14.5f), transform.rotation);
    }
 
    void Update() {
    }
}