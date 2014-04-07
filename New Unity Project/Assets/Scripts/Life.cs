using UnityEngine;
using System.Collections;

public class Life : MonoBehaviour {

	protected static int HP;
	protected static int HeroHP;
	protected static int ATK;
	protected float Speed;
	public GameObject ScriptOWNER;
	
	public static int GetHP() {
		return HP;
	}
	public static int GetHeroHP() {
		return HeroHP;
	}
	
	// Use this for initialization
	public virtual void Start () {
	}
	
	// Update is called once per frame
	void Update () {
	}
	
	public void GetHit (int DmgTaken) {
		HP -= DmgTaken;
	}
	public virtual void TestFunktion(){
	}
}
