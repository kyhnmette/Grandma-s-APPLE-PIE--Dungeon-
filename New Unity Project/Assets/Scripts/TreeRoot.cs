using UnityEngine;
using System.Collections;

public class TreeRoot : MonoBehaviour {

	//public gameObject treeObject;
	//tree treeScript;

	// Use this for initialization
	void Start () {
		//treeScript = gameObject.Find("tree").GetComponent<tree>();
	}
	
	// Update is called once per frame
	void Update () {
	
	}


	void OnCollisionEnter(Collision other) {
		if (other.gameObject.name == "Lars") {
			//treeScript.coHappen = true;
			Destroy (gameObject);



		}
		
	}

}
