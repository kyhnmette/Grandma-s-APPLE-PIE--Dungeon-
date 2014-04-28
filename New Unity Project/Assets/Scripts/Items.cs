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
		transform.Rotate(new Vector3(0, rotSpeed, 0) * Time.deltaTime);
	}
	
	void OnCollisionEnter(Collision other){
		if(other.gameObject.name == "Lars"){
			Instantiate(pickUp, transform.position, Quaternion.identity);
			Destroy(gameObject);
		}
	}
}