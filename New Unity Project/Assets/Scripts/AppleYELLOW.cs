using UnityEngine;
using System.Collections;

public class AppleYELLOW : Apple {

	public static int GetATK() {
		return ATK;
	}

	// Use this for initialization
	void Start () {
		ATK = 10;
		HP = 35;
	
	}
	
	// Update is called once per frame
	void Update () {
		if (HP <= 0){
			Destroy (gameObject);
		}
	}


}
