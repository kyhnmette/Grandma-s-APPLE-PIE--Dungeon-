using UnityEngine;
using System.Collections;

public class GUIScript : MonoBehaviour {
	
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
		if (Input.GetKeyDown (KeyCode.Return)){
			// This section handles the intro and How to play scenes, click SPACE to continue
			if (IntroMenuOn == true){
				IntroMenuOn = false;
				HowToMenuOn = true;
			}
			else if (HowToMenuOn == true){
				HowToMenuOn = false;
				GameOn = true;
			}
		}
		
		if (Input.GetKeyDown (KeyCode.P)){
			// This section functions as the pause button, click on P to "turn off" the game mid-game and P again to "turn on" the game
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
		
		if (Lars.GetHeroHP() <= 0)
			Lose.enabled = true;
	}
}
