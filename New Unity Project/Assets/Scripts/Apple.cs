using UnityEngine;
using System.Collections;

public class Apple : Life {
	
	private short Frames = 0;	// Sets a number of frames to make a timer
	
	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		Frames++;			// Counts the timer up
		if (Frames == 24){	// the timer there runs each secound
			Frames = 0;		// Resets the timer
			
			// Insert here how the apple shall move towards Lars
		}
	}
	
	void OnCollisionEnter (Collision other) {
		if (other.gameObject.name == "BallOfFire")
			GetHit(BallOfFire.GetBallDmg ());	// When the Ball of Fire hits an apple will it get hit with the ball's damage
	}
}
