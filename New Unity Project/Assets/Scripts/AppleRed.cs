using UnityEngine;
using System.Collections;

public class AppleRed : Apple {

	public GameObject nextLevel3;

	public static int GetATK() {
		return ATK;
	}

	// Use this for initialization
	public override void Start () {
		base.Start();
		AppleScriptStart (); // the function AppleScripStart from the apple script is called
		ATK = 25;
		HP = 50;
		Speed = Speed * 2.1f; // the original speed from the apple script is multiplied with 2.1
	}
	
	// Update is called once per frame
	void Update () {
		AppleScriptUpdate (); // the function AppleScriptUpdate from the apple script is called
		
		if (HP <= 0){ // cheking if the greenApple has more HP left if not it is destoyed 
			Destroy (gameObject);
			GameObject.Instantiate(nextLevel3, new Vector3(2f,1f,2f), transform.rotation);// the portal to the newt level is spawn on the scene
		}
	}
}

