package com.badlogic.gdx.backends.android.surfaceview;

import java.io.IOException;
import java.io.Writer;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.CharBuffer;
import java.nio.DoubleBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.LongBuffer;
import java.nio.ShortBuffer;
import java.util.Arrays;
import javax.microedition.khronos.opengles.GL;
import javax.microedition.khronos.opengles.GL10;
import javax.microedition.khronos.opengles.GL10Ext;
import javax.microedition.khronos.opengles.GL11;
import javax.microedition.khronos.opengles.GL11Ext;

class GLLogWrapper extends GLWrapperBase
{
  private static final int FORMAT_FIXED = 2;
  private static final int FORMAT_FLOAT = 1;
  private static final int FORMAT_INT;
  private int mArgCount;
  boolean mColorArrayEnabled;
  private GLLogWrapper.PointerInfo mColorPointer;
  private Writer mLog;
  private boolean mLogArgumentNames;
  boolean mNormalArrayEnabled;
  private GLLogWrapper.PointerInfo mNormalPointer;
  StringBuilder mStringBuilder;
  private GLLogWrapper.PointerInfo mTexCoordPointer;
  boolean mTextureCoordArrayEnabled;
  boolean mVertexArrayEnabled;
  private GLLogWrapper.PointerInfo mVertexPointer;

  public GLLogWrapper(GL paramGL, Writer paramWriter, boolean paramBoolean)
  {
    super(paramGL);
    this.mLog = paramWriter;
    this.mLogArgumentNames = paramBoolean;
  }

  private void arg(String paramString, float paramFloat)
  {
    arg(paramString, Float.toString(paramFloat));
  }

  private void arg(String paramString, int paramInt)
  {
    arg(paramString, Integer.toString(paramInt));
  }

  private void arg(String paramString, int paramInt, FloatBuffer paramFloatBuffer)
  {
    arg(paramString, toString(paramInt, paramFloatBuffer));
  }

  private void arg(String paramString, int paramInt, IntBuffer paramIntBuffer)
  {
    arg(paramString, toString(paramInt, 0, paramIntBuffer));
  }

  private void arg(String paramString, int paramInt, ShortBuffer paramShortBuffer)
  {
    arg(paramString, toString(paramInt, paramShortBuffer));
  }

  private void arg(String paramString, int paramInt1, float[] paramArrayOfFloat, int paramInt2)
  {
    arg(paramString, toString(paramInt1, paramArrayOfFloat, paramInt2));
  }

  private void arg(String paramString, int paramInt1, int[] paramArrayOfInt, int paramInt2)
  {
    arg(paramString, toString(paramInt1, 0, paramArrayOfInt, paramInt2));
  }

  private void arg(String paramString, int paramInt1, short[] paramArrayOfShort, int paramInt2)
  {
    arg(paramString, toString(paramInt1, paramArrayOfShort, paramInt2));
  }

  private void arg(String paramString1, String paramString2)
  {
    int i = this.mArgCount;
    this.mArgCount = (i + 1);
    if (i > 0)
      log(", ");
    if (this.mLogArgumentNames)
      log(paramString1 + "=");
    log(paramString2);
  }

  private void arg(String paramString, boolean paramBoolean)
  {
    arg(paramString, Boolean.toString(paramBoolean));
  }

  private void argPointer(int paramInt1, int paramInt2, int paramInt3, Buffer paramBuffer)
  {
    arg("size", paramInt1);
    arg("type", getPointerTypeName(paramInt2));
    arg("stride", paramInt3);
    arg("pointer", paramBuffer.toString());
  }

  private void begin(String paramString)
  {
    log(paramString + '(');
    this.mArgCount = 0;
  }

  private void bindArrays()
  {
    if (this.mColorArrayEnabled)
      this.mColorPointer.bindByteBuffer();
    if (this.mNormalArrayEnabled)
      this.mNormalPointer.bindByteBuffer();
    if (this.mTextureCoordArrayEnabled)
      this.mTexCoordPointer.bindByteBuffer();
    if (this.mVertexArrayEnabled)
      this.mVertexPointer.bindByteBuffer();
  }

  private void checkError()
  {
    int i = this.mgl.glGetError();
    if (i != 0)
      logLine("glError: " + Integer.toString(i));
  }

  private void doArrayElement(StringBuilder paramStringBuilder, boolean paramBoolean, String paramString, GLLogWrapper.PointerInfo paramPointerInfo, int paramInt)
  {
    if (!paramBoolean)
      return;
    paramStringBuilder.append(" ");
    paramStringBuilder.append(paramString + ":{");
    if (paramPointerInfo == null)
    {
      paramStringBuilder.append("undefined");
      return;
    }
    if (paramPointerInfo.mStride < 0)
    {
      paramStringBuilder.append("invalid stride");
      return;
    }
    int i = paramPointerInfo.getStride();
    ByteBuffer localByteBuffer = paramPointerInfo.mTempByteBuffer;
    int j = paramPointerInfo.mSize;
    int k = paramPointerInfo.mType;
    int m = paramPointerInfo.sizeof(k);
    int n = i * paramInt;
    int i1 = 0;
    if (i1 < j)
    {
      if (i1 > 0)
        paramStringBuilder.append(", ");
      switch (k)
      {
      default:
        paramStringBuilder.append("?");
      case 5120:
      case 5121:
      case 5122:
      case 5132:
      case 5126:
      }
      while (true)
      {
        n += m;
        i1++;
        break;
        paramStringBuilder.append(Integer.toString(localByteBuffer.get(n)));
        continue;
        paramStringBuilder.append(Integer.toString(0xFF & localByteBuffer.get(n)));
        continue;
        paramStringBuilder.append(Integer.toString(localByteBuffer.asShortBuffer().get(n / 2)));
        continue;
        paramStringBuilder.append(Integer.toString(localByteBuffer.asIntBuffer().get(n / 4)));
        continue;
        paramStringBuilder.append(Float.toString(localByteBuffer.asFloatBuffer().get(n / 4)));
      }
    }
    paramStringBuilder.append("}");
  }

  private void doElement(StringBuilder paramStringBuilder, int paramInt1, int paramInt2)
  {
    paramStringBuilder.append(" [" + paramInt1 + " : " + paramInt2 + "] =");
    doArrayElement(paramStringBuilder, this.mVertexArrayEnabled, "v", this.mVertexPointer, paramInt2);
    doArrayElement(paramStringBuilder, this.mNormalArrayEnabled, "n", this.mNormalPointer, paramInt2);
    doArrayElement(paramStringBuilder, this.mColorArrayEnabled, "c", this.mColorPointer, paramInt2);
    doArrayElement(paramStringBuilder, this.mTextureCoordArrayEnabled, "t", this.mTexCoordPointer, paramInt2);
    paramStringBuilder.append("\n");
  }

  private void end()
  {
    log(");\n");
    flush();
  }

  private void endLogIndices()
  {
    log(this.mStringBuilder.toString());
    unbindArrays();
  }

  private void flush()
  {
    try
    {
      this.mLog.flush();
      return;
    }
    catch (IOException localIOException)
    {
      this.mLog = null;
    }
  }

  private void formattedAppend(StringBuilder paramStringBuilder, int paramInt1, int paramInt2)
  {
    switch (paramInt2)
    {
    default:
      return;
    case 0:
      paramStringBuilder.append(paramInt1);
      return;
    case 1:
      paramStringBuilder.append(Float.intBitsToFloat(paramInt1));
      return;
    case 2:
    }
    paramStringBuilder.append(paramInt1 / 65536.0F);
  }

