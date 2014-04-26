using UnityEngine;
using System.Collections;

public class spawnHearts : MonoBehaviour {

	public GameObject Heart;


	// The list of hearts (Horizontal)
	private float[] DOWNposX = {13.0f};
	private float[] DOWNposZ = {16.0f};


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
