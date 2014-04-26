using UnityEngine;
using System.Collections;

public class spawnHeartsLVL4 : MonoBehaviour {

	public GameObject Heart;

	// The list of hearts (Horizontal)
	private float[] DOWNposX = {18.0f, 18.0f, 3.0f, 3.0f, 18.0f};
	private float[] DOWNposZ = {18.0f, 2.0f, 18.0f, 9.0f, 9.0f};


	
	
	// Use this for initialization
	void Start () {
		for (int i = 0; i < DOWNposX.Length; i++) {
			GameObject.Instantiate(Heart, new Vector3(DOWNposX[i],1.0f,DOWNposZ[i]), transform.rotation);
			
		}

	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