  private String getBeginMode(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return getHex(paramInt);
    case 0:
      return "GL_POINTS";
    case 1:
      return "GL_LINES";
    case 2:
      return "GL_LINE_LOOP";
    case 3:
      return "GL_LINE_STRIP";
    case 4:
      return "GL_TRIANGLES";
    case 5:
      return "GL_TRIANGLE_STRIP";
    case 6:
    }
    return "GL_TRIANGLE_FAN";
  }

  private String getCap(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return getHex(paramInt);
    case 2912:
      return "GL_FOG";
    case 2896:
      return "GL_LIGHTING";
    case 3553:
      return "GL_TEXTURE_2D";
    case 2884:
      return "GL_CULL_FACE";
    case 3008:
      return "GL_ALPHA_TEST";
    case 3042:
      return "GL_BLEND";
    case 3058:
      return "GL_COLOR_LOGIC_OP";
    case 3024:
      return "GL_DITHER";
    case 2960:
      return "GL_STENCIL_TEST";
    case 2929:
      return "GL_DEPTH_TEST";
    case 16384:
      return "GL_LIGHT0";
    case 16385:
      return "GL_LIGHT1";
    case 16386:
      return "GL_LIGHT2";
    case 16387:
      return "GL_LIGHT3";
    case 16388:
      return "GL_LIGHT4";
    case 16389:
      return "GL_LIGHT5";
    case 16390:
      return "GL_LIGHT6";
    case 16391:
      return "GL_LIGHT7";
    case 2832:
      return "GL_POINT_SMOOTH";
    case 2848:
      return "GL_LINE_SMOOTH";
    case 2903:
      return "GL_COLOR_MATERIAL";
    case 2977:
      return "GL_NORMALIZE";
    case 32826:
      return "GL_RESCALE_NORMAL";
    case 32884:
      return "GL_VERTEX_ARRAY";
    case 32885:
      return "GL_NORMAL_ARRAY";
    case 32886:
      return "GL_COLOR_ARRAY";
    case 32888:
      return "GL_TEXTURE_COORD_ARRAY";
    case 32925:
      return "GL_MULTISAMPLE";
    case 32926:
      return "GL_SAMPLE_ALPHA_TO_COVERAGE";
    case 32927:
      return "GL_SAMPLE_ALPHA_TO_ONE";
    case 32928:
      return "GL_SAMPLE_COVERAGE";
    case 3089:
    }
    return "GL_SCISSOR_TEST";
  }

  private String getClearBufferMask(int paramInt)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if ((paramInt & 0x100) != 0)
      localStringBuilder.append("GL_DEPTH_BUFFER_BIT");
    for (int i = paramInt & 0xFFFFFEFF; ; i = paramInt)
    {
      if ((i & 0x400) != 0)
      {
        if (localStringBuilder.length() > 0)
          localStringBuilder.append(" | ");
        localStringBuilder.append("GL_STENCIL_BUFFER_BIT");
        i &= -1025;
      }
      if ((i & 0x4000) != 0)
      {
        if (localStringBuilder.length() > 0)
          localStringBuilder.append(" | ");
        localStringBuilder.append("GL_COLOR_BUFFER_BIT");
        i &= -16385;
      }
      if (i != 0)
      {
        if (localStringBuilder.length() > 0)
          localStringBuilder.append(" | ");
        localStringBuilder.append(getHex(i));
      }
      return localStringBuilder.toString();
    }
  }

  private String getClientState(int paramInt)
  {
    switch (paramInt)
    {
    case 32887:
    default:
      return getHex(paramInt);
    case 32886:
      return "GL_COLOR_ARRAY";
    case 32884:
      return "GL_VERTEX_ARRAY";
    case 32885:
      return "GL_NORMAL_ARRAY";
    case 32888:
    }
    return "GL_TEXTURE_COORD_ARRAY";
  }

  public static String getErrorString(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return getHex(paramInt);
    case 0:
      return "GL_NO_ERROR";
    case 1280:
      return "GL_INVALID_ENUM";
    case 1281:
      return "GL_INVALID_VALUE";
    case 1282:
      return "GL_INVALID_OPERATION";
    case 1283:
      return "GL_STACK_OVERFLOW";
    case 1284:
      return "GL_STACK_UNDERFLOW";
    case 1285:
    }
    return "GL_OUT_OF_MEMORY";
  }

  private String getFaceName(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return getHex(paramInt);
    case 1032:
    }
    return "GL_FRONT_AND_BACK";
  }

  private String getFactor(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return getHex(paramInt);
    case 0:
      return "GL_ZERO";
    case 1:
      return "GL_ONE";
    case 768:
      return "GL_SRC_COLOR";
    case 769:
      return "GL_ONE_MINUS_SRC_COLOR";
    case 774:
      return "GL_DST_COLOR";
    case 775:
      return "GL_ONE_MINUS_DST_COLOR";
    case 770:
      return "GL_SRC_ALPHA";
    case 771:
      return "GL_ONE_MINUS_SRC_ALPHA";
    case 772:
      return "GL_DST_ALPHA";
    case 773:
      return "GL_ONE_MINUS_DST_ALPHA";
    case 776:
    }
    return "GL_SRC_ALPHA_SATURATE";
  }

  private String getFogPName(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return getHex(paramInt);
    case 2914:
      return "GL_FOG_DENSITY";
    case 2915:
      return "GL_FOG_START";
    case 2916:
      return "GL_FOG_END";
    case 2917:
      return "GL_FOG_MODE";
    case 2918:
    }
    return "GL_FOG_COLOR";
  }

  private int getFogParamCount(int paramInt)
  {
    int i = 1;
    switch (paramInt)
    {
    default:
      i = 0;
    case 2914:
    case 2915:
    case 2916:
    case 2917:
      return i;
    case 2918:
    }
    return 4;
  }

  private static String getHex(int paramInt)
  {
    return "0x" + Integer.toHexString(paramInt);
  }

  private String getHintMode(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return getHex(paramInt);
    case 4353:
      return "GL_FASTEST";
    case 4354:
      return "GL_NICEST";
    case 4352:
    }
    return "GL_DONT_CARE";
  }

  private String getHintTarget(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return getHex(paramInt);
    case 3156:
      return "GL_FOG_HINT";
    case 3154:
      return "GL_LINE_SMOOTH_HINT";
    case 3152:
      return "GL_PERSPECTIVE_CORRECTION_HINT";
    case 3153:
      return "GL_POINT_SMOOTH_HINT";
    case 3155:
      return "GL_POLYGON_SMOOTH_HINT";
    case 33170:
    }
    return "GL_GENERATE_MIPMAP_HINT";
  }

  private String getIndexType(int paramInt)
  {
    switch (paramInt)
    {
    case 5122:
    default:
      return getHex(paramInt);
    case 5123:
      return "GL_UNSIGNED_SHORT";
    case 5121:
    }
    return "GL_UNSIGNED_BYTE";
  }

  private int getIntegerStateFormat(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return 0;
    case 35213:
    case 35214:
    case 35215:
    }
    return 1;
  }

  private String getIntegerStateName(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return getHex(paramInt);
    case 3413:
      return "GL_ALPHA_BITS";
    case 33902:
      return "GL_ALIASED_LINE_WIDTH_RANGE";
    case 33901:
      return "GL_ALIASED_POINT_SIZE_RANGE";
    case 3412:
      return "GL_BLUE_BITS";
    case 34467:
      return "GL_COMPRESSED_TEXTURE_FORMATS";
    case 3414:
      return "GL_DEPTH_BITS";
    case 3411:
      return "GL_GREEN_BITS";
    case 33001:
      return "GL_MAX_ELEMENTS_INDICES";
    case 33000:
      return "GL_MAX_ELEMENTS_VERTICES";
    case 3377:
      return "GL_MAX_LIGHTS";
    case 3379:
      return "GL_MAX_TEXTURE_SIZE";
    case 3386:
      return "GL_MAX_VIEWPORT_DIMS";
    case 3382:
      return "GL_MAX_MODELVIEW_STACK_DEPTH";
    case 3384:
      return "GL_MAX_PROJECTION_STACK_DEPTH";
    case 3385:
      return "GL_MAX_TEXTURE_STACK_DEPTH";
    case 34018:
      return "GL_MAX_TEXTURE_UNITS";
    case 34466:
      return "GL_NUM_COMPRESSED_TEXTURE_FORMATS";
    case 3410:
      return "GL_RED_BITS";
    case 2850:
      return "GL_SMOOTH_LINE_WIDTH_RANGE";
    case 2834:
      return "GL_SMOOTH_POINT_SIZE_RANGE";
    case 3415:
      return "GL_STENCIL_BITS";
    case 3408:
      return "GL_SUBPIXEL_BITS";
    case 35213:
      return "GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OES";
    case 35214:
      return "GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OES";
    case 35215:
    }
    return "GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OES";
  }

  private int getIntegerStateSize(int paramInt)
  {
    int i = 1;
    switch (paramInt)
    {
    default:
      i = 0;
    case 3377:
    case 3379:
    case 3382:
    case 3384:
    case 3385:
    case 3408:
    case 3410:
    case 3411:
    case 3412:
    case 3413:
    case 3414:
    case 3415:
    case 33000:
    case 33001:
    case 34018:
    case 34466:
      return i;
    case 33902:
      return 2;
    case 33901:
      return 2;
    case 34467:
      int[] arrayOfInt = new int[i];
      this.mgl.glGetIntegerv(34466, arrayOfInt, 0);
      return arrayOfInt[0];
    case 3386:
      return 2;
    case 2850:
      return 2;
    case 2834:
      return 2;
    case 35213:
    case 35214:
    case 35215:
    }
    return 16;
  }

  private String getLightModelPName(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return getHex(paramInt);
    case 2899:
      return "GL_LIGHT_MODEL_AMBIENT";
    case 2898:
    }
    return "GL_LIGHT_MODEL_TWO_SIDE";
  }

  private int getLightModelParamCount(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return 0;
    case 2899:
      return 4;
    case 2898:
    }
    return 1;
  }

  private String getLightName(int paramInt)
  {
    if ((paramInt >= 16384) && (paramInt <= 16391))
      return "GL_LIGHT" + Integer.toString(paramInt);
    return getHex(paramInt);
  }

  private String getLightPName(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return getHex(paramInt);
    case 4608:
      return "GL_AMBIENT";
    case 4609:
      return "GL_DIFFUSE";
    case 4610:
      return "GL_SPECULAR";
    case 4611:
      return "GL_POSITION";
    case 4612:
      return "GL_SPOT_DIRECTION";
    case 4613:
      return "GL_SPOT_EXPONENT";
    case 4614:
      return "GL_SPOT_CUTOFF";
    case 4615:
      return "GL_CONSTANT_ATTENUATION";
    case 4616:
      return "GL_LINEAR_ATTENUATION";
    case 4617:
    }
    return "GL_QUADRATIC_ATTENUATION";
  }

  private int getLightParamCount(int paramInt)
  {
    int i = 4;
    switch (paramInt)
    {
    default:
      i = 0;
    case 4608:
    case 4609:
    case 4610:
    case 4611:
      return i;
    case 4612:
      return 3;
    case 4613:
      return 1;
    case 4614:
      return 1;
    case 4615:
      return 1;
    case 4616:
      return 1;
    case 4617:
    }
    return 1;
  }

  private String getMaterialPName(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return getHex(paramInt);
    case 4608:
      return "GL_AMBIENT";
    case 4609:
      return "GL_DIFFUSE";
    case 4610:
      return "GL_SPECULAR";
    case 5632:
      return "GL_EMISSION";
    case 5633:
      return "GL_SHININESS";
    case 5634:
    }
    return "GL_AMBIENT_AND_DIFFUSE";
  }

  private int getMaterialParamCount(int paramInt)
  {
    int i = 4;
    switch (paramInt)
    {
    default:
      i = 0;
    case 4608:
    case 4609:
    case 4610:
    case 5632:
    case 5634:
      return i;
    case 5633:
    }
    return 1;
  }

  private String getMatrixMode(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return getHex(paramInt);
    case 5888:
      return "GL_MODELVIEW";
    case 5889:
      return "GL_PROJECTION";
    case 5890:
    }
    return "GL_TEXTURE";
  }

  private String getPointerTypeName(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return getHex(paramInt);
    case 5120:
      return "GL_BYTE";
    case 5121:
      return "GL_UNSIGNED_BYTE";
    case 5122:
      return "GL_SHORT";
    case 5132:
      return "GL_FIXED";
    case 5126:
    }
    return "GL_FLOAT";
  }

  private String getShadeModel(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return getHex(paramInt);
    case 7424:
      return "GL_FLAT";
    case 7425:
    }
    return "GL_SMOOTH";
  }

  private String getTextureEnvPName(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return getHex(paramInt);
    case 8704:
      return "GL_TEXTURE_ENV_MODE";
    case 8705:
    }
    return "GL_TEXTURE_ENV_COLOR";
  }

  private int getTextureEnvParamCount(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return 0;
    case 8704:
      return 1;
    case 8705:
    }
    return 4;
  }

  private String getTextureEnvParamName(float paramFloat)
  {
    int i = (int)paramFloat;
    if (paramFloat == i)
    {
      switch (i)
      {
      default:
        return getHex(i);
      case 7681:
        return "GL_REPLACE";
      case 8448:
        return "GL_MODULATE";
      case 8449:
        return "GL_DECAL";
      case 3042:
        return "GL_BLEND";
      case 260:
        return "GL_ADD";
      case 34160:
      }
      return "GL_COMBINE";
    }
    return Float.toString(paramFloat);
  }

  private String getTextureEnvTarget(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return getHex(paramInt);
    case 8960:
    }
    return "GL_TEXTURE_ENV";
  }

  private String getTexturePName(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return getHex(paramInt);
    case 10240:
      return "GL_TEXTURE_MAG_FILTER";
    case 10241:
      return "GL_TEXTURE_MIN_FILTER";
    case 10242:
      return "GL_TEXTURE_WRAP_S";
    case 10243:
      return "GL_TEXTURE_WRAP_T";
    case 33169:
      return "GL_GENERATE_MIPMAP";
    case 35741:
    }
    return "GL_TEXTURE_CROP_RECT_OES";
  }

  private String getTextureParamName(float paramFloat)
  {
    int i = (int)paramFloat;
    if (paramFloat == i)
    {
      switch (i)
      {
      default:
        return getHex(i);
      case 33071:
        return "GL_CLAMP_TO_EDGE";
      case 10497:
        return "GL_REPEAT";
      case 9728:
        return "GL_NEAREST";
      case 9729:
        return "GL_LINEAR";
      case 9984:
        return "GL_NEAREST_MIPMAP_NEAREST";
      case 9985:
        return "GL_LINEAR_MIPMAP_NEAREST";
      case 9986:
        return "GL_NEAREST_MIPMAP_LINEAR";
      case 9987:
      }
      return "GL_LINEAR_MIPMAP_LINEAR";
    }
    return Float.toString(paramFloat);
  }

  private String getTextureTarget(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return getHex(paramInt);
    case 3553:
    }
    return "GL_TEXTURE_2D";
  }

  private void log(String paramString)
  {
    try
    {
      this.mLog.write(paramString);
      return;
    }
    catch (IOException localIOException)
    {
    }
  }

  private void logLine(String paramString)
  {
    log(paramString + '\n');
  }

  private void returns(int paramInt)
  {
    returns(Integer.toString(paramInt));
  }

  private void returns(String paramString)
  {
    log(") returns " + paramString + ";\n");
    flush();
  }

  private void startLogIndices()
  {
    this.mStringBuilder = new StringBuilder();
    this.mStringBuilder.append("\n");
    bindArrays();
  }

  private char[] toCharIndices(int paramInt1, int paramInt2, Buffer paramBuffer)
  {
    int i = 0;
    char[] arrayOfChar = new char[paramInt1];
    switch (paramInt2)
    {
    case 5122:
    default:
      return arrayOfChar;
    case 5121:
      ByteBuffer localByteBuffer = toByteBuffer(paramInt1, paramBuffer);
      byte[] arrayOfByte = localByteBuffer.array();
      int k = localByteBuffer.arrayOffset();
      while (i < paramInt1)
      {
        arrayOfChar[i] = ((char)(0xFF & arrayOfByte[(k + i)]));
        i++;
      }
    case 5123:
    }
    if ((paramBuffer instanceof CharBuffer));
    for (CharBuffer localCharBuffer = (CharBuffer)paramBuffer; ; localCharBuffer = toByteBuffer(paramInt1 * 2, paramBuffer).asCharBuffer())
    {
      int j = localCharBuffer.position();
      localCharBuffer.position(0);
      localCharBuffer.get(arrayOfChar);
      localCharBuffer.position(j);
      return arrayOfChar;
    }
  }

  private String toString(int paramInt1, int paramInt2, IntBuffer paramIntBuffer)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("{\n");
    for (int i = 0; i < paramInt1; i++)
    {
      localStringBuilder.append(" [" + i + "] = ");
      formattedAppend(localStringBuilder, paramIntBuffer.get(i), paramInt2);
      localStringBuilder.append('\n');
    }
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }

  private String toString(int paramInt1, int paramInt2, int[] paramArrayOfInt, int paramInt3)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("{\n");
    int i = paramArrayOfInt.length;
    int j = 0;
    if (j < paramInt1)
    {
      int k = paramInt3 + j;
      localStringBuilder.append(" [" + k + "] = ");
      if ((k < 0) || (k >= i))
        localStringBuilder.append("out of bounds");
      while (true)
      {
        localStringBuilder.append('\n');
        j++;
        break;
        formattedAppend(localStringBuilder, paramArrayOfInt[k], paramInt2);
      }
    }
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }

  private String toString(int paramInt, FloatBuffer paramFloatBuffer)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("{\n");
    for (int i = 0; i < paramInt; i++)
      localStringBuilder.append(" [" + i + "] = " + paramFloatBuffer.get(i) + '\n');
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }

  private String toString(int paramInt, ShortBuffer paramShortBuffer)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("{\n");
    for (int i = 0; i < paramInt; i++)
      localStringBuilder.append(" [" + i + "] = " + paramShortBuffer.get(i) + '\n');
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }

  private String toString(int paramInt1, float[] paramArrayOfFloat, int paramInt2)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("{\n");
    int i = paramArrayOfFloat.length;
    int j = 0;
    if (j < paramInt1)
    {
      int k = paramInt2 + j;
      localStringBuilder.append("[" + k + "] = ");
      if ((k < 0) || (k >= i))
        localStringBuilder.append("out of bounds");
      while (true)
      {
        localStringBuilder.append('\n');
        j++;
        break;
        localStringBuilder.append(paramArrayOfFloat[k]);
      }
    }
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }

  private String toString(int paramInt1, short[] paramArrayOfShort, int paramInt2)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("{\n");
    int i = paramArrayOfShort.length;
    int j = 0;
    if (j < paramInt1)
    {
      int k = paramInt2 + j;
      localStringBuilder.append(" [" + k + "] = ");
      if ((k < 0) || (k >= i))
        localStringBuilder.append("out of bounds");
      while (true)
      {
        localStringBuilder.append('\n');
        j++;
        break;
        localStringBuilder.append(paramArrayOfShort[k]);
      }
    }
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }

  private void unbindArrays()
  {
    if (this.mColorArrayEnabled)
      this.mColorPointer.unbindByteBuffer();
    if (this.mNormalArrayEnabled)
      this.mNormalPointer.unbindByteBuffer();
    if (this.mTextureCoordArrayEnabled)
      this.mTexCoordPointer.unbindByteBuffer();
    if (this.mVertexArrayEnabled)
      this.mVertexPointer.unbindByteBuffer();
  }

  public void glActiveTexture(int paramInt)
  {
    begin("glActiveTexture");
    arg("texture", paramInt);
    end();
    this.mgl.glActiveTexture(paramInt);
    checkError();
  }

  public void glAlphaFunc(int paramInt, float paramFloat)
  {
    begin("glAlphaFunc");
    arg("func", paramInt);
    arg("ref", paramFloat);
    end();
    this.mgl.glAlphaFunc(paramInt, paramFloat);
    checkError();
  }

  public void glAlphaFuncx(int paramInt1, int paramInt2)
  {
    begin("glAlphaFuncx");
    arg("func", paramInt1);
    arg("ref", paramInt2);
    end();
    this.mgl.glAlphaFuncx(paramInt1, paramInt2);
    checkError();
  }

  public void glBindBuffer(int paramInt1, int paramInt2)
  {
    throw new UnsupportedOperationException();
  }

  public void glBindTexture(int paramInt1, int paramInt2)
  {
    begin("glBindTexture");
    arg("target", getTextureTarget(paramInt1));
    arg("texture", paramInt2);
    end();
    this.mgl.glBindTexture(paramInt1, paramInt2);
    checkError();
  }

  public void glBlendFunc(int paramInt1, int paramInt2)
  {
    begin("glBlendFunc");
    arg("sfactor", getFactor(paramInt1));
    arg("dfactor", getFactor(paramInt2));
    end();
    this.mgl.glBlendFunc(paramInt1, paramInt2);
    checkError();
  }

  public void glBufferData(int paramInt1, int paramInt2, Buffer paramBuffer, int paramInt3)
  {
    throw new UnsupportedOperationException();
  }

  public void glBufferSubData(int paramInt1, int paramInt2, int paramInt3, Buffer paramBuffer)
  {
    throw new UnsupportedOperationException();
  }

  public void glClear(int paramInt)
  {
    begin("glClear");
    arg("mask", getClearBufferMask(paramInt));
    end();
    this.mgl.glClear(paramInt);
    checkError();
  }

  public void glClearColor(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    begin("glClearColor");
    arg("red", paramFloat1);
    arg("green", paramFloat2);
    arg("blue", paramFloat3);
    arg("alpha", paramFloat4);
    end();
    this.mgl.glClearColor(paramFloat1, paramFloat2, paramFloat3, paramFloat4);
    checkError();
  }

  public void glClearColorx(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    begin("glClearColor");
    arg("red", paramInt1);
    arg("green", paramInt2);
    arg("blue", paramInt3);
    arg("alpha", paramInt4);
    end();
    this.mgl.glClearColorx(paramInt1, paramInt2, paramInt3, paramInt4);
    checkError();
  }

  public void glClearDepthf(float paramFloat)
  {
    begin("glClearDepthf");
    arg("depth", paramFloat);
    end();
    this.mgl.glClearDepthf(paramFloat);
    checkError();
  }

  public void glClearDepthx(int paramInt)
  {
    begin("glClearDepthx");
    arg("depth", paramInt);
    end();
    this.mgl.glClearDepthx(paramInt);
    checkError();
  }

  public void glClearStencil(int paramInt)
  {
    begin("glClearStencil");
    arg("s", paramInt);
    end();
    this.mgl.glClearStencil(paramInt);
    checkError();
  }

  public void glClientActiveTexture(int paramInt)
  {
    begin("glClientActiveTexture");
    arg("texture", paramInt);
    end();
    this.mgl.glClientActiveTexture(paramInt);
    checkError();
  }

  public void glClipPlanef(int paramInt, FloatBuffer paramFloatBuffer)
  {
    begin("glClipPlanef");
    arg("plane", paramInt);
    arg("equation", 4, paramFloatBuffer);
    end();
    this.mgl11.glClipPlanef(paramInt, paramFloatBuffer);
    checkError();
  }

  public void glClipPlanef(int paramInt1, float[] paramArrayOfFloat, int paramInt2)
  {
    begin("glClipPlanef");
    arg("plane", paramInt1);
    arg("equation", 4, paramArrayOfFloat, paramInt2);
    arg("offset", paramInt2);
    end();
    this.mgl11.glClipPlanef(paramInt1, paramArrayOfFloat, paramInt2);
    checkError();
  }

  public void glClipPlanex(int paramInt, IntBuffer paramIntBuffer)
  {
    begin("glClipPlanef");
    arg("plane", paramInt);
    arg("equation", 4, paramIntBuffer);
    end();
    this.mgl11.glClipPlanex(paramInt, paramIntBuffer);
    checkError();
  }

  public void glClipPlanex(int paramInt1, int[] paramArrayOfInt, int paramInt2)
  {
    begin("glClipPlanex");
    arg("plane", paramInt1);
    arg("equation", 4, paramArrayOfInt, paramInt2);
    arg("offset", paramInt2);
    end();
    this.mgl11.glClipPlanex(paramInt1, paramArrayOfInt, paramInt2);
    checkError();
  }

  public void glColor4f(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    begin("glColor4f");
    arg("red", paramFloat1);
    arg("green", paramFloat2);
    arg("blue", paramFloat3);
    arg("alpha", paramFloat4);
    end();
    this.mgl.glColor4f(paramFloat1, paramFloat2, paramFloat3, paramFloat4);
    checkError();
  }

  public void glColor4ub(byte paramByte1, byte paramByte2, byte paramByte3, byte paramByte4)
  {
    throw new UnsupportedOperationException();
  }

  public void glColor4x(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    begin("glColor4x");
    arg("red", paramInt1);
    arg("green", paramInt2);
    arg("blue", paramInt3);
    arg("alpha", paramInt4);
    end();
    this.mgl.glColor4x(paramInt1, paramInt2, paramInt3, paramInt4);
    checkError();
  }

  public void glColorMask(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4)
  {
    begin("glColorMask");
    arg("red", paramBoolean1);
    arg("green", paramBoolean2);
    arg("blue", paramBoolean3);
    arg("alpha", paramBoolean4);
    end();
    this.mgl.glColorMask(paramBoolean1, paramBoolean2, paramBoolean3, paramBoolean4);
    checkError();
  }

  public void glColorPointer(int paramInt1, int paramInt2, int paramInt3, Buffer paramBuffer)
  {
    begin("glColorPointer");
    argPointer(paramInt1, paramInt2, paramInt3, paramBuffer);
    end();
    this.mColorPointer = new GLLogWrapper.PointerInfo(this, paramInt1, paramInt2, paramInt3, paramBuffer);
    this.mgl.glColorPointer(paramInt1, paramInt2, paramInt3, paramBuffer);
    checkError();
  }

  public void glCompressedTexImage2D(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, Buffer paramBuffer)
  {
    begin("glCompressedTexImage2D");
    arg("target", getTextureTarget(paramInt1));
    arg("level", paramInt2);
    arg("internalformat", paramInt3);
    arg("width", paramInt4);
    arg("height", paramInt5);
    arg("border", paramInt6);
    arg("imageSize", paramInt7);
    arg("data", paramBuffer.toString());
    end();
    this.mgl.glCompressedTexImage2D(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7, paramBuffer);
    checkError();
  }

  public void glCompressedTexSubImage2D(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8, Buffer paramBuffer)
  {
    begin("glCompressedTexSubImage2D");
    arg("target", getTextureTarget(paramInt1));
    arg("level", paramInt2);
    arg("xoffset", paramInt3);
    arg("yoffset", paramInt4);
    arg("width", paramInt5);
    arg("height", paramInt6);
    arg("format", paramInt7);
    arg("imageSize", paramInt8);
    arg("data", paramBuffer.toString());
    end();
    this.mgl.glCompressedTexSubImage2D(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7, paramInt8, paramBuffer);
    checkError();
  }

  public void glCopyTexImage2D(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8)
  {
    begin("glCopyTexImage2D");
    arg("target", getTextureTarget(paramInt1));
    arg("level", paramInt2);
    arg("internalformat", paramInt3);
    arg("x", paramInt4);
    arg("y", paramInt5);
    arg("width", paramInt6);
    arg("height", paramInt7);
    arg("border", paramInt8);
    end();
    this.mgl.glCopyTexImage2D(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7, paramInt8);
    checkError();
  }

  public void glCopyTexSubImage2D(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8)
  {
    begin("glCopyTexSubImage2D");
    arg("target", getTextureTarget(paramInt1));
    arg("level", paramInt2);
    arg("xoffset", paramInt3);
    arg("yoffset", paramInt4);
    arg("x", paramInt5);
    arg("y", paramInt6);
    arg("width", paramInt7);
    arg("height", paramInt8);
    end();
    this.mgl.glCopyTexSubImage2D(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7, paramInt8);
    checkError();
  }

  public void glCullFace(int paramInt)
  {
    begin("glCullFace");
    arg("mode", paramInt);
    end();
    this.mgl.glCullFace(paramInt);
    checkError();
  }

  public void glDeleteBuffers(int paramInt, IntBuffer paramIntBuffer)
  {
    throw new UnsupportedOperationException();
  }

  public void glDeleteBuffers(int paramInt1, int[] paramArrayOfInt, int paramInt2)
  {
    throw new UnsupportedOperationException();
  }

  public void glDeleteTextures(int paramInt, IntBuffer paramIntBuffer)
  {
    begin("glDeleteTextures");
    arg("n", paramInt);
    arg("textures", paramInt, paramIntBuffer);
    end();
    this.mgl.glDeleteTextures(paramInt, paramIntBuffer);
    checkError();
  }

  public void glDeleteTextures(int paramInt1, int[] paramArrayOfInt, int paramInt2)
  {
    begin("glDeleteTextures");
    arg("n", paramInt1);
    arg("textures", paramInt1, paramArrayOfInt, paramInt2);
    arg("offset", paramInt2);
    end();
    this.mgl.glDeleteTextures(paramInt1, paramArrayOfInt, paramInt2);
    checkError();
  }

  public void glDepthFunc(int paramInt)
  {
    begin("glDepthFunc");
    arg("func", paramInt);
    end();
    this.mgl.glDepthFunc(paramInt);
    checkError();
  }

  public void glDepthMask(boolean paramBoolean)
  {
    begin("glDepthMask");
    arg("flag", paramBoolean);
    end();
    this.mgl.glDepthMask(paramBoolean);
    checkError();
  }

  public void glDepthRangef(float paramFloat1, float paramFloat2)
  {
    begin("glDepthRangef");
    arg("near", paramFloat1);
    arg("far", paramFloat2);
    end();
    this.mgl.glDepthRangef(paramFloat1, paramFloat2);
    checkError();
  }

  public void glDepthRangex(int paramInt1, int paramInt2)
  {
    begin("glDepthRangex");
    arg("near", paramInt1);
    arg("far", paramInt2);
    end();
    this.mgl.glDepthRangex(paramInt1, paramInt2);
    checkError();
  }

  public void glDisable(int paramInt)
  {
    begin("glDisable");
    arg("cap", getCap(paramInt));
    end();
    this.mgl.glDisable(paramInt);
    checkError();
  }

  public void glDisableClientState(int paramInt)
  {
    begin("glDisableClientState");
    arg("array", getClientState(paramInt));
    end();
    switch (paramInt)
    {
    case 32887:
    default:
    case 32886:
    case 32885:
    case 32888:
    case 32884:
    }
    while (true)
    {
      this.mgl.glDisableClientState(paramInt);
      checkError();
      return;
      this.mColorArrayEnabled = false;
      continue;
      this.mNormalArrayEnabled = false;
      continue;
      this.mTextureCoordArrayEnabled = false;
      continue;
      this.mVertexArrayEnabled = false;
    }
  }

  public void glDrawArrays(int paramInt1, int paramInt2, int paramInt3)
  {
    begin("glDrawArrays");
    arg("mode", paramInt1);
    arg("first", paramInt2);
    arg("count", paramInt3);
    startLogIndices();
    for (int i = 0; i < paramInt3; i++)
      doElement(this.mStringBuilder, i, paramInt2 + i);
    endLogIndices();
    end();
    this.mgl.glDrawArrays(paramInt1, paramInt2, paramInt3);
    checkError();
  }

  public void glDrawElements(int paramInt1, int paramInt2, int paramInt3, Buffer paramBuffer)
  {
    begin("glDrawElements");
    arg("mode", getBeginMode(paramInt1));
    arg("count", paramInt2);
    arg("type", getIndexType(paramInt3));
    char[] arrayOfChar = toCharIndices(paramInt2, paramInt3, paramBuffer);
    int i = arrayOfChar.length;
    startLogIndices();
    for (int j = 0; j < i; j++)
      doElement(this.mStringBuilder, j, arrayOfChar[j]);
    endLogIndices();
    end();
    this.mgl.glDrawElements(paramInt1, paramInt2, paramInt3, paramBuffer);
    checkError();
  }

  public void glDrawTexfOES(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5)
  {
    begin("glDrawTexfOES");
    arg("x", paramFloat1);
    arg("y", paramFloat2);
    arg("z", paramFloat3);
    arg("width", paramFloat4);
    arg("height", paramFloat5);
    end();
    this.mgl11Ext.glDrawTexfOES(paramFloat1, paramFloat2, paramFloat3, paramFloat4, paramFloat5);
    checkError();
  }

  public void glDrawTexfvOES(FloatBuffer paramFloatBuffer)
  {
    begin("glDrawTexfvOES");
    arg("coords", 5, paramFloatBuffer);
    end();
    this.mgl11Ext.glDrawTexfvOES(paramFloatBuffer);
    checkError();
  }

  public void glDrawTexfvOES(float[] paramArrayOfFloat, int paramInt)
  {
    begin("glDrawTexfvOES");
    arg("coords", 5, paramArrayOfFloat, paramInt);
    arg("offset", paramInt);
    end();
    this.mgl11Ext.glDrawTexfvOES(paramArrayOfFloat, paramInt);
    checkError();
  }

  public void glDrawTexiOES(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    begin("glDrawTexiOES");
    arg("x", paramInt1);
    arg("y", paramInt2);
    arg("z", paramInt3);
    arg("width", paramInt4);
    arg("height", paramInt5);
    end();
    this.mgl11Ext.glDrawTexiOES(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5);
    checkError();
  }

  public void glDrawTexivOES(IntBuffer paramIntBuffer)
  {
    begin("glDrawTexivOES");
    arg("coords", 5, paramIntBuffer);
    end();
    this.mgl11Ext.glDrawTexivOES(paramIntBuffer);
    checkError();
  }

  public void glDrawTexivOES(int[] paramArrayOfInt, int paramInt)
  {
    begin("glDrawTexivOES");
    arg("coords", 5, paramArrayOfInt, paramInt);
    arg("offset", paramInt);
    end();
    this.mgl11Ext.glDrawTexivOES(paramArrayOfInt, paramInt);
    checkError();
  }

  public void glDrawTexsOES(short paramShort1, short paramShort2, short paramShort3, short paramShort4, short paramShort5)
  {
    begin("glDrawTexsOES");
    arg("x", paramShort1);
    arg("y", paramShort2);
    arg("z", paramShort3);
    arg("width", paramShort4);
    arg("height", paramShort5);
    end();
    this.mgl11Ext.glDrawTexsOES(paramShort1, paramShort2, paramShort3, paramShort4, paramShort5);
    checkError();
  }

  public void glDrawTexsvOES(ShortBuffer paramShortBuffer)
  {
    begin("glDrawTexsvOES");
    arg("coords", 5, paramShortBuffer);
    end();
    this.mgl11Ext.glDrawTexsvOES(paramShortBuffer);
    checkError();
  }

  public void glDrawTexsvOES(short[] paramArrayOfShort, int paramInt)
  {
    begin("glDrawTexsvOES");
    arg("coords", 5, paramArrayOfShort, paramInt);
    arg("offset", paramInt);
    end();
    this.mgl11Ext.glDrawTexsvOES(paramArrayOfShort, paramInt);
    checkError();
  }

  public void glDrawTexxOES(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    begin("glDrawTexxOES");
    arg("x", paramInt1);
    arg("y", paramInt2);
    arg("z", paramInt3);
    arg("width", paramInt4);
    arg("height", paramInt5);
    end();
    this.mgl11Ext.glDrawTexxOES(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5);
    checkError();
  }

  public void glDrawTexxvOES(IntBuffer paramIntBuffer)
  {
    begin("glDrawTexxvOES");
    arg("coords", 5, paramIntBuffer);
    end();
    this.mgl11Ext.glDrawTexxvOES(paramIntBuffer);
    checkError();
  }

  public void glDrawTexxvOES(int[] paramArrayOfInt, int paramInt)
  {
    begin("glDrawTexxvOES");
    arg("coords", 5, paramArrayOfInt, paramInt);
    arg("offset", paramInt);
    end();
    this.mgl11Ext.glDrawTexxvOES(paramArrayOfInt, paramInt);
    checkError();
  }

  public void glEnable(int paramInt)
  {
    begin("glEnable");
    arg("cap", getCap(paramInt));
    end();
    this.mgl.glEnable(paramInt);
    checkError();
  }

  public void glEnableClientState(int paramInt)
  {
    begin("glEnableClientState");
    arg("array", getClientState(paramInt));
    end();
    switch (paramInt)
    {
    case 32887:
    default:
    case 32886:
    case 32885:
    case 32888:
    case 32884:
    }
    while (true)
    {
      this.mgl.glEnableClientState(paramInt);
      checkError();
      return;
      this.mColorArrayEnabled = true;
      continue;
      this.mNormalArrayEnabled = true;
      continue;
      this.mTextureCoordArrayEnabled = true;
      continue;
      this.mVertexArrayEnabled = true;
    }
  }

  public void glFinish()
  {
    begin("glFinish");
    end();
    this.mgl.glFinish();
    checkError();
  }

  public void glFlush()
  {
    begin("glFlush");
    end();
    this.mgl.glFlush();
    checkError();
  }

  public void glFogf(int paramInt, float paramFloat)
  {
    begin("glFogf");
    arg("pname", paramInt);
    arg("param", paramFloat);
    end();
    this.mgl.glFogf(paramInt, paramFloat);
    checkError();
  }

  public void glFogfv(int paramInt, FloatBuffer paramFloatBuffer)
  {
    begin("glFogfv");
    arg("pname", getFogPName(paramInt));
    arg("params", getFogParamCount(paramInt), paramFloatBuffer);
    end();
    this.mgl.glFogfv(paramInt, paramFloatBuffer);
    checkError();
  }

  public void glFogfv(int paramInt1, float[] paramArrayOfFloat, int paramInt2)
  {
    begin("glFogfv");
    arg("pname", getFogPName(paramInt1));
    arg("params", getFogParamCount(paramInt1), paramArrayOfFloat, paramInt2);
    arg("offset", paramInt2);
    end();
    this.mgl.glFogfv(paramInt1, paramArrayOfFloat, paramInt2);
    checkError();
  }

  public void glFogx(int paramInt1, int paramInt2)
  {
    begin("glFogx");
    arg("pname", getFogPName(paramInt1));
    arg("param", paramInt2);
    end();
    this.mgl.glFogx(paramInt1, paramInt2);
    checkError();
  }

  public void glFogxv(int paramInt, IntBuffer paramIntBuffer)
  {
    begin("glFogxv");
    arg("pname", getFogPName(paramInt));
    arg("params", getFogParamCount(paramInt), paramIntBuffer);
    end();
    this.mgl.glFogxv(paramInt, paramIntBuffer);
    checkError();
  }

  public void glFogxv(int paramInt1, int[] paramArrayOfInt, int paramInt2)
  {
    begin("glFogxv");
    arg("pname", getFogPName(paramInt1));
    arg("params", getFogParamCount(paramInt1), paramArrayOfInt, paramInt2);
    arg("offset", paramInt2);
    end();
    this.mgl.glFogxv(paramInt1, paramArrayOfInt, paramInt2);
    checkError();
  }

  public void glFrontFace(int paramInt)
  {
    begin("glFrontFace");
    arg("mode", paramInt);
    end();
    this.mgl.glFrontFace(paramInt);
    checkError();
  }

  public void glFrustumf(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6)
  {
    begin("glFrustumf");
    arg("left", paramFloat1);
    arg("right", paramFloat2);
    arg("bottom", paramFloat3);
    arg("top", paramFloat4);
    arg("near", paramFloat5);
    arg("far", paramFloat6);
    end();
    this.mgl.glFrustumf(paramFloat1, paramFloat2, paramFloat3, paramFloat4, paramFloat5, paramFloat6);
    checkError();
  }

  public void glFrustumx(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6)
  {
    begin("glFrustumx");
    arg("left", paramInt1);
    arg("right", paramInt2);
    arg("bottom", paramInt3);
    arg("top", paramInt4);
    arg("near", paramInt5);
    arg("far", paramInt6);
    end();
    this.mgl.glFrustumx(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6);
    checkError();
  }

  public void glGenBuffers(int paramInt, IntBuffer paramIntBuffer)
  {
    throw new UnsupportedOperationException();
  }

  public void glGenBuffers(int paramInt1, int[] paramArrayOfInt, int paramInt2)
  {
    throw new UnsupportedOperationException();
  }

  public void glGenTextures(int paramInt, IntBuffer paramIntBuffer)
  {
    begin("glGenTextures");
    arg("n", paramInt);
    arg("textures", paramIntBuffer.toString());
    this.mgl.glGenTextures(paramInt, paramIntBuffer);
    returns(toString(paramInt, 0, paramIntBuffer));
    checkError();
  }

  public void glGenTextures(int paramInt1, int[] paramArrayOfInt, int paramInt2)
  {
    begin("glGenTextures");
    arg("n", paramInt1);
    arg("textures", Arrays.toString(paramArrayOfInt));
    arg("offset", paramInt2);
    this.mgl.glGenTextures(paramInt1, paramArrayOfInt, paramInt2);
    returns(toString(paramInt1, 0, paramArrayOfInt, paramInt2));
    checkError();
  }

  public void glGetBooleanv(int paramInt, IntBuffer paramIntBuffer)
  {
    throw new UnsupportedOperationException();
  }

  public void glGetBooleanv(int paramInt1, boolean[] paramArrayOfBoolean, int paramInt2)
  {
    throw new UnsupportedOperationException();
  }

  public void glGetBufferParameteriv(int paramInt1, int paramInt2, IntBuffer paramIntBuffer)
  {
    throw new UnsupportedOperationException();
  }

  public void glGetBufferParameteriv(int paramInt1, int paramInt2, int[] paramArrayOfInt, int paramInt3)
  {
    throw new UnsupportedOperationException();
  }

  public void glGetClipPlanef(int paramInt, FloatBuffer paramFloatBuffer)
  {
    throw new UnsupportedOperationException();
  }

  public void glGetClipPlanef(int paramInt1, float[] paramArrayOfFloat, int paramInt2)
  {
    throw new UnsupportedOperationException();
  }

  public void glGetClipPlanex(int paramInt, IntBuffer paramIntBuffer)
  {
    throw new UnsupportedOperationException();
  }

  public void glGetClipPlanex(int paramInt1, int[] paramArrayOfInt, int paramInt2)
  {
    throw new UnsupportedOperationException();
  }

  public int glGetError()
  {
    begin("glGetError");
    int i = this.mgl.glGetError();
    returns(i);
    return i;
  }

  public void glGetFixedv(int paramInt, IntBuffer paramIntBuffer)
  {
    throw new UnsupportedOperationException();
  }

  public void glGetFixedv(int paramInt1, int[] paramArrayOfInt, int paramInt2)
  {
    throw new UnsupportedOperationException();
  }

  public void glGetFloatv(int paramInt, FloatBuffer paramFloatBuffer)
  {
    throw new UnsupportedOperationException();
  }

  public void glGetFloatv(int paramInt1, float[] paramArrayOfFloat, int paramInt2)
  {
    throw new UnsupportedOperationException();
  }

  public void glGetIntegerv(int paramInt, IntBuffer paramIntBuffer)
  {
    begin("glGetIntegerv");
    arg("pname", getIntegerStateName(paramInt));
    arg("params", paramIntBuffer.toString());
    this.mgl.glGetIntegerv(paramInt, paramIntBuffer);
    returns(toString(getIntegerStateSize(paramInt), getIntegerStateFormat(paramInt), paramIntBuffer));
    checkError();
  }

  public void glGetIntegerv(int paramInt1, int[] paramArrayOfInt, int paramInt2)
  {
    begin("glGetIntegerv");
    arg("pname", getIntegerStateName(paramInt1));
    arg("params", Arrays.toString(paramArrayOfInt));
    arg("offset", paramInt2);
    this.mgl.glGetIntegerv(paramInt1, paramArrayOfInt, paramInt2);
    returns(toString(getIntegerStateSize(paramInt1), getIntegerStateFormat(paramInt1), paramArrayOfInt, paramInt2));
    checkError();
  }

  public void glGetLightfv(int paramInt1, int paramInt2, FloatBuffer paramFloatBuffer)
  {
    throw new UnsupportedOperationException();
  }

  public void glGetLightfv(int paramInt1, int paramInt2, float[] paramArrayOfFloat, int paramInt3)
  {
    throw new UnsupportedOperationException();
  }

  public void glGetLightxv(int paramInt1, int paramInt2, IntBuffer paramIntBuffer)
  {
    throw new UnsupportedOperationException();
  }

  public void glGetLightxv(int paramInt1, int paramInt2, int[] paramArrayOfInt, int paramInt3)
  {
    throw new UnsupportedOperationException();
  }

  public void glGetMaterialfv(int paramInt1, int paramInt2, FloatBuffer paramFloatBuffer)
  {
    throw new UnsupportedOperationException();
  }

  public void glGetMaterialfv(int paramInt1, int paramInt2, float[] paramArrayOfFloat, int paramInt3)
  {
    throw new UnsupportedOperationException();
  }

  public void glGetMaterialxv(int paramInt1, int paramInt2, IntBuffer paramIntBuffer)
  {
    throw new UnsupportedOperationException();
  }

  public void glGetMaterialxv(int paramInt1, int paramInt2, int[] paramArrayOfInt, int paramInt3)
  {
    throw new UnsupportedOperationException();
  }

  public String glGetString(int paramInt)
  {
    begin("glGetString");
    arg("name", paramInt);
    String str = this.mgl.glGetString(paramInt);
    returns(str);
    checkError();
    return str;
  }

  public void glGetTexEnviv(int paramInt1, int paramInt2, IntBuffer paramIntBuffer)
  {
    throw new UnsupportedOperationException();
  }

  public void glGetTexEnviv(int paramInt1, int paramInt2, int[] paramArrayOfInt, int paramInt3)
  {
    throw new UnsupportedOperationException();
  }

  public void glGetTexEnvxv(int paramInt1, int paramInt2, IntBuffer paramIntBuffer)
  {
    throw new UnsupportedOperationException();
  }

  public void glGetTexEnvxv(int paramInt1, int paramInt2, int[] paramArrayOfInt, int paramInt3)
  {
    throw new UnsupportedOperationException();
  }

  public void glGetTexParameterfv(int paramInt1, int paramInt2, FloatBuffer paramFloatBuffer)
  {
    throw new UnsupportedOperationException();
  }

  public void glGetTexParameterfv(int paramInt1, int paramInt2, float[] paramArrayOfFloat, int paramInt3)
  {
    throw new UnsupportedOperationException();
  }

  public void glGetTexParameteriv(int paramInt1, int paramInt2, IntBuffer paramIntBuffer)
  {
    throw new UnsupportedOperationException();
  }

  public void glGetTexParameteriv(int paramInt1, int paramInt2, int[] paramArrayOfInt, int paramInt3)
  {
    throw new UnsupportedOperationException();
  }

  public void glGetTexParameterxv(int paramInt1, int paramInt2, IntBuffer paramIntBuffer)
  {
    throw new UnsupportedOperationException();
  }

  public void glGetTexParameterxv(int paramInt1, int paramInt2, int[] paramArrayOfInt, int paramInt3)
  {
    throw new UnsupportedOperationException();
  }

  public void glHint(int paramInt1, int paramInt2)
  {
    begin("glHint");
    arg("target", getHintTarget(paramInt1));
    arg("mode", getHintMode(paramInt2));
    end();
    this.mgl.glHint(paramInt1, paramInt2);
    checkError();
  }

  public boolean glIsBuffer(int paramInt)
  {
    throw new UnsupportedOperationException();
  }

  public boolean glIsEnabled(int paramInt)
  {
    throw new UnsupportedOperationException();
  }

  public boolean glIsTexture(int paramInt)
  {
    throw new UnsupportedOperationException();
  }

  public void glLightModelf(int paramInt, float paramFloat)
  {
    begin("glLightModelf");
    arg("pname", getLightModelPName(paramInt));
    arg("param", paramFloat);
    end();
    this.mgl.glLightModelf(paramInt, paramFloat);
    checkError();
  }

  public void glLightModelfv(int paramInt, FloatBuffer paramFloatBuffer)
  {
    begin("glLightModelfv");
    arg("pname", getLightModelPName(paramInt));
    arg("params", getLightModelParamCount(paramInt), paramFloatBuffer);
    end();
    this.mgl.glLightModelfv(paramInt, paramFloatBuffer);
    checkError();
  }

  public void glLightModelfv(int paramInt1, float[] paramArrayOfFloat, int paramInt2)
  {
    begin("glLightModelfv");
    arg("pname", getLightModelPName(paramInt1));
    arg("params", getLightModelParamCount(paramInt1), paramArrayOfFloat, paramInt2);
    arg("offset", paramInt2);
    end();
    this.mgl.glLightModelfv(paramInt1, paramArrayOfFloat, paramInt2);
    checkError();
  }

  public void glLightModelx(int paramInt1, int paramInt2)
  {
    begin("glLightModelx");
    arg("pname", getLightModelPName(paramInt1));
    arg("param", paramInt2);
    end();
    this.mgl.glLightModelx(paramInt1, paramInt2);
    checkError();
  }

  public void glLightModelxv(int paramInt, IntBuffer paramIntBuffer)
  {
    begin("glLightModelfv");
    arg("pname", getLightModelPName(paramInt));
    arg("params", getLightModelParamCount(paramInt), paramIntBuffer);
    end();
    this.mgl.glLightModelxv(paramInt, paramIntBuffer);
    checkError();
  }

  public void glLightModelxv(int paramInt1, int[] paramArrayOfInt, int paramInt2)
  {
    begin("glLightModelxv");
    arg("pname", getLightModelPName(paramInt1));
    arg("params", getLightModelParamCount(paramInt1), paramArrayOfInt, paramInt2);
    arg("offset", paramInt2);
    end();
    this.mgl.glLightModelxv(paramInt1, paramArrayOfInt, paramInt2);
    checkError();
  }

  public void glLightf(int paramInt1, int paramInt2, float paramFloat)
  {
    begin("glLightf");
    arg("light", getLightName(paramInt1));
    arg("pname", getLightPName(paramInt2));
    arg("param", paramFloat);
    end();
    this.mgl.glLightf(paramInt1, paramInt2, paramFloat);
    checkError();
  }

  public void glLightfv(int paramInt1, int paramInt2, FloatBuffer paramFloatBuffer)
  {
    begin("glLightfv");
    arg("light", getLightName(paramInt1));
    arg("pname", getLightPName(paramInt2));
    arg("params", getLightParamCount(paramInt2), paramFloatBuffer);
    end();
    this.mgl.glLightfv(paramInt1, paramInt2, paramFloatBuffer);
    checkError();
  }

  public void glLightfv(int paramInt1, int paramInt2, float[] paramArrayOfFloat, int paramInt3)
  {
    begin("glLightfv");
    arg("light", getLightName(paramInt1));
    arg("pname", getLightPName(paramInt2));
    arg("params", getLightParamCount(paramInt2), paramArrayOfFloat, paramInt3);
    arg("offset", paramInt3);
    end();
    this.mgl.glLightfv(paramInt1, paramInt2, paramArrayOfFloat, paramInt3);
    checkError();
  }

  public void glLightx(int paramInt1, int paramInt2, int paramInt3)
  {
    begin("glLightx");
    arg("light", getLightName(paramInt1));
    arg("pname", getLightPName(paramInt2));
    arg("param", paramInt3);
    end();
    this.mgl.glLightx(paramInt1, paramInt2, paramInt3);
    checkError();
  }

  public void glLightxv(int paramInt1, int paramInt2, IntBuffer paramIntBuffer)
  {
    begin("glLightxv");
    arg("light", getLightName(paramInt1));
    arg("pname", getLightPName(paramInt2));
    arg("params", getLightParamCount(paramInt2), paramIntBuffer);
    end();
    this.mgl.glLightxv(paramInt1, paramInt2, paramIntBuffer);
    checkError();
  }

  public void glLightxv(int paramInt1, int paramInt2, int[] paramArrayOfInt, int paramInt3)
  {
    begin("glLightxv");
    arg("light", getLightName(paramInt1));
    arg("pname", getLightPName(paramInt2));
    arg("params", getLightParamCount(paramInt2), paramArrayOfInt, paramInt3);
    arg("offset", paramInt3);
    end();
    this.mgl.glLightxv(paramInt1, paramInt2, paramArrayOfInt, paramInt3);
    checkError();
  }

  public void glLineWidth(float paramFloat)
  {
    begin("glLineWidth");
    arg("width", paramFloat);
    end();
    this.mgl.glLineWidth(paramFloat);
    checkError();
  }

  public void glLineWidthx(int paramInt)
  {
    begin("glLineWidthx");
    arg("width", paramInt);
    end();
    this.mgl.glLineWidthx(paramInt);
    checkError();
  }

  public void glLoadIdentity()
  {
    begin("glLoadIdentity");
    end();
    this.mgl.glLoadIdentity();
    checkError();
  }

  public void glLoadMatrixf(FloatBuffer paramFloatBuffer)
  {
    begin("glLoadMatrixf");
    arg("m", 16, paramFloatBuffer);
    end();
    this.mgl.glLoadMatrixf(paramFloatBuffer);
    checkError();
  }

  public void glLoadMatrixf(float[] paramArrayOfFloat, int paramInt)
  {
    begin("glLoadMatrixf");
    arg("m", 16, paramArrayOfFloat, paramInt);
    arg("offset", paramInt);
    end();
    this.mgl.glLoadMatrixf(paramArrayOfFloat, paramInt);
    checkError();
  }

  public void glLoadMatrixx(IntBuffer paramIntBuffer)
  {
    begin("glLoadMatrixx");
    arg("m", 16, paramIntBuffer);
    end();
    this.mgl.glLoadMatrixx(paramIntBuffer);
    checkError();
  }

  public void glLoadMatrixx(int[] paramArrayOfInt, int paramInt)
  {
    begin("glLoadMatrixx");
    arg("m", 16, paramArrayOfInt, paramInt);
    arg("offset", paramInt);
    end();
    this.mgl.glLoadMatrixx(paramArrayOfInt, paramInt);
    checkError();
  }

  public void glLogicOp(int paramInt)
  {
    begin("glLogicOp");
    arg("opcode", paramInt);
    end();
    this.mgl.glLogicOp(paramInt);
    checkError();
  }

  public void glMaterialf(int paramInt1, int paramInt2, float paramFloat)
  {
    begin("glMaterialf");
    arg("face", getFaceName(paramInt1));
    arg("pname", getMaterialPName(paramInt2));
    arg("param", paramFloat);
    end();
    this.mgl.glMaterialf(paramInt1, paramInt2, paramFloat);
    checkError();
  }

  public void glMaterialfv(int paramInt1, int paramInt2, FloatBuffer paramFloatBuffer)
  {
    begin("glMaterialfv");
    arg("face", getFaceName(paramInt1));
    arg("pname", getMaterialPName(paramInt2));
    arg("params", getMaterialParamCount(paramInt2), paramFloatBuffer);
    end();
    this.mgl.glMaterialfv(paramInt1, paramInt2, paramFloatBuffer);
    checkError();
  }

  public void glMaterialfv(int paramInt1, int paramInt2, float[] paramArrayOfFloat, int paramInt3)
  {
    begin("glMaterialfv");
    arg("face", getFaceName(paramInt1));
    arg("pname", getMaterialPName(paramInt2));
    arg("params", getMaterialParamCount(paramInt2), paramArrayOfFloat, paramInt3);
    arg("offset", paramInt3);
    end();
    this.mgl.glMaterialfv(paramInt1, paramInt2, paramArrayOfFloat, paramInt3);
    checkError();
  }

  public void glMaterialx(int paramInt1, int paramInt2, int paramInt3)
  {
    begin("glMaterialx");
    arg("face", getFaceName(paramInt1));
    arg("pname", getMaterialPName(paramInt2));
    arg("param", paramInt3);
    end();
    this.mgl.glMaterialx(paramInt1, paramInt2, paramInt3);
    checkError();
  }

  public void glMaterialxv(int paramInt1, int paramInt2, IntBuffer paramIntBuffer)
  {
    begin("glMaterialxv");
    arg("face", getFaceName(paramInt1));
    arg("pname", getMaterialPName(paramInt2));
    arg("params", getMaterialParamCount(paramInt2), paramIntBuffer);
    end();
    this.mgl.glMaterialxv(paramInt1, paramInt2, paramIntBuffer);
    checkError();
  }

  public void glMaterialxv(int paramInt1, int paramInt2, int[] paramArrayOfInt, int paramInt3)
  {
    begin("glMaterialxv");
    arg("face", getFaceName(paramInt1));
    arg("pname", getMaterialPName(paramInt2));
    arg("params", getMaterialParamCount(paramInt2), paramArrayOfInt, paramInt3);
    arg("offset", paramInt3);
    end();
    this.mgl.glMaterialxv(paramInt1, paramInt2, paramArrayOfInt, paramInt3);
    checkError();
  }

  public void glMatrixMode(int paramInt)
  {
    begin("glMatrixMode");
    arg("mode", getMatrixMode(paramInt));
    end();
    this.mgl.glMatrixMode(paramInt);
    checkError();
  }

  public void glMultMatrixf(FloatBuffer paramFloatBuffer)
  {
    begin("glMultMatrixf");
    arg("m", 16, paramFloatBuffer);
    end();
    this.mgl.glMultMatrixf(paramFloatBuffer);
    checkError();
  }

  public void glMultMatrixf(float[] paramArrayOfFloat, int paramInt)
  {
    begin("glMultMatrixf");
    arg("m", 16, paramArrayOfFloat, paramInt);
    arg("offset", paramInt);
    end();
    this.mgl.glMultMatrixf(paramArrayOfFloat, paramInt);
    checkError();
  }

  public void glMultMatrixx(IntBuffer paramIntBuffer)
  {
    begin("glMultMatrixx");
    arg("m", 16, paramIntBuffer);
    end();
    this.mgl.glMultMatrixx(paramIntBuffer);
    checkError();
  }

  public void glMultMatrixx(int[] paramArrayOfInt, int paramInt)
  {
    begin("glMultMatrixx");
    arg("m", 16, paramArrayOfInt, paramInt);
    arg("offset", paramInt);
    end();
    this.mgl.glMultMatrixx(paramArrayOfInt, paramInt);
    checkError();
  }

  public void glMultiTexCoord4f(int paramInt, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    begin("glMultiTexCoord4f");
    arg("target", paramInt);
    arg("s", paramFloat1);
    arg("t", paramFloat2);
    arg("r", paramFloat3);
    arg("q", paramFloat4);
    end();
    this.mgl.glMultiTexCoord4f(paramInt, paramFloat1, paramFloat2, paramFloat3, paramFloat4);
    checkError();
  }

  public void glMultiTexCoord4x(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    begin("glMultiTexCoord4x");
    arg("target", paramInt1);
    arg("s", paramInt2);
    arg("t", paramInt3);
    arg("r", paramInt4);
    arg("q", paramInt5);
    end();
    this.mgl.glMultiTexCoord4x(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5);
    checkError();
  }

  public void glNormal3f(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    begin("glNormal3f");
    arg("nx", paramFloat1);
    arg("ny", paramFloat2);
    arg("nz", paramFloat3);
    end();
    this.mgl.glNormal3f(paramFloat1, paramFloat2, paramFloat3);
    checkError();
  }

  public void glNormal3x(int paramInt1, int paramInt2, int paramInt3)
  {
    begin("glNormal3x");
    arg("nx", paramInt1);
    arg("ny", paramInt2);
    arg("nz", paramInt3);
    end();
    this.mgl.glNormal3x(paramInt1, paramInt2, paramInt3);
    checkError();
  }

  public void glNormalPointer(int paramInt1, int paramInt2, Buffer paramBuffer)
  {
    begin("glNormalPointer");
    arg("type", paramInt1);
    arg("stride", paramInt2);
    arg("pointer", paramBuffer.toString());
    end();
    this.mNormalPointer = new GLLogWrapper.PointerInfo(this, 3, paramInt1, paramInt2, paramBuffer);
    this.mgl.glNormalPointer(paramInt1, paramInt2, paramBuffer);
    checkError();
  }

  public void glOrthof(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6)
  {
    begin("glOrthof");
    arg("left", paramFloat1);
    arg("right", paramFloat2);
    arg("bottom", paramFloat3);
    arg("top", paramFloat4);
    arg("near", paramFloat5);
    arg("far", paramFloat6);
    end();
    this.mgl.glOrthof(paramFloat1, paramFloat2, paramFloat3, paramFloat4, paramFloat5, paramFloat6);
    checkError();
  }

  public void glOrthox(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6)
  {
    begin("glOrthox");
    arg("left", paramInt1);
    arg("right", paramInt2);
    arg("bottom", paramInt3);
    arg("top", paramInt4);
    arg("near", paramInt5);
    arg("far", paramInt6);
    end();
    this.mgl.glOrthox(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6);
    checkError();
  }

  public void glPixelStorei(int paramInt1, int paramInt2)
  {
    begin("glPixelStorei");
    arg("pname", paramInt1);
    arg("param", paramInt2);
    end();
    this.mgl.glPixelStorei(paramInt1, paramInt2);
    checkError();
  }

  public void glPointParameterf(int paramInt, float paramFloat)
  {
    throw new UnsupportedOperationException();
  }

  public void glPointParameterfv(int paramInt, FloatBuffer paramFloatBuffer)
  {
    throw new UnsupportedOperationException();
  }

  public void glPointParameterfv(int paramInt1, float[] paramArrayOfFloat, int paramInt2)
  {
    throw new UnsupportedOperationException();
  }

  public void glPointParameterx(int paramInt1, int paramInt2)
  {
    throw new UnsupportedOperationException();
  }

  public void glPointParameterxv(int paramInt, IntBuffer paramIntBuffer)
  {
    throw new UnsupportedOperationException();
  }

  public void glPointParameterxv(int paramInt1, int[] paramArrayOfInt, int paramInt2)
  {
    throw new UnsupportedOperationException();
  }

  public void glPointSize(float paramFloat)
  {
    begin("glPointSize");
    arg("size", paramFloat);
    end();
    this.mgl.glPointSize(paramFloat);
    checkError();
  }

  public void glPointSizePointerOES(int paramInt1, int paramInt2, Buffer paramBuffer)
  {
    throw new UnsupportedOperationException();
  }

  public void glPointSizex(int paramInt)
  {
    begin("glPointSizex");
    arg("size", paramInt);
    end();
    this.mgl.glPointSizex(paramInt);
    checkError();
  }

  public void glPolygonOffset(float paramFloat1, float paramFloat2)
  {
    begin("glPolygonOffset");
    arg("factor", paramFloat1);
    arg("units", paramFloat2);
    end();
    this.mgl.glPolygonOffset(paramFloat1, paramFloat2);
    checkError();
  }

  public void glPolygonOffsetx(int paramInt1, int paramInt2)
  {
    begin("glPolygonOffsetx");
    arg("factor", paramInt1);
    arg("units", paramInt2);
    end();
    this.mgl.glPolygonOffsetx(paramInt1, paramInt2);
    checkError();
  }

  public void glPopMatrix()
  {
    begin("glPopMatrix");
    end();
    this.mgl.glPopMatrix();
    checkError();
  }

  public void glPushMatrix()
  {
    begin("glPushMatrix");
    end();
    this.mgl.glPushMatrix();
    checkError();
  }

  public int glQueryMatrixxOES(IntBuffer paramIntBuffer1, IntBuffer paramIntBuffer2)
  {
    begin("glQueryMatrixxOES");
    arg("mantissa", paramIntBuffer1.toString());
    arg("exponent", paramIntBuffer2.toString());
    end();
    int i = this.mgl10Ext.glQueryMatrixxOES(paramIntBuffer1, paramIntBuffer2);
    returns(toString(16, 2, paramIntBuffer1));
    returns(toString(16, 0, paramIntBuffer2));
    checkError();
    return i;
  }

  public int glQueryMatrixxOES(int[] paramArrayOfInt1, int paramInt1, int[] paramArrayOfInt2, int paramInt2)
  {
    begin("glQueryMatrixxOES");
    arg("mantissa", Arrays.toString(paramArrayOfInt1));
    arg("exponent", Arrays.toString(paramArrayOfInt2));
    end();
    int i = this.mgl10Ext.glQueryMatrixxOES(paramArrayOfInt1, paramInt1, paramArrayOfInt2, paramInt2);
    returns(toString(16, 2, paramArrayOfInt1, paramInt1));
    returns(toString(16, 0, paramArrayOfInt2, paramInt2));
    checkError();
    return i;
  }

  public void glReadPixels(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, Buffer paramBuffer)
  {
    begin("glReadPixels");
    arg("x", paramInt1);
    arg("y", paramInt2);
    arg("width", paramInt3);
    arg("height", paramInt4);
    arg("format", paramInt5);
    arg("type", paramInt6);
    arg("pixels", paramBuffer.toString());
    end();
    this.mgl.glReadPixels(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramBuffer);
    checkError();
  }

  public void glRotatef(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    begin("glRotatef");
    arg("angle", paramFloat1);
    arg("x", paramFloat2);
    arg("y", paramFloat3);
    arg("z", paramFloat4);
    end();
    this.mgl.glRotatef(paramFloat1, paramFloat2, paramFloat3, paramFloat4);
    checkError();
  }

  public void glRotatex(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    begin("glRotatex");
    arg("angle", paramInt1);
    arg("x", paramInt2);
    arg("y", paramInt3);
    arg("z", paramInt4);
    end();
    this.mgl.glRotatex(paramInt1, paramInt2, paramInt3, paramInt4);
    checkError();
  }

  public void glSampleCoverage(float paramFloat, boolean paramBoolean)
  {
    begin("glSampleCoveragex");
    arg("value", paramFloat);
    arg("invert", paramBoolean);
    end();
    this.mgl.glSampleCoverage(paramFloat, paramBoolean);
    checkError();
  }

  public void glSampleCoveragex(int paramInt, boolean paramBoolean)
  {
    begin("glSampleCoveragex");
    arg("value", paramInt);
    arg("invert", paramBoolean);
    end();
    this.mgl.glSampleCoveragex(paramInt, paramBoolean);
    checkError();
  }

  public void glScalef(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    begin("glScalef");
    arg("x", paramFloat1);
    arg("y", paramFloat2);
    arg("z", paramFloat3);
    end();
    this.mgl.glScalef(paramFloat1, paramFloat2, paramFloat3);
    checkError();
  }

  public void glScalex(int paramInt1, int paramInt2, int paramInt3)
  {
    begin("glScalex");
    arg("x", paramInt1);
    arg("y", paramInt2);
    arg("z", paramInt3);
    end();
    this.mgl.glScalex(paramInt1, paramInt2, paramInt3);
    checkError();
  }

  public void glScissor(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    begin("glScissor");
    arg("x", paramInt1);
    arg("y", paramInt2);
    arg("width", paramInt3);
    arg("height", paramInt4);
    end();
    this.mgl.glScissor(paramInt1, paramInt2, paramInt3, paramInt4);
    checkError();
  }

  public void glShadeModel(int paramInt)
  {
    begin("glShadeModel");
    arg("mode", getShadeModel(paramInt));
    end();
    this.mgl.glShadeModel(paramInt);
    checkError();
  }

  public void glStencilFunc(int paramInt1, int paramInt2, int paramInt3)
  {
    begin("glStencilFunc");
    arg("func", paramInt1);
    arg("ref", paramInt2);
    arg("mask", paramInt3);
    end();
    this.mgl.glStencilFunc(paramInt1, paramInt2, paramInt3);
    checkError();
  }

  public void glStencilMask(int paramInt)
  {
    begin("glStencilMask");
    arg("mask", paramInt);
    end();
    this.mgl.glStencilMask(paramInt);
    checkError();
  }

  public void glStencilOp(int paramInt1, int paramInt2, int paramInt3)
  {
    begin("glStencilOp");
    arg("fail", paramInt1);
    arg("zfail", paramInt2);
    arg("zpass", paramInt3);
    end();
    this.mgl.glStencilOp(paramInt1, paramInt2, paramInt3);
    checkError();
  }

  public void glTexCoordPointer(int paramInt1, int paramInt2, int paramInt3, Buffer paramBuffer)
  {
    begin("glTexCoordPointer");
    argPointer(paramInt1, paramInt2, paramInt3, paramBuffer);
    end();
    this.mTexCoordPointer = new GLLogWrapper.PointerInfo(this, paramInt1, paramInt2, paramInt3, paramBuffer);
    this.mgl.glTexCoordPointer(paramInt1, paramInt2, paramInt3, paramBuffer);
    checkError();
  }

  public void glTexEnvf(int paramInt1, int paramInt2, float paramFloat)
  {
    begin("glTexEnvf");
    arg("target", getTextureEnvTarget(paramInt1));
    arg("pname", getTextureEnvPName(paramInt2));
    arg("param", getTextureEnvParamName(paramFloat));
    end();
    this.mgl.glTexEnvf(paramInt1, paramInt2, paramFloat);
    checkError();
  }

  public void glTexEnvfv(int paramInt1, int paramInt2, FloatBuffer paramFloatBuffer)
  {
    begin("glTexEnvfv");
    arg("target", getTextureEnvTarget(paramInt1));
    arg("pname", getTextureEnvPName(paramInt2));
    arg("params", getTextureEnvParamCount(paramInt2), paramFloatBuffer);
    end();
    this.mgl.glTexEnvfv(paramInt1, paramInt2, paramFloatBuffer);
    checkError();
  }

  public void glTexEnvfv(int paramInt1, int paramInt2, float[] paramArrayOfFloat, int paramInt3)
  {
    begin("glTexEnvfv");
    arg("target", getTextureEnvTarget(paramInt1));
    arg("pname", getTextureEnvPName(paramInt2));
    arg("params", getTextureEnvParamCount(paramInt2), paramArrayOfFloat, paramInt3);
    arg("offset", paramInt3);
    end();
    this.mgl.glTexEnvfv(paramInt1, paramInt2, paramArrayOfFloat, paramInt3);
    checkError();
  }

  public void glTexEnvi(int paramInt1, int paramInt2, int paramInt3)
  {
    throw new UnsupportedOperationException();
  }

  public void glTexEnviv(int paramInt1, int paramInt2, IntBuffer paramIntBuffer)
  {
    throw new UnsupportedOperationException();
  }

  public void glTexEnviv(int paramInt1, int paramInt2, int[] paramArrayOfInt, int paramInt3)
  {
    throw new UnsupportedOperationException();
  }

  public void glTexEnvx(int paramInt1, int paramInt2, int paramInt3)
  {
    begin("glTexEnvx");
    arg("target", getTextureEnvTarget(paramInt1));
    arg("pname", getTextureEnvPName(paramInt2));
    arg("param", paramInt3);
    end();
    this.mgl.glTexEnvx(paramInt1, paramInt2, paramInt3);
    checkError();
  }

  public void glTexEnvxv(int paramInt1, int paramInt2, IntBuffer paramIntBuffer)
  {
    begin("glTexEnvxv");
    arg("target", getTextureEnvTarget(paramInt1));
    arg("pname", getTextureEnvPName(paramInt2));
    arg("params", getTextureEnvParamCount(paramInt2), paramIntBuffer);
    end();
    this.mgl.glTexEnvxv(paramInt1, paramInt2, paramIntBuffer);
    checkError();
  }

  public void glTexEnvxv(int paramInt1, int paramInt2, int[] paramArrayOfInt, int paramInt3)
  {
    begin("glTexEnvxv");
    arg("target", getTextureEnvTarget(paramInt1));
    arg("pname", getTextureEnvPName(paramInt2));
    arg("params", getTextureEnvParamCount(paramInt2), paramArrayOfInt, paramInt3);
    arg("offset", paramInt3);
    end();
    this.mgl.glTexEnvxv(paramInt1, paramInt2, paramArrayOfInt, paramInt3);
    checkError();
  }

  public void glTexImage2D(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8, Buffer paramBuffer)
  {
    begin("glTexImage2D");
    arg("target", paramInt1);
    arg("level", paramInt2);
    arg("internalformat", paramInt3);
    arg("width", paramInt4);
    arg("height", paramInt5);
    arg("border", paramInt6);
    arg("format", paramInt7);
    arg("type", paramInt8);
    arg("pixels", paramBuffer.toString());
    end();
    this.mgl.glTexImage2D(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7, paramInt8, paramBuffer);
    checkError();
  }

  public void glTexParameterf(int paramInt1, int paramInt2, float paramFloat)
  {
    begin("glTexParameterf");
    arg("target", getTextureTarget(paramInt1));
    arg("pname", getTexturePName(paramInt2));
    arg("param", getTextureParamName(paramFloat));
    end();
    this.mgl.glTexParameterf(paramInt1, paramInt2, paramFloat);
    checkError();
  }

  public void glTexParameterfv(int paramInt1, int paramInt2, FloatBuffer paramFloatBuffer)
  {
    throw new UnsupportedOperationException();
  }

  public void glTexParameterfv(int paramInt1, int paramInt2, float[] paramArrayOfFloat, int paramInt3)
  {
    throw new UnsupportedOperationException();
  }

  public void glTexParameteri(int paramInt1, int paramInt2, int paramInt3)
  {
    throw new UnsupportedOperationException();
  }

  public void glTexParameteriv(int paramInt1, int paramInt2, IntBuffer paramIntBuffer)
  {
    begin("glTexParameteriv");
    arg("target", getTextureTarget(paramInt1));
    arg("pname", getTexturePName(paramInt2));
    arg("params", 4, paramIntBuffer);
    end();
    this.mgl11.glTexParameteriv(paramInt1, paramInt2, paramIntBuffer);
    checkError();
  }

  public void glTexParameteriv(int paramInt1, int paramInt2, int[] paramArrayOfInt, int paramInt3)
  {
    begin("glTexParameteriv");
    arg("target", getTextureTarget(paramInt1));
    arg("pname", getTexturePName(paramInt2));
    arg("params", 4, paramArrayOfInt, paramInt3);
    end();
    this.mgl11.glTexParameteriv(paramInt1, paramInt2, paramArrayOfInt, paramInt3);
    checkError();
  }

  public void glTexParameterx(int paramInt1, int paramInt2, int paramInt3)
  {
    begin("glTexParameterx");
    arg("target", getTextureTarget(paramInt1));
    arg("pname", getTexturePName(paramInt2));
    arg("param", paramInt3);
    end();
    this.mgl.glTexParameterx(paramInt1, paramInt2, paramInt3);
    checkError();
  }

  public void glTexParameterxv(int paramInt1, int paramInt2, IntBuffer paramIntBuffer)
  {
    throw new UnsupportedOperationException();
  }

  public void glTexParameterxv(int paramInt1, int paramInt2, int[] paramArrayOfInt, int paramInt3)
  {
    throw new UnsupportedOperationException();
  }

  public void glTexSubImage2D(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8, Buffer paramBuffer)
  {
    begin("glTexSubImage2D");
    arg("target", getTextureTarget(paramInt1));
    arg("level", paramInt2);
    arg("xoffset", paramInt3);
    arg("yoffset", paramInt4);
    arg("width", paramInt5);
    arg("height", paramInt6);
    arg("format", paramInt7);
    arg("type", paramInt8);
    arg("pixels", paramBuffer.toString());
    end();
    this.mgl.glTexSubImage2D(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7, paramInt8, paramBuffer);
    checkError();
  }

  public void glTranslatef(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    begin("glTranslatef");
    arg("x", paramFloat1);
    arg("y", paramFloat2);
    arg("z", paramFloat3);
    end();
    this.mgl.glTranslatef(paramFloat1, paramFloat2, paramFloat3);
    checkError();
  }

  public void glTranslatex(int paramInt1, int paramInt2, int paramInt3)
  {
    begin("glTranslatex");
    arg("x", paramInt1);
    arg("y", paramInt2);
    arg("z", paramInt3);
    end();
    this.mgl.glTranslatex(paramInt1, paramInt2, paramInt3);
    checkError();
  }

  public void glVertexPointer(int paramInt1, int paramInt2, int paramInt3, Buffer paramBuffer)
  {
    begin("glVertexPointer");
    argPointer(paramInt1, paramInt2, paramInt3, paramBuffer);
    end();
    this.mVertexPointer = new GLLogWrapper.PointerInfo(this, paramInt1, paramInt2, paramInt3, paramBuffer);
    this.mgl.glVertexPointer(paramInt1, paramInt2, paramInt3, paramBuffer);
    checkError();
  }

  public void glViewport(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    begin("glViewport");
    arg("x", paramInt1);
    arg("y", paramInt2);
    arg("width", paramInt3);
    arg("height", paramInt4);
    end();
    this.mgl.glViewport(paramInt1, paramInt2, paramInt3, paramInt4);
    checkError();
  }

  ByteBuffer toByteBuffer(int paramInt, Buffer paramBuffer)
  {
    int i = 0;
    int j;
    if (paramInt < 0)
      j = 1;
    ByteBuffer localByteBuffer1;
    while ((paramBuffer instanceof ByteBuffer))
    {
      ByteBuffer localByteBuffer2 = (ByteBuffer)paramBuffer;
      if (j != 0)
        paramInt = localByteBuffer2.limit();
      localByteBuffer1 = ByteBuffer.allocate(paramInt).order(localByteBuffer2.order());
      int i4 = localByteBuffer2.position();
      while (true)
        if (i < paramInt)
        {
          localByteBuffer1.put(localByteBuffer2.get());
          i++;
          continue;
          j = 0;
          break;
        }
      localByteBuffer2.position(i4);
    }
    while (true)
    {
      localByteBuffer1.rewind();
      localByteBuffer1.order(ByteOrder.nativeOrder());
      return localByteBuffer1;
      if ((paramBuffer instanceof CharBuffer))
      {
        CharBuffer localCharBuffer1 = (CharBuffer)paramBuffer;
        if (j != 0)
          paramInt = 2 * localCharBuffer1.limit();
        localByteBuffer1 = ByteBuffer.allocate(paramInt).order(localCharBuffer1.order());
        CharBuffer localCharBuffer2 = localByteBuffer1.asCharBuffer();
        int i3 = localCharBuffer1.position();
        while (i < paramInt / 2)
        {
          localCharBuffer2.put(localCharBuffer1.get());
          i++;
        }
        localCharBuffer1.position(i3);
      }
      else if ((paramBuffer instanceof ShortBuffer))
      {
        ShortBuffer localShortBuffer1 = (ShortBuffer)paramBuffer;
        if (j != 0)
          paramInt = 2 * localShortBuffer1.limit();
        localByteBuffer1 = ByteBuffer.allocate(paramInt).order(localShortBuffer1.order());
        ShortBuffer localShortBuffer2 = localByteBuffer1.asShortBuffer();
        int i2 = localShortBuffer1.position();
        while (i < paramInt / 2)
        {
          localShortBuffer2.put(localShortBuffer1.get());
          i++;
        }
        localShortBuffer1.position(i2);
      }
      else if ((paramBuffer instanceof IntBuffer))
      {
        IntBuffer localIntBuffer1 = (IntBuffer)paramBuffer;
        if (j != 0)
          paramInt = 4 * localIntBuffer1.limit();
        localByteBuffer1 = ByteBuffer.allocate(paramInt).order(localIntBuffer1.order());
        IntBuffer localIntBuffer2 = localByteBuffer1.asIntBuffer();
        int i1 = localIntBuffer1.position();
        while (i < paramInt / 4)
        {
          localIntBuffer2.put(localIntBuffer1.get());
          i++;
        }
        localIntBuffer1.position(i1);
      }
      else if ((paramBuffer instanceof FloatBuffer))
      {
        FloatBuffer localFloatBuffer1 = (FloatBuffer)paramBuffer;
        if (j != 0)
          paramInt = 4 * localFloatBuffer1.limit();
        localByteBuffer1 = ByteBuffer.allocate(paramInt).order(localFloatBuffer1.order());
        FloatBuffer localFloatBuffer2 = localByteBuffer1.asFloatBuffer();
        int n = localFloatBuffer1.position();
        while (i < paramInt / 4)
        {
          localFloatBuffer2.put(localFloatBuffer1.get());
          i++;
        }
        localFloatBuffer1.position(n);
      }
      else if ((paramBuffer instanceof DoubleBuffer))
      {
        DoubleBuffer localDoubleBuffer1 = (DoubleBuffer)paramBuffer;
        if (j != 0)
          paramInt = 8 * localDoubleBuffer1.limit();
        localByteBuffer1 = ByteBuffer.allocate(paramInt).order(localDoubleBuffer1.order());
        DoubleBuffer localDoubleBuffer2 = localByteBuffer1.asDoubleBuffer();
        int m = localDoubleBuffer1.position();
        while (i < paramInt / 8)
        {
          localDoubleBuffer2.put(localDoubleBuffer1.get());
          i++;
        }
        localDoubleBuffer1.position(m);
      }
      else
      {
        if (!(paramBuffer instanceof LongBuffer))
          break;
        LongBuffer localLongBuffer1 = (LongBuffer)paramBuffer;
        if (j != 0)
          paramInt = 8 * localLongBuffer1.limit();
        localByteBuffer1 = ByteBuffer.allocate(paramInt).order(localLongBuffer1.order());
        LongBuffer localLongBuffer2 = localByteBuffer1.asLongBuffer();
        int k = localLongBuffer1.position();
        while (i < paramInt / 8)
        {
          localLongBuffer2.put(localLongBuffer1.get());
          i++;
        }
        localLongBuffer1.position(k);
      }
    }
    throw new RuntimeException("Unimplemented Buffer subclass.");
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.backends.android.surfaceview.GLLogWrapper
 * JD-Core Version:    0.6.2
 */