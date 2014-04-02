using UnityEngine;
using System.Collections;

public class BallOfFire : MonoBehaviour {
	
	private bool isHit {get; set;}
	private short BallDmg {get; set;}
	private int Frames = 0;
		
	public Transform Sparkle;
	
	public static short GetBallDmg () {
		return BallDmg;
	}

	// Use this for initialization
	void Start () {
		BallDmg = 40;
		rigidbody.velocity = transform.forward * 10.0f;
	}
	
	// Update is called once per frame
	void Update () {	
		Frames++;
		if (Frames == 6){
			Frames = 0;
			BallDmg--;
		}
	}
	
	void OnCollisionEnter (Collision other) {
		Instantiate (Sparkle, transform.position, Quaternion.identity);
		Destroy (gameObject);
	}
}
