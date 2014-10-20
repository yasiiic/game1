
/*
 * PlayerEntity
 * Created by Eqela Studio 2.0b7.4
 */

public class PlayerEntity : SEEntity
{

	SESprite target;
	int w;
	int h;

	int hp;
	int wp;

	public void initialize(SEResourceCache rsc)
	{
		
		base.initialize(rsc);	
		w = get_scene_width();
		h = get_scene_height();

		rsc.prepare_image("playr", "pacifier", 0.1*w, 0.15*h);
		target = add_sprite_for_image(SEImage.for_resource("playr"));
		wp = target.get_width();
		hp = target.get_height();
		target.move(0.5*w-0.5*wp, 0.5*h-0.5*hp);
	}

	public void tick(TimeVal now, double delta)
	{
		base.tick(now, delta);
		target.move(MainScene.x, MainScene.y);
		
	}
}
