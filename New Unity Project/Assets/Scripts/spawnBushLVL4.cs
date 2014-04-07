using UnityEngine;
using System.Collections;

public class spawnBushLVL4 : MonoBehaviour {
	
	public GameObject DaBushDOWN;
	public GameObject DaBushUP;
	public GameObject TheLarch;
	
	//-------------------------LVLBOSS-------------------------
	
	// The list of bushes (Horizontal)
	private float[] DOWNposX = {3.5f,9.5f,15.5f,1.5f,7.5f,13.5f, 3.5f, 9.5f,15.5f};
	private float[] DOWNposZ = {4.5f,4.5f, 4.5f,7.5f,7.5f, 7.5f,10.5f,10.5f,10.5f};
	
	// The list of bushes (Vertical)
	private float[] UPposX = { 3.5f,12.5f,12.5f};
	private float[] UPposZ = {11.5f,11.5f,15.5f};
	
	//-------------------------LVLBOSS-------------------------
	
	// Use this for initialization
	void Start () {
		
		for (int i = 0; i < DOWNposX.Length; i++) {
			GameObject.Instantiate(DaBushDOWN, new Vector3(DOWNposX[i],1.0f,DOWNposZ[i]), transform.rotation);
		}
		
		for (int i = 0; i < UPposX.Length; i++) {
			GameObject.Instantiate(DaBushUP, new Vector3(UPposX[i],1.0f,UPposZ[i]), transform.rotation);
			
			TheLarch.gameObject.transform.position = new Vector3(1.5f, 2f, 1.5f);
		}
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
