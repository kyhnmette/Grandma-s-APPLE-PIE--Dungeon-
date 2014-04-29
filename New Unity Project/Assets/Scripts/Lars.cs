using UnityEngine;
using System.Collections;

 class Lars : Life {
	
	public GameObject healthBar;
	
	private short BallCoolDown = 48;
	private bool BallIsReady = true;
	private static short Points;
	private int MaxHP;
	
	private static float LarsX;
	private static float LarsZ;
	
	public GameObject Spawn;
	
	public static float GetLarsX () {
		return LarsX;
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
			LarsZ = transform.position.z;	// Gets Larses current Z coordinate
			
			// The following code will make our character move with the a,w,d,s or arrow keys and make him face in that direction
			if (Input.GetKey(KeyCode.A) || Input.GetKey(KeyCode.LeftArrow)){
				transform.position += new Vector3(-3.0f, 0, 0)* Time.deltaTime;
				transform.eulerAngles = new Vector3(0, 270, 0);
			}
			if (Input.GetKey(KeyCode.D) || Input.GetKey(KeyCode.RightArrow)){
				transform.position += new Vector3(3.0f, 0, 0)* Time.deltaTime;
				transform.eulerAngles = new Vector3(0, 90, 0);
			}
			if (Input.GetKey(KeyCode.W) || Input.GetKey(KeyCode.UpArrow)){
				transform.position += new Vector3(0, 0, 3f)* Time.deltaTime;
				transform.eulerAngles = new Vector3(0, 0, 0);
			}
			if (Input.GetKey(KeyCode.S) || Input.GetKey(KeyCode.DownArrow)){
				transform.position += new Vector3(0, 0, -3f)* Time.deltaTime;
				transform.eulerAngles = new Vector3(0, 180, 0);
			}
			// This statement will make Lars shot a ball of fire
			if (Input.GetKeyDown (KeyCode.Space) && BallIsReady == true){
				Instantiate (Spawn, transform.position + transform.forward, Quaternion.identity);
				BallIsReady = false;
			}
			
			// This following code will make a timer for the cooldown for when Lars can fire another ball of fire (so he can't spam them)
			if (BallIsReady == false){
				BallCoolDown--;	// When a ball of fire have been fired off will this variable cound down each frame until it reaches 0
				if (BallCoolDown == 0){
					BallIsReady = true;	// A new ball can then be fired again
					BallCoolDown = 48;	// And the timer resets to 2 seconds
				}
				
			}
			
			// Lars shall not be able to stack too much HP, this will set the cap so he can't reach over his maximum HP
			if (HeroHP > MaxHP){
				HeroHP = MaxHP;
			}
			
			// If Lars's HP becomes 0 or below then will he be destroyed
			if (HeroHP <= 0){
				Destroy (gameObject);
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
		}
		if(other.gameObject.name == "YellowAPPLE(Clone)"){
			HeroHP -= AppleYELLOW.GetATK ();
		}
		if(other.gameObject.name == "RedAPPLE(Clone)"){
			HeroHP -= AppleRed.GetATK ();
		}
		if(other.gameObject.name == "treeRoot(Clone)"){
			HeroHP -= tree.GetATK ();
		}
		if(other.gameObject.name == "TreeBOSS(Clone)"){
			HeroHP = 0;
		}
	}
}
