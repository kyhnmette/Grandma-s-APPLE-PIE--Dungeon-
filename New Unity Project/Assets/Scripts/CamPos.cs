﻿using UnityEngine;
using System.Collections;

public class CamPos : MonoBehaviour {

	// Use this for initialization
	void Start () {
		
		transform.position = new Vector3(10.5f, 18f, 10f);
		transform.eulerAngles = new Vector3(90f, 0, 0);
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
