/*using UnityEngine;
using System.Collections;

public class tree : Life {

	// Use this for initialization
	void Start () {

		// code to put the tree object into the scene needs to be done

		HP = 200; // (temp number) need to set the different numbers
		ATK = 40; //
	}
	
	// Update is called once per frame
	void Update () {
		int tree.transform.position.x = ?; // this position stays the same, the tree does not move
		int tree.transform.position.y = ?;
		int tree.transform.position.z = ?;
		int lars.transform.postition.x = ?; //should be Larses current position
		int lars.transform.postition.y = ?;
		int lars.transform.postition.z = ?;

		int distance = tree.transform.position - lars.transform.position; // better methods should be found

		if (distance >= 6){
			// tree animation play;
		switch (distance) {
		case 1:

			break;
		case 2:

			break;
		case 3:

			break;
		case 4:

			break;
		case 5:

			break;

		default:
			break;
		}
		}


		// timer script 


		void OnCollisionEnter(Collision other) {
			if (other.gameObject.name == "larsBall"){ // doesn't know the rigth name yet 
				HP =- 20; // doesn't know what lars ATK will be 
			}
			if (HP <= 0){
				Destroy(gameObject);
			}

	}
}*/
