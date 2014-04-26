using UnityEngine;
using System.Collections;

public class spawnSeedsLVL3 : MonoBehaviour {

	public GameObject appleseed;
	
	private float[] SEEDposX = {18.0f, 18.0f, 3.0f, 3.0f, 15.0f};
	private float[] SEEDposZ = {18.0f, 5.0f, 16.0f, 9.0f, 9.0f};
	
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
