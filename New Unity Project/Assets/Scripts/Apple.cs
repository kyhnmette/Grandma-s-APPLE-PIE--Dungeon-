using UnityEngine;
using System.Collections;

public class Apple : Life {
	
	private float DistanceX;
	private float DistanceZ;
	private bool InRange;

	
	public Transform Larch; //put Lars here
	
	// Use this for initialization
	void Start () {
		// Everything in here will not run upon start on each apple! Look at the AppleScriptStart function below!
	}
	
	// Update is called once per frame
	void Update () {
		// Everything in here will not update on each apple! Look at the AppleScriptUpdate function below!	
	}


	//This is the default Start() script - !!!
	public void AppleScriptStart () {
		Speed = 1.3f;
	}
	//This is the default Update() script - !!!
	public void AppleScriptUpdate () {

		//Look at lars
		this.transform.LookAt(GameObject.Find("Lars").transform); // the apples will always look at lars 


		if (GUIScript.GetGameOn() == true){
			DistanceX = Mathf.Abs (transform.position.x) - Mathf.Abs(Lars.GetLarsX());	// Calculates the distance on the x-axies of Lars and the apple by using the abselute value
			DistanceZ = Mathf.Abs (transform.position.z) - Mathf.Abs(Lars.GetLarsZ());	// Calculates the distance on the z-axies of Lars and the apple by using the abselute value
			
			// A range detector had to be made or the apples would always move
			if (Mathf.Abs(DistanceX - DistanceZ) <= 5.0f)	// If the abselute value of the sum of Distance X and Z is smaller then 5 then:
				InRange = true;								// Lars is close enough and the apple should move towards him
			else InRange = false;							// Lars is too far away and the apple shall stand still.
			
			if (InRange == true){
				if (DistanceX <= 5.0f && DistanceX >= 0.0f){		// If Lars is standing far enough to the left then:
					transform.position += new Vector3(-Speed, 0, 0) * Time.deltaTime;	// Move the apple towards the left
				}
				else if (DistanceX <= 0.0f && DistanceX >= -5.0f){	// If Lars is standing far enough to the right then:
					transform.position += new Vector3(Speed, 0, 0) * Time.deltaTime;	// Move the apple towards the right
				}
				
				if (DistanceZ <= 5.0f && DistanceZ >= 0.0f){		// If Lars is standing far enough to the up then:
					transform.position += new Vector3(0, 0, -Speed) * Time.deltaTime;	// Move the apple towards the up
				}
				else if (DistanceZ <= 0.0f && DistanceZ >= -5.0f){	// If Lars is standing far enough to the down then:
					transform.position += new Vector3(0, 0, Speed) * Time.deltaTime;	// Move the apple towards the down
				}
			}
		}
	}
	
	void OnCollisionEnter (Collision other) {
		if (other.gameObject.name == "BallOfFire(Clone)"){
			GetHit(BallOfFire.GetBallDmg ());	// When the Ball of Fire hits an apple it will get hit with the ball's damage
			print (AppleGREEN.GetHP() + " " + AppleRed.GetHP() + " " + AppleYELLOW.GetHP() + " " + Lars.GetHeroHP());
		}
		
		if (other.gameObject.name == "Lars"){
			for (float i = 0f; i < 5f; i += 0.1f){	//making the Apple jump y=5 up sort of slowly when touched by lars, giving him time to get away
				transform.position += new Vector3(0, i, 0)*Time.deltaTime;
			}
		}
	}


}
