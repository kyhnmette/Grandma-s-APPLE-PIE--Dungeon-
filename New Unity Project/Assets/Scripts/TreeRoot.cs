using UnityEngine;
using System.Collections;

public class TreeRoot : Life {

	//public gameObject treeObject;
	//tree treeScript;

	public static short getATK(){
		return ATK; 
	}

	// Use this for initialization
	void Start () {
		ATK = 20;

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
