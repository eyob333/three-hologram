
varying vec3 vPostion;
varying vec3 vNormal;

void main(){

    vec4 modlelPosition = modelMatrix * vec4(position, 1.);
    gl_Position = projectionMatrix * viewMatrix * modlelPosition;

    vPostion = modlelPosition.xyz;
    vNormal = normal;

}