using UnityEngine;
using System.Collections;

 class Lars : Life {
	
	public GameObject healthBar;
	
	private short BallCoolDown = 48;
	private bool BallIsReady = true;
	private static short Points;
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

	public static int GetHeroHP () {
		return HeroHP;
	}
	
	public static short GetPoints () {
		return Points;
	}
	
	// Use this for initialization
	public override void Start () {
		base.Start();
		MaxHP = 70;
		Points = 0;
		HeroHP = 70;
		
		GameObject.Instantiate(healthBar, new Vector3(0f,3f,0f), transform.rotation);
	
		DontDestroyOnLoad (transform.gameObject); //makes sure that the Hero does not get destroyed and keeps his stats when the level changes
	}
	
	
	// Update is called once per frame
	void Update () { 
		
		if (GUIScript.GetGameOn() == true){
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
		
			if (HeroHP > MaxHP){
				HeroHP = MaxHP;
			}
			
			if (HeroHP <= 0){
				Destroy (gameObject);
				//GUIScript.GameLost();
			}
		}
	}
	
	void OnCollisionEnter(Collision other){
		// All the collisions there shall happen when Lars picks up an item or gets hit by an enemy
		if(other.gameObject.name == "HeartHP(Clone)"){
			HeroHP += 10;
		}
		if(other.gameObject.name == "appleseed(Clone)"){
			Points++;
		}
		if(other.gameObject.name == "GreenAPPLE(Clone)"){
			HeroHP -= AppleGREEN.GetATK ();
			print (AppleGREEN.GetHP() + " " + AppleRed.GetHP() + " " + AppleYELLOW.GetHP() + " " + Lars.GetHeroHP());
		}
		if(other.gameObject.name == "YellowAPPLE(Clone)"){
			HeroHP -= AppleYELLOW.GetATK ();
			print (AppleGREEN.GetHP() + " " + AppleRed.GetHP() + " " + AppleYELLOW.GetHP() + " " + Lars.GetHeroHP());
		}
		if(other.gameObject.name == "RedAPPLE(Clone)"){
			HeroHP -= AppleRed.GetATK ();
			print (AppleGREEN.GetHP() + " " + AppleRed.GetHP() + " " + AppleYELLOW.GetHP() + " " + Lars.GetHeroHP());
		}
		if(other.gameObject.name == "TestRoot(Clone)"){
			HeroHP -= tree.GetATK ();
			print (AppleGREEN.GetHP() + " " + AppleRed.GetHP() + " " + AppleYELLOW.GetHP() + " " + Lars.GetHeroHP());
		}
		if(other.gameObject.name == "TreeBOSS(Clone)"){
			HeroHP = 0;
		}
	}
}
