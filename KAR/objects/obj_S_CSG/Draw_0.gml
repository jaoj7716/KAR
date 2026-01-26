if (shineTimer != -1) gpu_set_fog(true,c_white,0,0);
draw_self();
if (shineTimer != -1) gpu_set_fog(false,c_white,0,0);