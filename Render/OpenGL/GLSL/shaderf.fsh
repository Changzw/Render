
precision highp float;
// 纹理坐标
varying lowp vec2 varyTextCoord;

// 纹理
uniform sampler2D colorMap;

//attribute vec4 position;
//attribute vec2 texCoord;// 桥接 varing 数据通过 attribute 传到片元着色器

void main() {
// 1. 拿到纹理对应坐标下纹素
// 纹理对应像素点颜色值； 120x120
// 非常重要切高频内建函数：texture2D(纹理，纹理坐标)，返回值颜色值 4 v；
  lowp vec4 temp = texture2D(colorMap, varyTextCoord);
          //2. 图片-> 透明图1 => 透明度 30%
  // 2. 非常重要且必须的内建变量 gl_FragColor
  // 片元着色器执行代码 -> 结果；片元像素颜色
  gl_FragColor = temp;
}

// 片元着色器 -> 120 像素点 -> 120 次 -> 120 结果
// GPU, 模拟器中没有 GPU是 CPU 上模拟的

