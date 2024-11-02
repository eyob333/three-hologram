
varying vec3 vPostion;
varying vec3 vNormal;

uniform float uTime;

void main(){

    // stripes
    float stripes = mod((vPostion.y - uTime * .02) * 20., 1.);
    stripes = pow( stripes, 3.);

    // frensel
    vec3 viewDirection = normalize(vPostion - cameraPosition);
    float frensel = dot( viewDirection, vNormal) ;    
    gl_FragColor = vec4( vNormal, frensel);


    #include <tonemapping_fragment>
    #include <colorspace_fragment>

}