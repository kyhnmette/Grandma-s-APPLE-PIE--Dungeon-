using UnityEngine;
using System.Collections;

public class AppleGREEN : Apple {

	public static int GetATK() {
		return ATK;
	}

	// Use this for initialization
	void Start () {
		ATK = 5;
		HP = 20;
	}
	
	// Update is called once per frame
	void Update () {
		if (HP <= 0){
			Destroy (gameObject);
		}



	}


			


}
