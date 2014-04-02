/*using UnityEngine;
using System.Collections;

public class tree : Life {

	// Use this for initialization
	void Start () {

		// code to put the tree object into the scene needs to be done
		public float valueX;
		public float valueY;

		HP = 200; // (temp number) need to set the different numbers
		ATK = 40; //
	}
	
	// Update is called once per frame
	 void Update () {
		valueX = lars.position.x -= tree.position.x;
		valueY = lars.position.y -= tree.position.y;

		if (valueX < 0 && valueX > 1 && valueY < 0 && valueY > 1) {
			// attack 
			// damadge 100%
		} 

		if (valueX < 1 && valueX > 2 && valueY < 1 && valueY > 2) {
			// attack 
			// damadge 80%
		} 
		if (valueX < 2 && valueX > 3 && valueY < 2 && valueY > 3) {
			// attack 
			// damadge 60%
		} 

		if (valueX < 5 && valueX > 3 && valueY < 5 && valueY > 3) {
			// attack 
			// damadge 40%
		} 
		if (valueX < 5 && valueX > 6 && valueY < 5 && valueY > 6) {
			// attack 
			// damadge 20%
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
}
*/
