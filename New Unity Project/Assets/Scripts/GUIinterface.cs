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
		AppleSeed.pixelInset = new Rect (-500, 240, 80, 80);
		Win.pixelInset = new Rect (-600, -650, 1200, 1200);
		Lose.pixelInset = new Rect (-600, -650, 1200, 1200);
		
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
			GUI.Label(new Rect(40, 80, 200, 100), "<size=40>" + Lars.GetPoints() + "</size>");
		}
		if (GUI.Button (new Rect (10, 10, 100, 50), "Quit")){
			Application.Quit();
		}
	}
}
