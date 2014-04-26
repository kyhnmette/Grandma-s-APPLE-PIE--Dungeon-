using UnityEngine;
using System.Collections;

public class spawnSeedLVL4 : MonoBehaviour {

	public GameObject appleseed;
	
	private float[] SEEDposX = {8.0f, 11.0f, 3.0f, 7.0f, 17.0f};
	private float[] SEEDposZ = {12.0f, 5.0f, 7.0f, 3.0f, 7.0f};
	
	// Use this for initialization
	void Start () {
		for (int i = 0; i < SEEDposX.Length; i++) {
			GameObject.Instantiate(appleseed, new Vector3(SEEDposX[i],1.0f,SEEDposZ[i]), transform.rotation);
			
		}
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
