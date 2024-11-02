
varying vec3 vPostion;
varying vec3 vNormal;

uniform float uTime;

void main(){
    
    vec3 normal = normalize( vNormal);

    // side inversion
    if (!gl_FrontFacing)
        normal *= -1.;

    // stripes
    float stripes = mod((vPostion.y - uTime * .02) * 20., 1.);
    stripes = pow( stripes, 3.);

    // frensel
    vec3 viewDirection = normalize(vPostion - cameraPosition);
    float frensel = dot( viewDirection, normal) + 1. ;
    frensel = pow( frensel, 3.);

    // holographic 
    float holographic = stripes * frensel ;
    holographic += frensel * 1.25 ;

    // frag color
    gl_FragColor = vec4( 1., 1., 1. ,holographic);


    #include <tonemapping_fragment>
    #include <colorspace_fragment>

}