
/*
 * PlayNow
 * Created by Eqela Studio 2.0b7.4
 */




public class PlayNow : SEScene
{
	SESprite text;
	String display;
	SESprite bg;
	SESprite colorbg;

	int w=get_scene_width();
	int h=get_scene_height();

	public void initialize(SEResourceCache rsc)
	{
		
		base.initialize(rsc);
        rsc.prepare_image("background", "room",get_scene_width(),get_scene_height());
		bg = add_sprite_for_image(SEImage.for_resource("background"));
		bg.move(0,0);
		
		//rsc.prepare_font("myfont", "arial bold color=white", 80);
        //display = "Play";
		//text = add_sprite_for_text(" ", "myfont");   
        //text.set_text("PLAY");
    
		base.initialize(rsc);
        rsc.prepare_font("myfont", "arial bold color=white", 80);
        colorbg = add_sprite_for_color(Color.instance("blue"), get_scene_width()*0.2, get_scene_height()*0.2);
        colorbg.move(0.4*get_scene_width(),0.4*get_scene_height());
		text = add_sprite_for_text(" ", "myfont");   
        text.set_text("PLAY");
    	text.move((get_scene_width()*0.5)-(text.get_width()*0.5),(get_scene_height()*0.5)-(text.get_height()*0.5));		

	}


	public void on_pointer_press(SEPointerInfo ptr)
	{
		
		if(ptr.is_inside(0.4*get_scene_width(),0.4*get_scene_height(),0.48*get_scene_width(),0.48*get_scene_height()))		

		{
			base.on_pointer_press(ptr);
			switch_scene(new MainScene());	
		}
	}


	 public void cleanup() {
        base.cleanup();
    }
}
