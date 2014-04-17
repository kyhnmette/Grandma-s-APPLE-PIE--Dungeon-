using UnityEngine;
using System.Collections;

public class AppleSeeds : Items {
	
	public Transform Sparkle;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
	
	void OnCollisionEnter (Collision other) {
		//Instantiate (Sparkle, transform.position, Quaternion.identity);
		Destroy (gameObject);
	}
}
