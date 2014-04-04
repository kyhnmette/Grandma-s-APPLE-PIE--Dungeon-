using UnityEngine;
using System.Collections;

public class Health : MonoBehaviour {

	public GameObject healthBar;
	public GameObject larsObject;
	Lars lars;
	short hp;

	// Use this for initialization
	void Start () {
		lars = GameObject.Find("Lars").GetComponent<Lars>();

		GameObject healthBar = (GameObject)Instantiate(Resources.Load("nontexturedAPPLE"));
	}
	
	// Update is called once per frame
	void Update () {

		if (hp <= 0) {
			Destroy (gameObject);
		}
		transform.localScale = new Vector3(transform.localScale.y, hp);


	}
}
