using UnityEngine;
using System.Collections;

public class tree : Life {

	public GameObject treeRoot;
	public GameObject lars;
	public float valueX;
	public float valueY;
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
		valueY = lars.position.y -= tree.position.y; // y-axis distance from the tree and lars

		if (valueX < 0 && valueX > 1 && valueY < 0 && valueY > 1) {
			// attack 
			larsOldPos = lars.transform.position;
			Invoke ("damageFunction", 2);				
			//if (coHappen = true) {
				lars.life.HP - 50; // kind of bool missing, need to check if the collission is happening 
			//}
		} 

		if (valueX < 1 && valueX > 2 && valueY < 1 && valueY > 2) {
			// attack 
			larsOldPos = lars.transform.position;
			Invoke ("damageFunction", 3);				

			lars.life.HP - 40;
		} 
		{	if (valueX < 2 && valueX > 3 && valueY < 2 && valueY > 3) {
			// attack 
			larsOldPos = lars.transform.position;
			Invoke ("damageFunction", 4);				
			lars.life.HP - 30;

		} 

		if (valueX < 5 && valueX > 3 && valueY < 5 && valueY > 3) {
			// attack 
			larsOldPos = lars.transform.position;
			Invoke ("damageFunction", 5);
				lars.life.HP - 20;

		} 
		if (valueX < 5 && valueX > 6 && valueY < 5 && valueY > 6) {
			// attack 
			larsOldPos = lars.transform.position;
			Invoke ("damageFunction", 6);
				lars.life.HP - 10;
			}
		} 

	void damageFunction ()
	{
		Instantiate (treeRoot, larsOldPos);

	}




	 



	void OnCollisionEnter(Collision other) {
			if (other.gameObject.name == "larsBall"){ // doesn't know the rigth name yet 
				HP =- 20; // doesn't know what lars ATK will be 
			}
			if (HP <= 0){
				Destroy(gameObject);
			}


	}

	
}

