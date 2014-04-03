/*using UnityEngine;
using System.Collections;

public class Health : MonoBehaviour {

	public gameObject healthBar;
	public gameObject larsObject;
	Lars lars;

	// Use this for initialization
	void Start () {
		lars = gameObject.Find("Lars").GetComponent<Lars>();

		gameObject healthBar = (gameObject)Instantiate (new Vector3 (0, 0, 0));
	}
	
	// Update is called once per frame
	void Update () {
		if (lars.HP <= 0) {
			destroy (gameObject);
		}
		transform.localScale = new Vector3(transform.localScale.y, lars.HP);

	}
}*/
