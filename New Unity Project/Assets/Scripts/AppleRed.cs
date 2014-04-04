﻿using UnityEngine;
using System.Collections;

public class AppleRed : Apple {

	public static int GetATK() {
		return ATK;
	}

	// Use this for initialization
	void Start () {
		ATK = 15;
		HP = 50;
	}
	
	// Update is called once per frame
	void Update () {
		if (HP <= 0){
			Destroy (gameObject);
		}
	}
		
	
	}

