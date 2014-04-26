using UnityEngine;
using System.Collections;

public class Level2Switch : MonoBehaviour {

	// Use this for initialization
	void Start () {
		transform.position = new Vector3(3f, 2f, 3f);
		transform.localScale = new Vector3(2.0F, 3.0F, 0.2F);
		this.gameObject.renderer.material.color = new Color(2f, 2f, 213f);
		
	}
	
	// Update is called once per frame
	void Update () {
		transform.Rotate(Vector3.up * Time.deltaTime * 100);
		
	}
	
	void OnCollisionEnter(Collision other){
		if (other.gameObject.name == "Lars") {
			Destroy (gameObject);
			Application.LoadLevel ("Level3");
		}
	}

}

