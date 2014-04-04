using UnityEngine;
using System.Collections;

public class GUI : MonoBehaviour {
	
	private bool IntroMenuOn;
	private bool HowToMenuOn;
	private static bool GameOn;
	
	public GUITexture IntroImage;
	public GUITexture HowToImage;
	public GUITexture Win;
	public GUITexture Lose;
	
	public static bool GetGameOn () {
		return GameOn;
	}
	
	// Use this for initialization
	void Start () {
		IntroMenuOn = true; // The intro menu comes first so it will be set to true right away
		HowToMenuOn = false;
		GameOn = false;
		Win.enabled = false;
		Lose.enabled = false;
	}
	
	// Update is called once per frame
	void Update () {
		if (Input.GetKeyDown (KeyCode.KeypadEnter)){
			// This section handles the intro and How to play scenes, click Enter on the keypad to continue
			if (IntroMenuOn == true){
				IntroMenuOn = false;
				HowToMenuOn = true;
			}
			else if (HowToMenuOn == true){
				HowToMenuOn = false;
				GameOn = true;
			}
		}
		
		if (Input.GetKeyDown (KeyCode.Space)){
			// This section functions as the pause button, click on SPACE to "turn off" the game mid-game and SPACE again to "turn on" the game
			if (GameOn == true)
				GameOn = false;
			else if (GameOn == false)
				GameOn = true;
		}
		
		if (IntroMenuOn == true && GameOn == false){
			// tells us what shall be seen when the "Intro" menu is on using the enabled keyword (shall it be shown or not?)
			IntroImage.enabled = true;
			HowToImage.enabled = false;
		}
		
		else if (HowToMenuOn == true && GameOn == false){
			// tells us what shall be seen when the "How to Play" menu is on using the enabled keyword (shall it be shown or not?)
			IntroImage.enabled = false;
			HowToImage.enabled = true;
		}
		else if (GameOn == true){
			// tells us what shall be seen when the game is running
			IntroImage.enabled = false;
			HowToImage.enabled = false;
		}
		
		if (Lars.GetHP() <= 0)
			Lose.enabled = true;
	}
	
	void OnGUI () {
		// Here shall we insert the text labels for the game, example:
		//GUI.Label(new Rect(10, 10, 200, 100), AppleSeeds);
		// This one will show the number of apple seeds the player have collected.
		// The numbers inside of Rect means: #1 Position from left, #2 Position from top, #3 Width and #4 Height of the box
	}
}
