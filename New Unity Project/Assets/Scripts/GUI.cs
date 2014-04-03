using UnityEngine;
using System.Collections;

public class GUI : MonoBehaviour {
	
	private bool IntroMenuOn {get; set;}
	private bool HowToMenuOn {get; set;}
	
	public GUITexture IntroImage;
	public GUITexture HowToImage;
	
	// Use this for initialization
	void Start () {
		IntroMenuOn = true; // The intro menu comes first so it will be set to true right away
		HowToMenuOn = false;
	}
	
	// Update is called once per frame
	void Update () {
		if (Input.GetKeyDown (KeyCode.KeypadEnter)){
			if (IntroMenuOn == true){
				IntroMenuOn = false;
				HowToMenuOn = true;
			}
			else if (HowToMenuOn == true){
				HowToMenuOn = false;
			}
		}
		
		if (IntroMenuOn == true){
			// tells us what shall be seen when the "Intro" menu is on using the enabled keyword (shall it be shown or not?)
			IntroImage.enabled = true;
			HowToImage.enabled = false;
		}
		
		else if (HowToMenuOn == true){
			// tells us what shall be seen when the "How to Play" menu is on using the enabled keyword (shall it be shown or not?)
			IntroImage.enabled = false;
			HowToImage.enabled = true;
		}
		else {
			IntroImage.enabled = false;
			HowToImage.enabled = false;
		}
	}
	
	void OnGUI () {
		// Here shall we insert the text labels for the game, example:
		//GUI.Label(new Rect(10, 10, 200, 100), AppleSeeds);
		// This one will show the number of apple seeds the player have collected.
		// The numbers inside of Rect means: #1 Position from left, #2 Position from top, #3 Width and #4 Height of the box
	}
}
