using UnityEngine;
using System.Collections;

public class Hearts : Items {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		transform.Rotate(Vector3.up * Time.deltaTime * 100); // making the hearts rotate 
	}
}
