using UnityEngine;
using System.Collections;

public class spawnSeeds : MonoBehaviour {

	public GameObject appleseed;

	private float[] SEEDposX = {18.0f, 16.0f, 3.0f, 6.0f, 15.0f};
	private float[] SEEDposZ = {18.0f, 2.0f, 16.0f, 12.0f, 10.0f};

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
