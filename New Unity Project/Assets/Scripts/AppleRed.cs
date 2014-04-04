using UnityEngine;
using System.Collections;

public class AppleRed : Apple {

	public static int GetATK() {
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
