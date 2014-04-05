using UnityEngine;
using System.Collections;

public class Lars : Life {
	
	private short BallCoolDown = 48;
	private bool BallIsReady = true;
	private short Points;
	private int MaxHP;
	
	private static float LarsX;
	private static float LarsY;
	private static float LarsZ;
	
	public GameObject Spawn;
	
	public static float GetLarsX () {
		return LarsX;
	}
	
	public static float GetLarsY () {
		return LarsY;
	}
	
	public static float GetLarsZ () {
		return LarsZ;
	}
	
	// Use this for initialization
	public override void Start () {
		HP = 100;
		MaxHP = 150;
		Points = 0;
		
	}
	
	// Update is called once per frame
	void Update () { 
		if (GUI.GetGameOn() == true){
			LarsX = transform.position.x;	// Gets Larses current X coordinates
			LarsY = transform.position.y;	// Gets Larses current Y coordinates
			LarsZ = transform.position.z;	// Gets Larses current Z coordinate
			
			if (Input.GetKey(KeyCode.A)){
				transform.position += new Vector3(-3.0f, 0, 0)* Time.deltaTime;	//x position, movin left
				transform.eulerAngles = new Vector3(0, 270, 0);
			}
			if (Input.GetKey(KeyCode.D)){
				transform.position += new Vector3(3.0f, 0, 0)* Time.deltaTime; //x position moving right
				transform.eulerAngles = new Vector3(0, 90, 0);
			}
			if (Input.GetKey(KeyCode.W)){
				transform.position += new Vector3(0, 0, 3f)* Time.deltaTime; //z position moving forwards
				transform.eulerAngles = new Vector3(0, 0, 0);
			}
			if (Input.GetKey(KeyCode.S)){
				transform.position += new Vector3(0, 0, -3f)* Time.deltaTime; //z position movin back
				transform.eulerAngles = new Vector3(0, 180, 0);
			}
			if (Input.GetKeyDown (KeyCode.Space) && BallIsReady == true){
				Instantiate (Spawn, transform.position + transform.forward, Quaternion.identity);
				BallIsReady = false;
			}
		
			if (BallIsReady == false){
				BallCoolDown--; //* Time.deltatime???
			
				if (BallCoolDown == 0){
					BallIsReady = true;
					BallCoolDown = 48;
				}
				
			}
		
			if (HP > MaxHP)
			{
				HP = MaxHP;
			}
		}
	}
	
	void OnCollisionEnter(Collision other){
		if(other.gameObject.name == "HeartHP(Clone)"){
			HP += 5;
		}
		if(other.gameObject.name == "appleseed(Clone)"){
			Points += 1;
		}
		if(other.gameObject.name == "GreenAPPLE(Clone)"){
			HP = HP - AppleGREEN.GetATK ();
			print (AppleGREEN.GetHP() + " " + AppleRed.GetHP() + " " + AppleYELLOW.GetHP() + " " + Lars.GetHP());
		}
		if(other.gameObject.name == "YellowAPPLE(Clone)"){
			HP -= AppleYELLOW.GetATK ();
			print (AppleGREEN.GetHP() + " " + AppleRed.GetHP() + " " + AppleYELLOW.GetHP() + " " + Lars.GetHP());
		}
		if(other.gameObject.name == "RedAPPLE(Clone)"){
			HP -= AppleRed.GetATK ();
			print (AppleGREEN.GetHP() + " " + AppleRed.GetHP() + " " + AppleYELLOW.GetHP() + " " + Lars.GetHP());
		}
		if(other.gameObject.name == "Branch(Clone)"){
			HP -= TreeRoot.GetATK ();
			print (AppleGREEN.GetHP() + " " + AppleRed.GetHP() + " " + AppleYELLOW.GetHP() + " " + Lars.GetHP());
		}
		if(other.gameObject.name == "Tree(Clone)"){
			HP = 0;
		}
	}
}
