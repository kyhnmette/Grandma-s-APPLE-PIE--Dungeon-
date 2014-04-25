using UnityEngine;
using System.Collections;

public class Health : MonoBehaviour {

	/*public GameObject healthBar;
	public GameObject hpBar;*/
	float DistanceX;
	float DistanceZ;



	// Use this for initialization
	void Start () {
	
		DontDestroyOnLoad (transform.gameObject);
		this.gameObject.renderer.material.color = new Color(255f, 0f, 0f);

		//GameObject healthBar = (GameObject)Instantiate(Resources.Load("nontexturedAPPLE"));
		/*hpBar = GameObject.Find ("wallSubstitute(Clone)");
		hpBar.transform.Rotate(0,0,90f);*/
	}
	
	// Update is called once per frame
	void Update () {

		if (Lars.GetHeroHP() <= 0) {
			Destroy (gameObject);
		}
		DistanceX = Lars.GetLarsX();
		DistanceZ = Lars.GetLarsZ();

		transform.position = new Vector3(DistanceX, 3f, DistanceZ);
		transform.localScale = new Vector3(Lars.GetHeroHP()/60F, 0.2F, 0.2F);

		//print (Lars.GetHeroHP());
		//transform.localScale = new Vector3(transform.localScale.x, Lars.GetHeroHP(), transform.localScale.z);

	}

	void OnGUI() {
		GUI.Box(new Rect(10, 10, 10, 10), "Hallo");
	}
}
