using UnityEngine;
using System.Collections;

public class Lars : Life {
	
	private short BallCoolDown = 48;
	private bool BallIsReady = true;
	private short Points;
	private short MaxHP;
	
	public GameObject Spawn;

	// Use this for initialization
	void Start () {
	
		HP = 5;
		MaxHP = 5;
		
	}
	
	// Update is called once per frame
	void Update () {
	
		if (Input.GetKeyDown (KeyCode.A)){
			transform.position += new Vector3(-1.0f, 0, 0);	//x position, movin left
			transform.eulerAngles = new Vector3(0, 270, 0);
		}
		if (Input.GetKeyDown (KeyCode.D)){
			transform.position += new Vector3(1.0f, 0, 0); //x position moving right
			transform.eulerAngles = new Vector3(0, 90, 0);
		}
		if (Input.GetKeyDown (KeyCode.W)){
			transform.position += new Vector3(0, 0, 1f); //z position moving forwards
			transform.eulerAngles = new Vector3(0, 0, 0);
		}
		if (Input.GetKeyDown (KeyCode.S)){
			transform.position += new Vector3(0, 0, -1f); //z position movin back
			transform.eulerAngles = new Vector3(0, 180, 0);
		}
		if (Input.GetKeyDown (KeyCode.Space) && BallIsReady == true){
			Instantiate (Spawn, transform.position + transform.forward, Quaternion.identity);
			BallIsReady = false;
		}
		
		if (BallIsReady == false){
			BallCoolDown--;
			
			if (BallCoolDown == 0){
				BallIsReady = true;
				BallCoolDown = 48;
			}
				
		}
		
		if (HP > MaxHP)
			HP = MaxHP;
	}
	
		void OnCollisionEnter(Collision other){
		if(other.gameObject.name == "HeartHP(Clone)"){
			HP += 5;
		}
		if(other.gameObject.name == "appleseed(Clone)"){
			Points += 1;
		}
		if(other.gameObject.name == "GreenAPPLE(Clone)"){
			//HP -
		}
		if(other.gameObject.name == "YellowAPPLE(Clone)"){
			//HP -
		}
		if(other.gameObject.name == "RedAPPLE(Clone)"){
			//HP -
		}
		if(other.gameObject.name == "Branch(Clone)"){
			//HP -
		}
		if(other.gameObject.name == "Tree(Clone)"){
			//HP -
		}
	}
}
