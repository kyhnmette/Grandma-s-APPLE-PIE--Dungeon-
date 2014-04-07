using UnityEngine;
using System.Collections;

public class spawnTree : MonoBehaviour {
	
	public GameObject TreeSpawn;
	
	// Use this for initialization
	void Start () {
		GameObject.Instantiate(TreeSpawn, new Vector3(9.0f,1.0f,16.0f), transform.rotation);

	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
