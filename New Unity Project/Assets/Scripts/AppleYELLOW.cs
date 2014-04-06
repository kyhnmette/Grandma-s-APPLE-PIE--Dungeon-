using UnityEngine;
using System.Collections;

class AppleYELLOW : Apple {

	public static int GetATK() {
		return ATK;
	}

	// Use this for initialization
	public override void Start () {
		base.Start();
		AppleScriptStart ();
		ATK = 10;
		HP = 35;
	}
	
	// Update is called once per frame
	void Update () {
		AppleScriptUpdate ();
		if (HP <= 0){
			Destroy (gameObject);
		}
	}
}
