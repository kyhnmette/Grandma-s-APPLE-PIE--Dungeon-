using UnityEngine;
using System.Collections;

public class Apple : Life {
	
	private short Frames = 0;	// Sets a number of frames to make a timer
	
	//There might be an easier way to make the apple aproach Lars and calculate the proximate distance between them,
	//but for now, this will suffice.
	
	float LarsValuex; //assigning two floats to contain the x and z value of Lars
	float LarsValuez;
	
	float EvilAppleValuex; //assigning two floats to contain the x and z value of an Apple enemy
	float EvilAppleValuez;
	
	float mymyX; //the containers of what is left when the two positions x and z values are subtracted
	float mymyZ;
	
	public GameObject Larch; // Two set of coordinates are used, hence two gameobjects is assignet to the script
	public GameObject EvilApple; //The apple carrying the script must be assigned to this place.
	
	bool stopAppleFromMoving;
	
	// Use this for initialization
	void Start () {
		stopAppleFromMoving = false;
		
	}
	
	// Update is called once per frame
	void Update () {
		Frames++;			// Counts the timer up
		if (Frames == 24){	// the timer there runs each secound
			Frames = 0;		// Resets the timer
			
		LarsValuex = Larch.gameObject.transform.position.x;
		LarsValuez = Larch.gameObject.transform.position.z;
		
		EvilAppleValuex = EvilApple.gameObject.transform.position.x;
		EvilAppleValuez = EvilApple.gameObject.transform.position.z;
		
		if (LarsValuex >= EvilAppleValuex) //is statements looking for the highest value to be sutracted by the lowest
			{
				mymyX = LarsValuex - EvilAppleValuex;
			}
		if (LarsValuex < EvilAppleValuex)
			{
				mymyX = EvilAppleValuex - LarsValuex;
			}
		if (LarsValuez >= EvilAppleValuez)
			{
				mymyZ = LarsValuez - EvilAppleValuez;
			}
		if (LarsValuez < EvilAppleValuez)
			{
				mymyZ = EvilAppleValuez - LarsValuez;
			}
		if (EvilApple.gameObject.transform.position.y >= 0.33f) //if apple jumps in the air by touching Lars, it will stop moving after him as long as it is in the air.
			{
				stopAppleFromMoving = true;
			}
		if (EvilApple.gameObject.transform.position.y < 0.33f) //if apple jumps in the air by touching Lars, it will stop moving after him as long as it is in the air.
			{
				stopAppleFromMoving = false;
			}
		
		if (mymyX <=4 && mymyZ <=4 && stopAppleFromMoving == false) //checking if the distance between the apple and Lars is lower than four in x,z direction
			{
				float i = Larch.gameObject.transform.position.x; //walking speed towards Lars, this code does not work yet.
				float j = Larch.gameObject.transform.position.z;
				EvilApple.gameObject.transform.position += new Vector3(i, 0, j) * Time.deltaTime;
			}
		}
	}
	void OnCollisionEnter (Collision other) {
		/*if (other.gameObject.name == "BallOfFire(Clone)")
		{
			GetHit(BallOfFire.GetBallDmg ());	// When the Ball of Fire hits an apple will it get hit with the ball's damage
		}*/
			if (other.gameObject.name == "Lars")
		{
			for (float i = 0f; i < 5f; i += 0.1f)//making the Apple jump y=5 up slowly when touched by lars.
			{
				EvilApple.gameObject.transform.position += new Vector3(0, i, 0) * Time.deltaTime;
			}
		}
	}
}
