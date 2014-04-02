using UnityEngine;
using System.Collections;

public class Lars : Life {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
		if (Input.GetKeyDown (KeyCode.A)){
			transform.position += new Vector3(-1.0f, 0, 0);	//x position, movin left
		}
		if (Input.GetKeyDown (KeyCode.D)){
			transform.position += new Vector3(1.0f, 0, 0); //x position moving right
		}
		if (Input.GetKeyDown (KeyCode.W)){
			transform.position += new Vector3(0, 0, 1f); //z position moving forwards	
		}
		if (Input.GetKeyDown (KeyCode.S)){
			transform.position += new Vector3(0, 0, -1f); //z position movin back
		}
		
		
	}
}
