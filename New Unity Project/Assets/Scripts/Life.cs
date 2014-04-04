using UnityEngine;
using System.Collections;

public class Life : MonoBehaviour {
	
	protected static short HP;
	protected short ATK;
	protected float Speed;

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
