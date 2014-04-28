using UnityEngine;
using System.Collections;

public class spawnBushLVL3 : MonoBehaviour {
	
	public GameObject DaBushDOWN;
	public GameObject DaBushUP;
	public GameObject RedApple;
	public GameObject TheLarch;
	public GameObject appleseed;
	public GameObject Heart;
	
	//----------------------Appleseeds LVL Red-----------------
	
	private float[] SEEDposX = {18.0f, 18.0f, 3.0f, 3.0f, 15.0f};
	private float[] SEEDposZ = {18.0f, 5.0f, 16.0f, 9.0f, 9.0f};
	
	//----------------------Hearts for LVL Red-----------------
	
	private float[] HeartposX = {8.0f, 18.0f, 15.3f};
	private float[] HeartposZ = {18.0f, 2.0f, 12.0f};
	
	//--------------------------LVLRed-------------------------
	
	// The list of bushes (Horizontal)
	private float[] DOWNposX = {  1f,  5f,12.5f,16.5f,9.5f,13.5f, 3.5f, 7.5f,13.5f, 3.5f, 9.5f,13.5f};
	private float[] DOWNposZ = {3.5f,3.5f, 3.5f, 3.5f,6.5f, 6.5f,13.5f,13.5f,13.5f,16.5f,16.5f,16.5f};
	
	// The list of bushes (Vertical)
	private float[] UPposX = {5.5f,8.5f, 5.5f, 8.5f,13.5f,16.5f, 9.5f};
	private float[] UPposZ = {6.5f,6.5f,10.5f,10.5f, 9.5f, 9.5f,13.5f};
	
	//-------------------------LVLRed--------------------------
	
	// Use this for initialization
	void Start () {
		
		for (int i = 0; i < DOWNposX.Length; i++) {
			GameObject.Instantiate(DaBushDOWN, new Vector3(DOWNposX[i],1.0f,DOWNposZ[i]), transform.rotation);
		}
		
		for (int i = 0; i < UPposX.Length; i++) {
			GameObject.Instantiate(DaBushUP, new Vector3(UPposX[i],1.0f,UPposZ[i]), transform.rotation);
		}
		GameObject.Instantiate(RedApple, new Vector3(2.5f,3f,6.5f), transform.rotation);
		
		for (int i = 0; i < SEEDposX.Length; i++) {
			GameObject.Instantiate(appleseed, new Vector3(SEEDposX[i],1.0f,SEEDposZ[i]), transform.rotation);
		}
		
		for (int i = 0; i < HeartposX.Length; i++) {
			GameObject.Instantiate(Heart, new Vector3(HeartposX[i],1.0f,HeartposZ[i]), transform.rotation);
		}
		
		TheLarch.gameObject.transform.position = new Vector3(1.5f, 2f, 1.5f);
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
