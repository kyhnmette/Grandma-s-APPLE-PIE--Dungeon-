using UnityEngine;
using System.Collections;

public class AppleRed : Apple {

	public static short GetATK() {
		return ATK;
	}

	// Use this for initialization
	void Start () {
		ATK = 15;
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
