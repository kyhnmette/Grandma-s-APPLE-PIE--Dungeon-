using UnityEngine;
using System.Collections;

public class BallOfFire : MonoBehaviour {
	
	private bool isHit {get; set;}
	private short BallDmg = 40;
	private int Frames = 0;
		
	public Transform TheBall;

	// Use this for initialization
	void Start () {
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
		Instantiate (TheBall, transform.position, Quaternion.identity);
		Destroy (gameObject);
	}
}
