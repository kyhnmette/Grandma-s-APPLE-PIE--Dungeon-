using UnityEngine;
using System.Collections;

public class AppleRed : Apple {

	public GameObject nextLevel3;

	public static int GetATK() {
		return ATK;
	}

	// Use this for initialization
	public override void Start () {
		base.Start();
		AppleScriptStart ();
		ATK = 15;
		HP = 50;
	}
	
	// Update is called once per frame
	void Update () {
		AppleScriptUpdate ();
		
		if (HP <= 0){
			Destroy (gameObject);
			GameObject.Instantiate(nextLevel3, new Vector3(2f,1f,2f), transform.rotation);
		}
	}
}

