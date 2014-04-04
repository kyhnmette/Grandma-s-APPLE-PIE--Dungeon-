using UnityEngine;
using System.Collections;

public class BallOfFire : MonoBehaviour {
	
	private float BallSpeed = 300.0f;
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
		BallDmg = 20;
		rigidbody.velocity = lars.transform.forward * BallSpeed * Time.deltaTime;
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
