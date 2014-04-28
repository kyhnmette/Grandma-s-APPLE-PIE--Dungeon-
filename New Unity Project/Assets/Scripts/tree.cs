using UnityEngine;
using System.Collections;

public class tree : Life {

	private float valueX;
	private float valueZ;
	private float LarsOldX;
	private float LarsOldY;
	private float LarsOldZ;
	private short ATKtimer;
	private bool ATKready;
	
	public GameObject treeRoot;
	
	public static int GetBossHP () {
		return BossHP;
	}
	
	public static void SetBossHP (int x) {
		BossHP = x;
	}
	public static int GetATK(){
		return ATK; 
	}

	// Use this for initialization
	void Start () {
		BossHP = 150; 
		ATK = 40; 
		ATKtimer = 0;
		ATKready = true;
		GameObject.Instantiate(treeRoot, new Vector3(11.0f,-3.0f,11.0f), transform.rotation); // spawn the Tree root
	}
	
	// Update is called once per frame
	void Update () {
		if (GUIScript.GetGameOn() == true){
			valueX = Mathf.Abs (Lars.GetLarsX() - transform.position.x); // x-axis distance from the tree and lars 
			valueZ = Mathf.Abs (Lars.GetLarsZ() - transform.position.z); // z-axis distance from the tree and lars
		
			if (ATKready == true){
				if (valueX < 2.0f && valueZ < 2.0f) {
					LarsOldX = Lars.GetLarsX(); // saves lars's current position 
					LarsOldZ = Lars.GetLarsZ(); //
					Invoke ("damageFunction", 2); // will activate the damage function after 2 sec.
					ATKready = false;
				} 
				else if (valueX < 4.0f && valueZ < 4.0f) {
					LarsOldX = Lars.GetLarsX(); // saves lars's current position 
					LarsOldZ = Lars.GetLarsZ(); //
					Invoke ("damageFunction", 3); // will activate the damage function after 3 sec.
					ATKready = false;
				} 
				else if (valueX < 6.0f && valueZ < 6.0f) {
					LarsOldX = Lars.GetLarsX(); // saves lars's current position 
					LarsOldZ = Lars.GetLarsZ(); //
					Invoke ("damageFunction", 4); // will activate the damage function after 4 sec.
					ATKready = false;
				} 
				else if (valueX < 8.0f && valueZ < 8.0f) {
					LarsOldX = Lars.GetLarsX(); // saves lars's current position 
					LarsOldZ = Lars.GetLarsZ(); //
					Invoke ("damageFunction", 5); // will activate the damage function after 5 sec.
					ATKready = false;
				} 
				else if (valueX < 10.0f && valueZ < 10.0f) {
					LarsOldX = Lars.GetLarsX(); // saves lars's current position 
					LarsOldZ = Lars.GetLarsZ(); //
					Invoke ("damageFunction", 6); // will activate the damage function after 6 sec.
					ATKready = false;
				}
			}
		
			if (BossHP <= 0){ // if the tree boss has no mor HP he will be destoyed 
				Destroy(gameObject);
			}
		
			if (ATKready == false){
				ATKtimer++;
				if (ATKtimer == 12){
					ATKready = true;
					ATKtimer = 0;
				}
			}
			
			
		}
	} 

	public void damageFunction () { 
		if (TreeRoot.GetIsAttacking() == false){
			TreeRoot.SetPosX(LarsOldX); 
			TreeRoot.SetPosZ(LarsOldZ);
			TreeRoot.SetIsAttacking(true);
		}
	}

	void OnCollisionEnter(Collision other) {
		if (other.gameObject.name == "BallOfFire(Clone)"){ // checks if the tree gets hit be lars's ball
			BossHP -= BallOfFire.GetBallDmg();  // if the tree gets hit it will lose HP arcording to how close lars is to the tree
		}

	}

	
}