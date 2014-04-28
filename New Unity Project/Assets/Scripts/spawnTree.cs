using UnityEngine;
using System.Collections;

public class spawnTree : MonoBehaviour {
	
	public GameObject TreeSpawn;
	
	// Use this for initialization
	void Start () {
		GameObject.Instantiate(TreeSpawn, new Vector3(11.0f,1.0f,8.0f), transform.rotation); //the tree is spawn on scene

	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
