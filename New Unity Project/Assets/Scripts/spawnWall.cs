using UnityEngine;
using System.Collections;

public class spawnWall : MonoBehaviour {
	
    public GameObject myCubeDOWN;
	public GameObject myCubeUP;
	public GameObject TheFloar;
	public GameObject testCUBE;
 
    void Start() { //remember to change the vector coordinates according to the size of the object.
		
		for (float i = 1f; i<20; i+=2){
       GameObject cubeSpawn = (GameObject)Instantiate(myCubeUP, new Vector3(i,1f,0.5f), transform.rotation);
		} //cubespawn: giving each object a name or it will not work
		//instantiate the gameobject
		//myCube telling it what it has to spawn
		//new vector3 telling it where to put it (z,y,x) (left/right, up/down, forth/back)
		// transform.rotation, the instantiate needs to know where the object faces towards, even if we do not change the original rotation.
		
		for (float i = 1f; i<20; i+=2){
       		GameObject cubeSpawn = (GameObject)Instantiate(myCubeDOWN, new Vector3(0.5f,1f,i), transform.rotation);
		}
		for (float i = 1f; i<21; i+=2){
       		GameObject cubeSpawn = (GameObject)Instantiate(myCubeDOWN, new Vector3(20.5f,1f,i), transform.rotation);
		}
		for (float i = 2f; i<21; i+=2){
       		GameObject cubeSpawn = (GameObject)Instantiate(myCubeUP, new Vector3(i,1f,20.5f), transform.rotation);
		}
		
		GameObject floarSpawn = (GameObject)Instantiate(TheFloar, new Vector3(10.5f,-0.5f,10.5f), transform.rotation);
		
		
		
		for (float i = 1.5f; i<21; i++){ //test cube to tjek out sizes
       		GameObject cubeSpawn = (GameObject)Instantiate(testCUBE, new Vector3(i,0f,i), transform.rotation);
		}
		
		
    }
	
 
    void Update() {
    }
}