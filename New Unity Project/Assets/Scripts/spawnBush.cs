using UnityEngine;
using System.Collections;

public class spawnBush : MonoBehaviour {
	
	public GameObject DaBushDOWN;
	public GameObject DaBushUP;
	
	/*//--------------------------LVLGreen-----------------------
	
	// The list of bushes (horezontal)
	private float[] DOWNposX = {5.5f, 12.5f, 13.5f, 3.5f,  8.5f, 13.5f,  7.5f};
	private float[] DOWNposZ = {3.5f,  4.5f,  7.5f, 8.5f, 13.5f, 16.5f, 16.5f};
	
	// The list of bushes (Vertical)
	private float[] UPposX = {5.5f, 9.5f, 4.5f, 9.5f, 16.5f,  4.5f,  7.5f, 16.5f};
	private float[] UPposZ = {4.5f, 3.5f, 9.5f, 9.5f,  8.5f, 13.5f, 13.5f, 12.5f};
	
	//--------------------------LVLGreen-----------------------*/
	
	//--------------------------LVLYellow----------------------
	
	/*// The list of bushes (Horizontal)
	private float[] DOWNposX = {4f,6f,13f,16f,3f,13f,16f,12f};
	private float[] DOWNposZ = {6f,4f, 4f, 7f,10f,10f,13f,16f};
	
	// The list of bushes (Vertical)
	private float[] UPposX = {6f,12f,12f,12f,9f, 9f, 9f,6f, 6f};
	private float[] UPposZ = {4f, 4f, 8f,12f,8f,12f,16f,10f,14f};
	
	//--------------------------LVLYellow----------------------*/
	
	/*//--------------------------LVLRed-------------------------
	
	// The list of bushes (Horizontal)
	private float[] DOWNposX = {  1f,  5f,12.5f,16.5f,9.5f,13.5f, 3.5f, 7.5f,13.5f, 3.5f, 9.5f,13.5f};
	private float[] DOWNposZ = {3.5f,3.5f, 3.5f, 3.5f,6.5f, 6.5f,13.5f,13.5f,13.5f,16.5f,16.5f,16.5f};
	
	// The list of bushes (Vertical)
	private float[] UPposX = {5.5f,8.5f, 5.5f, 8.5f,13.5f,16.5f, 9.5f};
	private float[] UPposZ = {6.5f,6.5f,10.5f,10.5f, 9.5f, 9.5f,13.5f};
	
	//-------------------------LVLRed--------------------------*/
	
	//-------------------------LVLBOSS-------------------------
	
	// The list of bushes (Horizontal)
	private float[] DOWNposX = {3.5f/*,9.5f,15.5f,1.5f,7.5f,13.5f, 3.5f, 9.5f,15.5f*/};
	private float[] DOWNposZ = {4.5f/*,4.5f, 4.5f,7.5f,7.5f, 7.5f,10.5f,10.5f,10.5f*/};
	
	// The list of bushes (Vertical)
	private float[] UPposX = { 3.5f/*,12.5f,12.5f*/};
	private float[] UPposZ = {11.5f/*,11.5f,15.5f*/};
	
	//-------------------------LVLBOSS-------------------------
	
	
	
	// Use this for initialization
	void Start () {
		for (int i = 0; i < DOWNposX.Length; i++) {
			GameObject BushSpawn = (GameObject)Instantiate(DaBushDOWN, new Vector3(DOWNposX[i],1.0f,DOWNposZ[i]), transform.rotation);
		}
		
		for (int i = 0; i < UPposX.Length; i++) {
			GameObject BushSpawn = (GameObject)Instantiate(DaBushUP, new Vector3(UPposX[i],1.0f,UPposZ[i]), transform.rotation);
		}
		
		
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
