using UnityEngine;
using System.Collections;

public class Health : MonoBehaviour {
	
	float DistanceX;
	float DistanceZ;



	// Use this for initialization
	void Start () {
	
		DontDestroyOnLoad (transform.gameObject); // the health bar will not be destoyed when loading the next level
		this.gameObject.renderer.material.color = new Color(255f, 0f, 0f); // assigning the color red to the health bar
	
	}
	
	// Update is called once per frame
	void Update () {

		if (Lars.GetHeroHP() <= 0) { // if lars's has no more HP the health will be destroyed 
			Destroy (gameObject);
		}
		DistanceX = Lars.GetLarsX(); 
		DistanceZ = Lars.GetLarsZ();

		transform.position = new Vector3(DistanceX, 3f, DistanceZ); // the heath bar is following lars 
		transform.localScale = new Vector3(Lars.GetHeroHP()/60F, 0.2F, 0.2F); // the health bar is scaled on the x axis according to lars's HP


	}
	
}
