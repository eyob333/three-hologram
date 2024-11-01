
varying vec3 vPostion;

void main(){

    float stripes = mod(vPostion.y * 20., 1.);
    
    gl_FragColor = vec4( vec3( stripes), 1.);

    #include <tonemapping_fragment>
    #include <colorspace_fragment>

}