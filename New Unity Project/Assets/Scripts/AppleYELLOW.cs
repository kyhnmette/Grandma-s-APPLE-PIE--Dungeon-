using UnityEngine;
using System.Collections;

public class AppleYELLOW : Apple {

	// Use this for initialization
	public override void Start () {
		ATK = 10;
		HP = 35;
	
	}
	
	// Update is called once per frame
	void Update () {
		/*if (HP <= 0){
			Destroy (gameObject);
		}*/
	}


}
