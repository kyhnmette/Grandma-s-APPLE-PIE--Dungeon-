using UnityEngine;
using System.Collections;

public class SimpleMove1 : MonoBehaviour { //script for moving cam when testing

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		
		if (Input.GetKeyDown (KeyCode.LeftArrow)){
			transform.position += new Vector3(-1.0f, 0, 0);	//x position, movin left
		}
		if (Input.GetKeyDown (KeyCode.RightArrow)){
			transform.position += new Vector3(1.0f, 0, 0); //x position moving right
		}
		if (Input.GetKeyDown (KeyCode.UpArrow)){
			transform.position += new Vector3(0, 0, 1f); //z position moving forwards	
		}
		if (Input.GetKeyDown (KeyCode.DownArrow)){
			transform.position += new Vector3(0, 0, -1f); //z position movin back
		}
		if (Input.GetKeyDown (KeyCode.Z)){
			transform.position += new Vector3(0, 1f, 0);	//y position up
		}
		if (Input.GetKeyDown (KeyCode.X)){
			transform.position += new Vector3(0, -1f, 0); //y position down
		}
	
	}
}
