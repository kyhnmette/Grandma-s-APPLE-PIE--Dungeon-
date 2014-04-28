using UnityEngine;
using System.Collections;

public class Items : MonoBehaviour {
	
	private float rotSpeed = 150.0f;
	public Transform pickUp;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		transform.Rotate(new Vector3(0, rotSpeed, 0) * Time.deltaTime); // making the items rotate 
	}
	
	void OnCollisionEnter(Collision other){
		if(other.gameObject.name == "Lars"){ // if lars is touching a item he will be able to pick it up
			Instantiate(pickUp, transform.position, Quaternion.identity);
			Destroy(gameObject);
		}
	}
}