package com.badlogic.gdx.graphics.glutils;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.Mesh;
import com.badlogic.gdx.graphics.VertexAttribute;
import com.badlogic.gdx.graphics.VertexAttributes;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.utils.Array;

public class ImmediateModeRenderer20
  implements ImmediateModeRenderer
{
  private final int colorOffset;
  private final int maxVertices;
  private final Mesh mesh;
  private final int normalOffset;
  private int numSetTexCoords;
  private final int numTexCoords;
  private int numVertices;
  private boolean ownsShader;
  private int primitiveType;
  private final Matrix4 projModelView = new Matrix4();
  private ShaderProgram shader;
  private final int texCoordOffset;
  private int vertexIdx;
  private final int vertexSize;
  private final float[] vertices;

  public ImmediateModeRenderer20(int paramInt1, boolean paramBoolean1, boolean paramBoolean2, int paramInt2)
  {
    this(paramInt1, paramBoolean1, paramBoolean2, paramInt2, createDefaultShader(paramBoolean1, paramBoolean2, paramInt2));
    this.ownsShader = true;
  }

  public ImmediateModeRenderer20(int paramInt1, boolean paramBoolean1, boolean paramBoolean2, int paramInt2, ShaderProgram paramShaderProgram)
  {
    this.maxVertices = paramInt1;
    this.numTexCoords = paramInt2;
    this.shader = paramShaderProgram;
    this.mesh = new Mesh(false, paramInt1, 0, buildVertexAttributes(paramBoolean1, paramBoolean2, paramInt2));
    this.vertices = new float[paramInt1 * (this.mesh.getVertexAttributes().vertexSize / 4)];
    this.vertexSize = (this.mesh.getVertexAttributes().vertexSize / 4);
    int i;
    if (this.mesh.getVertexAttribute(2) != null)
    {
      i = this.mesh.getVertexAttribute(2).offset / 4;
      this.normalOffset = i;
      if (this.mesh.getVertexAttribute(5) == null)
        break label200;
    }
    label200: for (int j = this.mesh.getVertexAttribute(5).offset / 4; ; j = 0)
    {
      this.colorOffset = j;
      VertexAttribute localVertexAttribute = this.mesh.getVertexAttribute(3);
      int k = 0;
      if (localVertexAttribute != null)
        k = this.mesh.getVertexAttribute(3).offset / 4;
      this.texCoordOffset = k;
      return;
      i = 0;
      break;
    }
  }

  public ImmediateModeRenderer20(boolean paramBoolean1, boolean paramBoolean2, int paramInt)
  {
    this(5000, paramBoolean1, paramBoolean2, paramInt, createDefaultShader(paramBoolean1, paramBoolean2, paramInt));
    this.ownsShader = true;
  }

  private VertexAttribute[] buildVertexAttributes(boolean paramBoolean1, boolean paramBoolean2, int paramInt)
  {
    Array localArray = new Array();
    localArray.add(new VertexAttribute(0, 3, "a_position"));
    if (paramBoolean1)
      localArray.add(new VertexAttribute(2, 3, "a_normal"));
    if (paramBoolean2)
      localArray.add(new VertexAttribute(5, 4, "a_color"));
    for (int i = 0; i < paramInt; i++)
      localArray.add(new VertexAttribute(3, 2, "a_texCoord" + i));
    VertexAttribute[] arrayOfVertexAttribute = new VertexAttribute[localArray.size];
    for (int j = 0; j < localArray.size; j++)
      arrayOfVertexAttribute[j] = ((VertexAttribute)localArray.get(j));
    return arrayOfVertexAttribute;
  }

  public static ShaderProgram createDefaultShader(boolean paramBoolean1, boolean paramBoolean2, int paramInt)
  {
    return new ShaderProgram(createVertexShader(paramBoolean1, paramBoolean2, paramInt), createFragmentShader(paramBoolean1, paramBoolean2, paramInt));
  }

  private static String createFragmentShader(boolean paramBoolean1, boolean paramBoolean2, int paramInt)
  {
    String str1 = "#ifdef GL_ES\nprecision highp float;\n#endif\n";
    if (paramBoolean2)
      str1 = str1 + "varying vec4 v_col;\n";
    String str2 = str1;
    for (int i = 0; i < paramInt; i++)
    {
      String str5 = str2 + "varying vec2 v_tex" + i + ";\n";
      str2 = str5 + "uniform sampler2D u_sampler" + i + ";\n";
    }
    StringBuilder localStringBuilder = new StringBuilder().append(str2).append("void main() {\n   gl_FragColor = ");
    String str3;
    int j;
    if (paramBoolean2)
    {
      str3 = "v_col";
      str4 = str3;
      j = 0;
      if (paramInt > 0)
        str4 = str4 + " * ";
      label177: if (j >= paramInt)
        break label291;
      if (j != paramInt - 1)
        break label246;
    }
    label246: for (String str4 = str4 + " texture2D(u_sampler" + j + ",  v_tex" + j + ")"; ; str4 = str4 + " texture2D(u_sampler" + j + ",  v_tex" + j + ") *")
    {
      j++;
      break label177;
      str3 = "vec4(1, 1, 1, 1)";
      break;
    }
    label291: return str4 + ";\n}";
  }

  private static String createVertexShader(boolean paramBoolean1, boolean paramBoolean2, int paramInt)
  {
    StringBuilder localStringBuilder1 = new StringBuilder("attribute vec4 a_position;\n");
    String str1;
    StringBuilder localStringBuilder2;
    if (paramBoolean1)
    {
      str1 = "attribute vec3 a_normal;\n";
      localStringBuilder2 = localStringBuilder1.append(str1);
      if (!paramBoolean2)
        break label100;
    }
    String str3;
    label100: for (String str2 = "attribute vec4 a_color;\n"; ; str2 = "")
    {
      str3 = str2;
      for (int i = 0; i < paramInt; i++)
        str3 = str3 + "attribute vec2 a_texCoord" + i + ";\n";
      str1 = "";
      break;
    }
    String str4 = str3 + "uniform mat4 u_projModelView;\n";
    StringBuilder localStringBuilder3 = new StringBuilder().append(str4);
    if (paramBoolean2);
    String str6;
    for (String str5 = "varying vec4 v_col;\n"; ; str5 = "")
    {
      str6 = str5;
      for (int j = 0; j < paramInt; j++)
        str6 = str6 + "varying vec2 v_tex" + j + ";\n";
    }
    StringBuilder localStringBuilder4 = new StringBuilder().append(str6).append("void main() {\n   gl_Position = u_projModelView * a_position;\n");
    if (paramBoolean2);
    String str8;
    for (String str7 = "   v_col = a_color;\n"; ; str7 = "")
    {
      str8 = str7;
      for (int k = 0; k < paramInt; k++)
        str8 = str8 + "   v_tex" + k + " = a_texCoord" + k + ";\n";
    }
    return str8 + "}\n";
  }

  public void begin(Matrix4 paramMatrix4, int paramInt)
  {
    this.projModelView.set(paramMatrix4);
    this.primitiveType = paramInt;
  }

  public void color(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    this.vertices[(this.vertexIdx + this.colorOffset)] = Color.toFloatBits(paramFloat1, paramFloat2, paramFloat3, paramFloat4);
  }

  public void dispose()
  {
    if ((this.ownsShader) && (this.shader != null))
      this.shader.dispose();
    this.mesh.dispose();
  }

  public void end()
  {
    if (this.numVertices == 0)
      return;
    this.shader.begin();
    this.shader.setUniformMatrix("u_projModelView", this.projModelView);
    for (int i = 0; i < this.numTexCoords; i++)
      this.shader.setUniformi("u_sampler" + i, i);
    this.mesh.setVertices(this.vertices, 0, this.vertexIdx);
    this.mesh.render(this.shader, this.primitiveType);
    this.shader.end();
    this.numSetTexCoords = 0;
    this.vertexIdx = 0;
    this.numVertices = 0;
  }

  public int getMaxVertices()
  {
    return this.maxVertices;
  }

  public int getNumVertices()
  {
    return this.numVertices;
  }

  public void normal(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    int i = this.vertexIdx + this.normalOffset;
    this.vertices[i] = paramFloat1;
    this.vertices[(i + 1)] = paramFloat2;
    this.vertices[(i + 2)] = paramFloat3;
  }

  public void setShader(ShaderProgram paramShaderProgram)
  {
    if (this.ownsShader)
      this.shader.dispose();
    this.shader = paramShaderProgram;
    this.ownsShader = false;
  }

  public void texCoord(float paramFloat1, float paramFloat2)
  {
    int i = this.vertexIdx + this.texCoordOffset;
    this.vertices[i] = paramFloat1;
    this.vertices[(i + 1)] = paramFloat2;
    this.numSetTexCoords = (2 + this.numSetTexCoords);
  }

  public void vertex(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    int i = this.vertexIdx;
    this.vertices[i] = paramFloat1;
    this.vertices[(i + 1)] = paramFloat2;
    this.vertices[(i + 2)] = paramFloat3;
    this.numSetTexCoords = 0;
    this.vertexIdx += this.vertexSize;
    this.numVertices = (1 + this.numVertices);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.glutils.ImmediateModeRenderer20
 * JD-Core Version:    0.6.2
 */