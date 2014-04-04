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

	}

	void OnCollisionEnter(Collision other){
		if(other.gameObject.name == "BallOfFire(Clone)"){
			HP -= BallOfFire.GetBallDmg();
		}
	}
}
