using UnityEngine;
using System.Collections;

public class spawnTree : MonoBehaviour {
	
	public GameObject TreeSpawn;
	
	// Use this for initialization
	void Start () {
		GameObject SpawnTree = (GameObject)Instantiate(TreeSpawn, new Vector3(11.0f,1.0f,11.0f), transform.rotation);

	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
