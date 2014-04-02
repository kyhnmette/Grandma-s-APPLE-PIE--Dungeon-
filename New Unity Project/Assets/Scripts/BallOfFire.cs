using UnityEngine;
using System.Collections;

public class BallOfFire : MonoBehaviour {
	
	private float BallSpeed = 5.0f;
	private short BallDmg {get; set;}
	private int Frames = 0;
		
	public Transform Sparkle;
	
	/*public static short GetBallDmg () {
		return BallDmg;
	}*/

	// Use this for initialization
	void Start () {
		BallDmg = 20;
		rigidbody.velocity = transform.forward * BallSpeed;
	}
	
	// Update is called once per frame
	void Update () {	
		Frames++;
		if (Frames == 6 && BallDmg > 0){
			Frames = 0;
			BallDmg--;
		}
	}
	
	void OnCollisionEnter (Collision other) {
		//Instantiate (Sparkle, transform.position, Quaternion.identity);
		Destroy (gameObject);
	}
}
