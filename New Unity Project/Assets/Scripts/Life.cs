using UnityEngine;
using System.Collections;

public class Life : MonoBehaviour {
	
	protected short HP {get; set;}
	protected short ATK {get; set;}
	protected short Speed {get; set;}

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		if (HP <= 0)
			Destroy(gameObject);
	}
	
	public void GetHit (short DmgTaken) {
		HP -= DmgTaken;
	}
}
