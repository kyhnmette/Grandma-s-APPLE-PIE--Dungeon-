using UnityEngine;
using System.Collections;

public class RotatObject : MonoBehaviour {
	
	float rotSpeed = 150.0f;
	
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		transform.Rotate(new Vector3(0, rotSpeed, 0) * Time.deltaTime);
	}
} //keeps telling that compiler is not finished.