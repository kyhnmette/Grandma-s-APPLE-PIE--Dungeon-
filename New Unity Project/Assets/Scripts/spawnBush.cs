using UnityEngine;
using System.Collections;

public class spawnBush : MonoBehaviour {
	
	public GameObject DaBushDOWN;
	public GameObject DaBushUP;
	public GameObject GreenApple;
	public GameObject TheLarch;
	public GameObject appleseed;
	public GameObject Heart;
	
	//-------------------------Appleseeds LVL Green -----------

	private float[] SEEDposX = {18.0f, 16.0f, 3.0f, 6.0f, 15.0f};
	private float[] SEEDposZ = {18.0f, 2.0f, 16.0f, 12.0f, 10.0f};
	
	//-------------------------Hearts for LVL GREEN------------
	
	private float[] HeartposX = {13.0f};
	private float[] HeartposZ = {16.0f};
	
	//--------------------------LVLGreen-----------------------
	
	// The list of bushes (horezontal)
	private float[] DOWNposX = {5.5f, 12.5f, 13.5f, 3.5f,  8.5f, 13.5f,  7.5f};
	private float[] DOWNposZ = {3.5f,  4.5f,  7.5f, 8.5f, 13.5f, 16.5f, 16.5f};
	
	// The list of bushes (Vertical)
	private float[] UPposX = {5.5f, 9.5f, 4.5f, 9.5f, 16.5f,  4.5f,  7.5f, 16.5f};
	private float[] UPposZ = {4.5f, 3.5f, 9.5f, 9.5f,  8.5f, 13.5f, 13.5f, 12.5f};
	
	//--------------------------LVLGreen-----------------------
	
	// Use this for initialization
	void Start () {
		for (int i = 0; i < DOWNposX.Length; i++) {
			GameObject.Instantiate(DaBushDOWN, new Vector3(DOWNposX[i],1.0f,DOWNposZ[i]), transform.rotation);
		}
		
		for (int i = 0; i < UPposX.Length; i++) {
			GameObject.Instantiate(DaBushUP, new Vector3(UPposX[i],1.0f,UPposZ[i]), transform.rotation);
		}
		GameObject.Instantiate(GreenApple, new Vector3(13.5f,3f,13.5f), transform.rotation);
		
		for (int i = 0; i < SEEDposX.Length; i++) {
			GameObject.Instantiate(appleseed, new Vector3(SEEDposX[i],1.0f,SEEDposZ[i]), transform.rotation);
		}
		
		for (int i = 0; i < HeartposX.Length; i++) {
			GameObject.Instantiate(Heart, new Vector3(HeartposX[i],1.0f,HeartposZ[i]), transform.rotation);
		}
		
		GameObject LarsSpawn = (GameObject)Instantiate(TheLarch, new Vector3(1.5f,2f,1.5f), transform.rotation);
		LarsSpawn.name = "Lars";
		
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
