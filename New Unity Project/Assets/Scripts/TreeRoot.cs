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
	
	/*public static void SetPosY (float NewPosY) {
		PosY = NewPosY;
	}*/
	
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
		
		PosX = 11.0f;
		PosY = -1.5f;
		PosZ = 11.0f;
	}
	
	// Update is called once per frame
	void Update () {
		//print (IsMovingUp);
		print (transform.position);
		if (IsAttacking == false){
			transform.position = new Vector3(PosX,PosY,PosZ);
		}
		else if (IsAttacking == true && IsMovingUp == true){
			transform.position += new Vector3(0.0f,5.0f,0.0f)* Time.deltaTime;
		}
		
		if (transform.position.y >= 1.0f){
			IsMovingUp = false;
		}
		else if (transform.position.y <= -1.5f){
			IsAttacking = false;
			IsMovingUp = true;
		}
		
		if (IsMovingUp == false){
			transform.position += new Vector3(0.0f,-5.0f,0.0f)* Time.deltaTime;
		}
		
	}
}
