using UnityEngine;
using System.Collections;

public class Level3Switch : MonoBehaviour {

	// Use this for initialization
	void Start () {
		transform.position = new Vector3(3f, 2f, 3f); // places the portal in the scene
		transform.localScale = new Vector3(2.0F, 3.0F, 0.2F); // resizing the portal
		this.gameObject.renderer.material.color = new Color(2f, 2f, 213f); // assigning a color to the portal
		
	}
	
	// Update is called once per frame
	void Update () {
		transform.Rotate(Vector3.up * Time.deltaTime * 100); // making the portal rotate 
		
	}
	
	void OnCollisionEnter(Collision other){
		if (other.gameObject.name == "Lars") { // cheking if lars is touching the portal
			Destroy (gameObject);
			Application.LoadLevel ("Level_4"); // loading the next level
		}
	}
}
