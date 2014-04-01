using UnityEngine;
using System.Collections;

public class Items : MonoBehaviour {
	
	// Shall the items even contain any atributes??
	
	public Transform pickUp;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
	
	void OnCollisionEnter(Collision other){
		if(other.gameObject.name == "Lars"){
			Instantiate(pickUp, transform.position, Quaternion.identity);
			Destroy(gameObject);
		}
	}
}


/*Lars pre-code:
void OnCollisionEnter(Collision other){
	if(other.gameObject.name == "Hearts" && HP <= 100){ // Taken that his max HP is 100
		HP =+ 1; // or how much we want the health to increase
	}
	if(other.gameObject.name == "AppleSeeds"){
		NumOfSeeds++;
	}
	if(other.gameObject.name == "PowerUp"){
		ATK =* 2;
		PowerUpIsActive = true; // should then start a timer of how long the power up shall be active
	}
}*/