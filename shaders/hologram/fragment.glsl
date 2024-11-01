
varying vec3 vPostion;

uniform float uTime;

void main(){

    float stripes = mod((vPostion.y - uTime * .02) * 20., 1.);
    stripes = pow( stripes, 3.);
    
    gl_FragColor = vec4( vec3( 1.), stripes);


    #include <tonemapping_fragment>
    #include <colorspace_fragment>

}