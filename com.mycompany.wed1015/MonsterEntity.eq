
/*
 * MonsterEntity
 * Created by Eqela Studio 2.0b7.4
 */


public class MonsterEntity: SESpriteEntity
{
	SESprite child;
	int w;
	int h;
	int wp;
	int hp;
	int mx;
	int my;
	int mainx;
	int mainy;
	
	
	SESprite text;
	public void initialize(SEResourceCache rsc) {

		base.initialize(rsc);
		w = get_scene_width();
		h = get_scene_height();


		rsc.prepare_image("image1", "child", w*0.15, h*0.15);
		child=add_sprite_for_image(SEImage.for_resource("image1"));

				
		child.move(Math.random(0, w), Math.random(0, h));
	
		rsc.prepare_font("myfont","arial bold color=white", 100);

		wp = child.get_width();
		hp = child.get_height();
		mx = child.get_x();
		my = child.get_y();
		mainx = MainScene.x;
		mainy = MainScene.y;
	}	


	public void tick(TimeVal now, double delta) {
		base.tick(now, delta);
		child.move(child.get_x()+(MainScene.x-child.get_x())/Math.random(100,150), child.get_y()+(MainScene.y-child.get_y())/Math.random(100,150));
		
		wp = child.get_width();
		hp = child.get_height();
		mx = child.get_x();
		my = child.get_y();
		mainx = MainScene.x;
		mainy = MainScene.y;
		if(mainx >= mx && mainx <= wp+mx) {
			if(mainy >= my && mainy <= hp+my) {
				game_over();				
			}
		}
	}
	public void game_over() {
		//String display = "Game Over!";
		//text = add_sprite_for_text(display, "myfont");
		//text.move(get_scene_width()*0.5, get_scene_height()*0.5);
		MainScene.gameover = true;
	}

	public void cleanup() {
		base.cleanup();
	}	
}