
varying vec3 vPostion;

void main(){

    vec4 modlelPosition = modelMatrix * vec4(position, 1.);
    gl_Position = projectionMatrix * viewMatrix * modlelPosition;

    vPostion = modlelPosition.xyz;

}