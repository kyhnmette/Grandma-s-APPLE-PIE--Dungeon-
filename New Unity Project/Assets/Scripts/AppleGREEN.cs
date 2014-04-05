using UnityEngine;
using System.Collections;

public class AppleGREEN : Apple {

	// Use this for initialization
	public override void Start () {
		ATK = 5;
		HP = 20;
	}
	
	// Update is called once per frame
	void Update () {
		/*if (HP <= 0){
			Destroy (gameObject);
		}*/
	}
}
