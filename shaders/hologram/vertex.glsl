
varying vec3 vPostion;
varying vec3 vNormal;

void main(){

    // position
    vec4 modlelPosition = modelMatrix * vec4(position, 1.);

    // final position
    gl_Position = projectionMatrix * viewMatrix * modlelPosition;

    // normal
    vec4 modelNormal = modelMatrix * vec4( normal, 0.) ;

    // varyings
    vPostion = modlelPosition.xyz;
    vNormal = modelNormal.xyz;

}