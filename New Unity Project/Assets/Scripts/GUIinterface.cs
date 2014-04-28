using UnityEngine;
using System.Collections;

public class GUIinterface : MonoBehaviour {
	
	public GUITexture Win;
	public GUITexture Lose;
	public GUITexture AppleSeed;

	// Use this for initialization
	void Start () {
		AppleSeed.enabled = false;
		Win.enabled = false;
		Lose.enabled = false;
		
		// Sets the position and size for each GUI Texture
		AppleSeed.pixelInset = new Rect (-Screen.width/2.5f, Screen.height/11, 170, 170);
		Win.pixelInset = new Rect (-Screen.width/4, -Screen.height/2, 750, 750);
		Lose.pixelInset = new Rect (-Screen.width/4, -Screen.height/2, 750, 750);
		
		tree.SetBossHP(1); // Just to avoid a bug with the win screen
	}
	
	// Update is called once per frame
	void Update () {
		if (GUIScript.GetGameOn() == true){
			AppleSeed.enabled = true;	// When the game starts will the apple seed image be shown
		}

		if (Lars.GetHeroHP() <= 0)
			Lose.enabled = true;	// If Lars's HP gets to 0 or below will the lose screen pop up
		else if (tree.GetBossHP() <= 0)
			Win.enabled = true;		// If the Tree's HP gets to 0 or below will the win screen pop up
	}
	
	void OnGUI () {
		// This one will show the number of apple seeds the player have collected
		if (GUIScript.GetGameOn() == true){
			GUI.Label(new Rect(Screen.width/6.5f, Screen.height/4, 200, 100), "<size=40>" + Lars.GetPoints() + "</size>");
		}
	}
}
