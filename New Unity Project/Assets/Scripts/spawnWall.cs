using UnityEngine;
using System.Collections;

public class spawnWall : MonoBehaviour {
	
    public GameObject myCubeDOWN;
	public GameObject myCubeUP;
	public GameObject TheFloar;
	public GameObject BACKGROUND;
 
    void Start() {
		// The following code will spawn the layout of the scene
		for (float i = 1f; i<20; i+=2){
       		GameObject.Instantiate(myCubeUP, new Vector3(i,1f,0.5f), transform.rotation);
		}
		for (float i = 2f; i<22; i+=2){
       		GameObject.Instantiate(myCubeDOWN, new Vector3(0.5f,1f,i), transform.rotation);
		}
		for (float i = 1f; i<21; i+=2){
       		GameObject.Instantiate(myCubeDOWN, new Vector3(20.5f,1f,i), transform.rotation);
		}
		for (float i = 2f; i<21; i+=2){
       		GameObject.Instantiate(myCubeUP, new Vector3(i,1f,20.5f), transform.rotation);
		}
		GameObject.Instantiate(TheFloar, new Vector3(10.5f,-0.5f,10.5f), transform.rotation);
		GameObject.Instantiate(BACKGROUND, new Vector3(11f,-2.5f,11f), transform.rotation);
    }
	
 
    void Update() {
    }
}