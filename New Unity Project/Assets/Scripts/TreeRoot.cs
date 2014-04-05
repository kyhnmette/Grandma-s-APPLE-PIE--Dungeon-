using UnityEngine;
using System.Collections;

public class TreeRoot : Life {
	
	private static float PosX;
	private static float PosY;
	private static float PosZ;
	private static bool IsAttacking;
	private bool IsMovingUp;
	
	public static void SetPosX (float NewPosX) {
		PosX = NewPosX;
	}
	
	public static bool GetIsAttacking () {
		return IsAttacking;
	}
	
	public static void SetIsAttacking (bool New) {
		IsAttacking = New;
	}
	
	public static void SetPosZ (float NewPosZ) {
		PosZ = NewPosZ;
	}
	
	public static int GetATK(){
		return ATK; 
	}

	// Use this for initialization
	void Start () {
		ATK = 20;
		IsAttacking = false;
		IsMovingUp = true;
		Speed = 5.0f;
		PosY = -1.5f;
	}
	
	// Update is called once per frame
	void Update () {
		if (IsAttacking == false){
			transform.position = new Vector3(PosX,PosY,PosZ);	// Sets the new position for the root before an attack
		}
		else if (IsAttacking == true && IsMovingUp == true){
			transform.position += new Vector3(0.0f,Speed,0.0f)* Time.deltaTime;	// The root move up from the ground to attack
		}
		
		if (transform.position.y >= 1.0f){
			IsMovingUp = false;	// When the root are at its "top" position over the ground shall it stop to move upwards
		}
		else if (transform.position.y <= -1.5f){
			IsAttacking = false;	// When the root is set to its start position under ground will it reset all the bools
			IsMovingUp = true;
		}
		
		if (IsMovingUp == false){
			transform.position += new Vector3(0.0f,-Speed,0.0f)* Time.deltaTime;	// // The root move back down into the ground when the attack is done
		}
		
	}
}
