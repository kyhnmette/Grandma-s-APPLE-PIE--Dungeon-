using UnityEngine;
using System.Collections;

public class moveing_the_hero : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
<<<<<<< HEAD
		if(Input.GetKeyDown (KeyCode.A))
			transform.position -= new Vector3(3, 0, 0);	// Lets the hero move to the left
		if(Input.GetKeyDown (KeyCode.D))
			transform.position += new Vector3(3, 0, 0);	// Lets the hero move to the right
=======
		
		if (Input.GetKeyDown (KeyCode.W)){
			transform.position += new Vector3(0, 0, 1.0f);
		}
	
>>>>>>> 621aa14fa5315f3dfff14e3dc48e37ceb5d37cef
	}
}
