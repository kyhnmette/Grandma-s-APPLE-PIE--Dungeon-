using UnityEngine;
using System.Collections;

public class GUIinterface : MonoBehaviour {
	
	public GUITexture AppleSeed;

	// Use this for initialization
	void Start () {
		AppleSeed.enabled = false;
	}
	
	// Update is called once per frame
	void Update () {
		if (GUIScript.GetGameOn() == true){
			AppleSeed.enabled = true;
		}
	}
	
	void OnGUI () {
		// Here shall we insert the text labels for the game, example:
		if (GUIScript.GetGameOn() == true){
			GUI.Label(new Rect(1200, 125, 200, 100), "<size=40>" + Lars.GetPoints() + "</size>");
			// This one will show the number of apple seeds the player have collected.
			// The numbers inside of Rect means: #1 Position from left, #2 Position from top, #3 Width and #4 Height of the box
		}
	}
}
