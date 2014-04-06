using UnityEngine;
using System.Collections;

public class Level1Switch : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	void OnCollisionEnter(Collision other){
		if (other.gameObject.name == "Lars") {
			Destroy (gameObject);
			Application.LoadLevel ("Level2");
		}
	}
}
