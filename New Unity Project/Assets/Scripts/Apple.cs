using UnityEngine;
using System.Collections;

public class Apple : Life {
	
	private short Frames = 0;	// Sets a number of frames to make a timer
	
	public Transform Larch; //put Lars here
	public GameObject EvilApple; //The apple carrying the script must be assigned to this place.
	
	// Use this for initialization
	void Start () {
		
		Speed = 1;
		
	}
	
	// Update is called once per frame
	void Update () {
		
		if (GUI.GetGameOn() == true){
			Frames++;			// Counts the timer up
			if (Frames == 24){	// the timer there runs each secound
				Frames = 0;		// Resets the timer
			}
		}
		if (Vector3.Distance(transform.position,Larch.position)>30.0f)
		{
			print ("hi" + Vector3.Distance(transform.position,Larch.position));
			transform.LookAt(Larch);
			transform.Translate(Vector3.forward * Time.deltaTime);
		}
		float pos = Vector3.Distance(transform.position,Larch.position);
		print (pos);
	}
	
	void OnCollisionEnter (Collision other) {
		if (other.gameObject.name == "BallOfFire(Clone)")
		{
			GetHit(BallOfFire.GetBallDmg ());	// When the Ball of Fire hits an apple it will get hit with the ball's damage
		}
		if (other.gameObject.name == "Lars")
		{
			print ("hi");
			for (float i = 0f; i < 5f; i += 0.1f)//making the Apple jump y=5 up sort of slowly when touched by lars, giving him time to get away
			{
				EvilApple.gameObject.transform.position += new Vector3(0, i, 0)*Time.deltaTime;
			}
		}
	}
}
