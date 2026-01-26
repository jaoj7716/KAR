shader_set(shd_GentleMadman);
shader_set_uniform_f(Res,512,512,0); 
shader_set_uniform_f(Time,current_time / 4000); 
draw_rectangle(0,0,room_width,room_height,false);
shader_reset();

if (shineTimer != -1) gpu_set_fog(true,c_white,0,0);
draw_self();
if (shineTimer != -1) gpu_set_fog(false,c_white,0,0);