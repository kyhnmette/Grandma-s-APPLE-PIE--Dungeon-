using UnityEngine;
using System.Collections;

public class CamPos : MonoBehaviour {

	// Use this for initialization
	void Start () {
		
		transform.position = new Vector3(10.5f, 14f, 0f); // setting the cameras position
		transform.eulerAngles = new Vector3(60f, 0, 0); // setting the angle of the view of the camera
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
