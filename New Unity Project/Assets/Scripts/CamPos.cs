using UnityEngine;
using System.Collections;

public class CamPos : MonoBehaviour {

	// Use this for initialization
	void Start () {
		
		transform.position = new Vector3(10.5f, 15f, 0);
		transform.eulerAngles = new Vector3(60f, 0, 0);
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
