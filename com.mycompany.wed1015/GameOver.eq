
/*
 * GameOver
 * Created by Eqela Studio 2.0b7.4
 */

public class GameOver : SEScene
{
	SESprite text;
	String display;
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		add_entity(SESpriteEntity.for_color(Color.instance("white"), get_scene_width(), get_scene_height()));
		rsc.prepare_font("myfont","arial bold color=blue", 70);
		display = "Game Over!";
		text = add_sprite_for_text(display, "myfont");
		text.move((get_scene_width()*0.5)-(text.get_width()*0.5),(get_scene_height()*0.5)-(text.get_height()*0.5));		
	}
	public void on_pointer_press(SEPointerInfo pi) {
		base.on_pointer_move(pi);
			
	}
	public void cleanup() {
		base.cleanup();
	}
}
