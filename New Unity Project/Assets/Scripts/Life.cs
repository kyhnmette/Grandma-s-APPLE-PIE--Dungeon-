using UnityEngine;
using System.Collections;

public class Life : MonoBehaviour {
	
	// The HP int is bugging the game, all the things there inherinter from Life will all die if they use the HP int.
	// Therefore have we created HP values for our Hero and Boss to avoid buggs
	// Yet this makes the idea of using Life kind of worthless,
	// but to show that we know how to use inherintence will we let the script stay.
	
	protected static int HP;
	protected static int HeroHP;
	protected static int BossHP;
	protected static int ATK;
	protected float Speed;
	
	public static int GetHP() {
		return HP;
	}
	
	// Use this for initialization
	public virtual void Start () {
	}
	
	// Update is called once per frame
	void Update () {
	}
	
	public void GetHit (int DmgTaken) {
		HP -= DmgTaken;	// When someone is hit will they lose HP, that was the idea behind this function if HP would work correctly
	}
}
