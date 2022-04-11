//
//
//attribute vec4 position;
//// 桥接 varing 数据通过 attribute 传到片元着色器
//attribute vec2 textCoordinate;
//varying lowp vec2 varyTextCoord;// lowp 低精度，highp 高精度
//
//void main() {
//  varyTextCoord = textCoordinate;
////  内建变量gl_Position 顶点着色器计算之后的顶点结果
////  仿射变化
//  gl_Postion = postion;
//}

attribute vec4 position;
attribute vec2 textCoordinate;
varying lowp vec2 varyTextCoord;

void main() {
    varyTextCoord = textCoordinate;
    gl_Position = position;
}
