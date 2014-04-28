using UnityEngine;
using System.Collections;

public class BallOfFire : MonoBehaviour {
	
	private float BallSpeed;
	private static short BallDmg;
	private int Frames = 0;

	private GameObject lars;
		
	public Transform Sparkle;
	
	public static short GetBallDmg () {
		return BallDmg;
	}

	// Use this for initialization
	void Start () {
		lars = GameObject.Find ("Lars");
		BallSpeed = 300.0f;
		BallDmg = 20;
		rigidbody.velocity = lars.transform.forward * BallSpeed * Time.deltaTime;	// The ball spawns with a velocity in front of Lars and goes forward of his position
	}
	
	// Update is called once per frame
	void Update () {
		// The balls shall do less damage as more they travel, so for each 6 frames after a ball is spawned will it do 1 less in damage
		Frames++;
		if (Frames == 6 && BallDmg > 0){
			Frames = 0;
			BallDmg--;
		}
	}
	
	void OnCollisionEnter (Collision other) {
		//Instantiate (Sparkle, transform.position, Quaternion.identity);
		Destroy (gameObject);	// When the ball hits something then shall it be destroyed
	}
}
