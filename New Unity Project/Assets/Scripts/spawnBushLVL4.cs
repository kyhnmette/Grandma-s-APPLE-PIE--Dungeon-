﻿using UnityEngine;
using System.Collections;

public class spawnBushLVL4 : MonoBehaviour {
	
	public GameObject DaBushDOWN;
	//public GameObject DaBushUP;
	//public GameObject TheLarch;
	public GameObject appleseed;
	public GameObject Heart;
	
	//-------------------Appleseeds LVL BOSS-------------------
	
	private float[] SEEDposX = {8.0f, 11.0f, 3.0f, 7.0f, 17.0f};
	private float[] SEEDposZ = {12.0f, 5.0f, 7.0f, 3.0f, 7.0f};
	
	//--
	
	private float[] HeartposX = {18.0f, 18.0f, 3.0f, 3.0f, 18.0f};
	private float[] HeartposZ = {18.0f, 2.0f, 18.0f, 9.0f, 9.0f};
	
	//-------------------------LVLBOSS-------------------------
	
	// The list of bushes (Horizontal)
	private float[] DOWNposX = {3.5f,9.5f,15.5f, 3.5f, 9.5f,15.5f};
	private float[] DOWNposZ = {4.0f,2.5f, 4.0f, 11.5f,13.0f,11.5f};
	
	// The list of bushes (Vertical)
	//private float[] UPposX = { 3.5f,12.5f,12.5f};
	//private float[] UPposZ = {11.5f,11.5f,15.5f};
	
	//-------------------------LVLBOSS-------------------------
	
	// Use this for initialization
	void Start () {
		
		for (int i = 0; i < DOWNposX.Length; i++) {
			GameObject.Instantiate(DaBushDOWN, new Vector3(DOWNposX[i],1.0f,DOWNposZ[i]), transform.rotation);
		}
		
	//	for (int i = 0; i < UPposX.Length; i++) {
	//		GameObject.Instantiate(DaBushUP, new Vector3(UPposX[i],1.0f,UPposZ[i]), transform.rotation);
			
	//		TheLarch.gameObject.transform.position = new Vector3(1.5f, 2f, 1.5f);
	//	}
		for (int i = 0; i < SEEDposX.Length; i++) {
			GameObject.Instantiate(appleseed, new Vector3(SEEDposX[i],1.0f,SEEDposZ[i]), transform.rotation);
		}
		for (int i = 0; i < HeartposX.Length; i++) {
			GameObject.Instantiate(Heart, new Vector3(HeartposX[i],1.0f,HeartposZ[i]), transform.rotation);	
		}
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
