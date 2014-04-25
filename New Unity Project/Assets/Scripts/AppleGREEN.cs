﻿using UnityEngine;
using System.Collections;

class AppleGREEN : Apple {

	public GameObject nextLevel1;

	public static int GetATK() {
		return ATK;
	}

	// Use this for initialization
	public override void Start () {
		base.Start();
		AppleScriptStart ();
		ATK = 10;
		HP = 20;
	}
	
	// Update is called once per frame
	void Update () {
		AppleScriptUpdate ();
		
		if (HP <= 0){
			Destroy (gameObject);
			GameObject.Instantiate(nextLevel1, new Vector3(2f,1f,2f), transform.rotation);

		}
	}
}
