using UnityEngine;
using System.Collections;

public class tree : Life {

	public GameObject treeRoot;
	public GameObject lars;
	public float valueX;
	public float valueZ;
	public Vector3 larsOldPos;
	public bool larsCol = false;
	//public bool coHappen = false;


	// Use this for initialization
	void Start () {

		// code to put the tree object into the scene needs to be done

		life.HP = 200; // (temp number) need to set the different numbers
		life.ATK = 40; //

		lars = GameObject.Find("Lars");
	}
	
	// Update is called once per frame
	 void Update () {
		valueX = lars.position.x -= tree.position.x; // x-axis distance from the tree and lars 
		valueZ = lars.position.z -= tree.position.z; // z-axis distance from the tree and lars

		if (valueX < 0 && valueX > 1 && valueZ < 0 && valueZ > 1) {
			// attack
			larsOldPos = lars.transform.position;
			Invoke ("damageFunction", 2);				
		} 
		if (valueX < 1 && valueX > 2 && valueZ < 1 && valueZ > 2) {
			// attack 
			larsOldPos = lars.transform.position;
			Invoke ("damageFunction", 3);				
		} 
		if (valueX < 2 && valueX > 3 && valueZ < 2 && valueZ > 3) {
			// attack 
			larsOldPos = lars.transform.position;
			Invoke ("damageFunction", 4);				
		} 
		if (valueX < 5 && valueX > 3 && valueZ < 5 && valueZ > 3) {
			// attack 
			larsOldPos = lars.transform.position;
			Invoke ("damageFunction", 5);
		} 
		if (valueX < 5 && valueX > 6 && valueZ < 5 && valueZ > 6) {
			// attack 
			larsOldPos = lars.transform.position;
			Invoke ("damageFunction", 6);
		}
		
		if (HP <= 0){
			Destroy(gameObject);
		}
	} 

	public void damageFunction () {
		Instantiate (treeRoot, larsOldPos);
	}

	void OnCollisionEnter(Collision other) {
		if (other.gameObject.name == "BallOfFire(Clone)"){ 
			GetHit (BallOfFire.GetBallDmg ());  
		}

	}

	
}