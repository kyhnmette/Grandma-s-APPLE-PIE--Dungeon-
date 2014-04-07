using UnityEngine;
using System.Collections;

public class spawnBushLVL2 : MonoBehaviour {
	
	public GameObject DaBushDOWN;
	public GameObject DaBushUP;
	public GameObject YellowApple;
	public GameObject TheLarch;
	
	//--------------------------LVLYellow----------------------
	
	// The list of bushes (Horizontal)
	private float[] DOWNposX = {4f,6f,13f,16f,3f,13f,16f,12f};
	private float[] DOWNposZ = {6f,4f, 4f, 7f,10f,10f,13f,16f};
	
	// The list of bushes (Vertical)
	private float[] UPposX = {6f,12f,12f,12f,9f, 9f, 9f,6f, 6f};
	private float[] UPposZ = {4f, 4f, 8f,12f,8f,12f,16f,10f,14f};
	
	//--------------------------LVLYellow----------------------
	
	// Use this for initialization
	void Start () {
		
		for (int i = 0; i < DOWNposX.Length; i++) {
			GameObject.Instantiate(DaBushDOWN, new Vector3(DOWNposX[i],1.0f,DOWNposZ[i]), transform.rotation);
		}
		
		for (int i = 0; i < UPposX.Length; i++) {
			GameObject.Instantiate(DaBushUP, new Vector3(UPposX[i],1.0f,UPposZ[i]), transform.rotation);
		}
		GameObject.Instantiate(YellowApple, new Vector3(17.5f,3f,18.5f), transform.rotation);
		
		TheLarch.gameObject.transform.position = new Vector3(1.5f, 2f, 1.5f);
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
