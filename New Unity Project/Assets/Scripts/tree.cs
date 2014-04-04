using UnityEngine;
using System.Collections;

public class tree : Life {

	private float valueX;
	private float valueZ;
	private float LarsOldX;
	private float LarsOldY;
	private float LarsOldZ;
	
	//private bool larsCol = false;
	//private bool coHappen = false;
	
	public GameObject treeRoot;

	// Use this for initialization
	void Start () {

		// code to put the tree object into the scene needs to be done

		HP = 200; // (temp number) need to set the different numbers
		ATK = 40; //
	}
	
	// Update is called once per frame
	 void Update () {
		valueX = Lars.GetLarsX() - transform.position.x; // x-axis distance from the tree and lars 
		valueZ = Lars.GetLarsZ() - transform.position.z; // z-axis distance from the tree and lars

		if (valueX < 0.0f && valueX > 1.0f && valueZ < 0.0f && valueZ > 1.0f) {
			// attack
			LarsOldX = Lars.GetLarsX();
			LarsOldY = Lars.GetLarsY();
			LarsOldZ = Lars.GetLarsZ();
			Invoke ("damageFunction", 2);				
		} 
		if (valueX < 1.0f && valueX > 2.0f && valueZ < 1.0f && valueZ > 2.0f) {
			// attack 
			LarsOldX = Lars.GetLarsX();
			LarsOldY = Lars.GetLarsY();
			LarsOldZ = Lars.GetLarsZ();
			Invoke ("damageFunction", 3);				
		} 
		if (valueX < 2.0f && valueX > 3.0f && valueZ < 2.0f && valueZ > 3.0f) {
			// attack 
			LarsOldX = Lars.GetLarsX();
			LarsOldY = Lars.GetLarsY();
			LarsOldZ = Lars.GetLarsZ();
			Invoke ("damageFunction", 4);				
		} 
		if (valueX < 5.0f && valueX > 3.0f && valueZ < 5.0f && valueZ > 3.0f) {
			// attack 
			LarsOldX = Lars.GetLarsX();
			LarsOldY = Lars.GetLarsY();
			LarsOldZ = Lars.GetLarsZ();
			Invoke ("damageFunction", 5);
		} 
		if (valueX < 5.0f && valueX > 6.0f && valueZ < 5.0f && valueZ > 6.0f) {
			// attack 
			LarsOldX = Lars.GetLarsX();
			LarsOldY = Lars.GetLarsY();
			LarsOldZ = Lars.GetLarsZ();
			Invoke ("damageFunction", 6);
		}
		
		if (HP <= 0){
			Destroy(gameObject);
		}
	} 

	public void damageFunction () {
		Instantiate (treeRoot, new Vector3 (LarsOldX,LarsOldY,LarsOldZ), transform.rotation);
	}

	void OnCollisionEnter(Collision other) {
		if (other.gameObject.name == "BallOfFire(Clone)"){ 
			GetHit (BallOfFire.GetBallDmg ());  
		}

	}

	
}