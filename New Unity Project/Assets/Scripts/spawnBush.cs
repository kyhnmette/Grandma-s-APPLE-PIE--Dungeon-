using UnityEngine;
using System.Collections;

public class spawnBush : MonoBehaviour {
	
	public GameObject DaBushDOWN;
	public GameObject DaBushUP;
	
	// The list of bushes (horezontal)
	private float[] DOWNposX = {10.0f, 14.0f};
	private float[] DOWNposZ = {10.0f, 10.0f};
	
	// The list of bushes (Vertical)
	private float[] UPposX = {10.0f};
	private float[] UPposZ = {10.0f};
	
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
