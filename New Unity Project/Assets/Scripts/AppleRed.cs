using UnityEngine;
using System.Collections;

public class AppleRed : Apple {

	public static int GetATK() {
		return ATK;
	}

	// Use this for initialization
	void Start () {
		AppleScriptStart ();
		ATK = 15;
		HP = 50;
	}
	
	// Update is called once per frame
	void Update () {
		AppleScriptUpdate ();
		
		if (HP <= 0){
			Destroy (gameObject);
		}
	}
		
	
	}

