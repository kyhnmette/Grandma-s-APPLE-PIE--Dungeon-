using UnityEngine;
using System.Collections;

public class Health : MonoBehaviour {

	public GameObject healthBar;


	// Use this for initialization
	void Start () {


		//GameObject healthBar = (GameObject)Instantiate(Resources.Load("nontexturedAPPLE"));
		GameObject healthBarSwan = (GameObject)Instantiate(healthBar, new Vector3(5f,1f,10), transform.rotation);
	}
	
	// Update is called once per frame
	void Update () {

		if (Lars.GetHP() <= 0) {
			Destroy (gameObject);
		}
		transform.localScale = new Vector3(transform.localScale.y, Lars.GetHP());


	}
}
