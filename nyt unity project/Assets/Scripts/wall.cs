using UnityEngine;
using System.Collections;

public class wall : MonoBehaviour {
	// Class variables
	public int positionX;
	public int positionY;
	public int positionZ;
	
	// Constructor
	public wall(int posX, int posY, int posZ)
	{
		positionX = posX;
		positionY = posY;
		positionZ = posZ;
		//transform.position = new Vector3(positionX, positionY, positionZ);
		print("Wall created");
	}
	
	// Use this for initialization
	void Start () {
		
		wall wall1 = new wall(1,1,1);
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
