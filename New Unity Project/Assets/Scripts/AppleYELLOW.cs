using UnityEngine;
using System.Collections;

class AppleYELLOW : Apple {

	public GameObject nextLevel2;

	public static int GetATK() {
		return ATK;
	}

	// Use this for initialization
	public override void Start () {
		base.Start();
		AppleScriptStart (); // the function AppleScriptStart from the apple script is called
		ATK = 15;
		HP = 35;
		Speed = Speed * 1.7f; // the original speed from the apple script is multiplied with 1.7
	}
	
	// Update is called once per frame
	void Update () {
		AppleScriptUpdate (); // the function AppleScriptUpdate from the apple script is called
		if (HP <= 0){ // cheking if the greenApple has more HP left if not it is destoyed
			Destroy (gameObject); 
			GameObject.Instantiate(nextLevel2, new Vector3(2f,1f,2f), transform.rotation);// the portal to the newt level is spawn on the scene
		}
	}
}
