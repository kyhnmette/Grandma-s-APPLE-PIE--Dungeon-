using UnityEngine;
using System.Collections;

class AppleYELLOW : Apple {

	public GameObject nextLevel2;

	public static int GetATK() {
		return ATK;
	}

	// Use this for initialization
	public override void Start () {
		base.Start();
		AppleScriptStart ();
		ATK = 15;
		HP = 35;
		Speed = Speed * 1.7f;
	}
	
	// Update is called once per frame
	void Update () {
		AppleScriptUpdate ();
		if (HP <= 0){
			Destroy (gameObject);
			GameObject.Instantiate(nextLevel2, new Vector3(2f,1f,2f), transform.rotation);
		}
	}
}
