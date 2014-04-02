using UnityEngine;
using System.Collections;

public class spawnWall : MonoBehaviour {
	
    public GameObject myCubeDOWN;
	public GameObject myCubeUP;
	public GameObject TheFloar;
	public GameObject testCUBE;
	public GameObject TheLarch;
	public GameObject TestHEART;
	public GameObject TestSEED;
	public GameObject TestAPPLE;
 
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
		
		GameObject LarsSpawn = (GameObject)Instantiate(TheLarch, new Vector3(1.5f,2f,1.5f), transform.rotation);
		
		for (float i = 1.5f; i<21; i++){ //test cube to tjek out sizes
       		GameObject cubeSpawn = (GameObject)Instantiate(testCUBE, new Vector3(i,1f,i), transform.rotation);
		}
		
		GameObject heartspawn = (GameObject)Instantiate(TestHEART, new Vector3(7.5f,0f,4.5f), transform.rotation);
		
		GameObject seedSpawn = (GameObject)Instantiate(TestSEED, new Vector3(5.5f,0f,9.5f), transform.rotation);
		
		GameObject APPLESpawn = (GameObject)Instantiate(TestAPPLE, new Vector3(16.5f,3f,5.5f), transform.rotation);
		
    }
	
 
    void Update() {
    }
}