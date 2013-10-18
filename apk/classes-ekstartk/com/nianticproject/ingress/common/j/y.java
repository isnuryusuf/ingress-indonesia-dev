package com.nianticproject.ingress.common.j;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.GL20;
import com.google.a.a.an;
import com.google.a.c.hc;
import com.nianticproject.ingress.common.w.u;
import java.nio.Buffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

public class y
  implements GL20
{
  private static final com.nianticproject.ingress.common.w.aa a = new com.nianticproject.ingress.common.w.aa(y.class);
  private static final SimpleDateFormat b = new SimpleDateFormat("HH:mm:ss:SSSS", Locale.US);
  private final GL20 c;
  private long d;
  private long e = -1L;
  private final long f;
  private Map<z, Map<Integer, String>> g;

  public y(GL20 paramGL20)
  {
    this.c = ((GL20)an.a(paramGL20));
    this.f = (30000L + System.currentTimeMillis());
    this.g = hc.b();
    for (z localz : z.values())
    {
      HashMap localHashMap = hc.b();
      this.g.put(localz, localHashMap);
    }
  }

  private void a(z paramz, int paramInt, IntBuffer paramIntBuffer, boolean paramBoolean)
  {
    for (int i = 0; i < paramInt; i++)
      a(paramz, paramIntBuffer.get(i), paramBoolean);
  }

  private void a(z paramz, int paramInt, boolean paramBoolean)
  {
    Map localMap = (Map)this.g.get(paramz);
    String str1 = (String)localMap.get(Integer.valueOf(paramInt));
    if (paramBoolean)
    {
      if (str1 != null)
      {
        Object[] arrayOfObject2 = new Object[2];
        arrayOfObject2[0] = Integer.valueOf(paramInt);
        arrayOfObject2[1] = paramz.name();
        String str3 = String.format("Allocation already exists handle %d type %s", arrayOfObject2);
        a.b(str3);
        throw new RuntimeException(str3);
      }
      localMap.put(Integer.valueOf(paramInt), "allocated");
      return;
    }
    if (str1 == null)
    {
      Object[] arrayOfObject1 = new Object[2];
      arrayOfObject1[0] = Integer.valueOf(paramInt);
      arrayOfObject1[1] = paramz.name();
      String str2 = String.format("De-Allocation: not-allocated for handle %d type %s", arrayOfObject1);
      a.b(str2);
      throw new RuntimeException(str2);
    }
    localMap.put(Integer.valueOf(paramInt), null);
  }

  private void a(String paramString)
  {
    u.a(paramString);
    aa.a(false);
    long l;
    float f1;
    if (System.currentTimeMillis() > this.d)
    {
      l = Gdx.app.getNativeHeap();
      f1 = 100.0F;
      if (this.e != -1L)
        break label278;
      if (System.currentTimeMillis() > this.f)
        this.e = l;
    }
    while (true)
    {
      com.nianticproject.ingress.common.w.aa localaa = a;
      Object[] arrayOfObject = new Object[8];
      arrayOfObject[0] = Double.valueOf(l / 1048576.0D);
      arrayOfObject[1] = Float.valueOf(f1);
      arrayOfObject[2] = Integer.valueOf(((Map)this.g.get(z.a)).size());
      arrayOfObject[3] = Integer.valueOf(((Map)this.g.get(z.b)).size());
      arrayOfObject[4] = Integer.valueOf(((Map)this.g.get(z.c)).size());
      arrayOfObject[5] = Integer.valueOf(((Map)this.g.get(z.d)).size());
      arrayOfObject[6] = Integer.valueOf(((Map)this.g.get(z.e)).size());
      arrayOfObject[7] = Integer.valueOf(((Map)this.g.get(z.f)).size());
      localaa.a("native memory: %3.1fMb (%3.1f%%) shaders: %5d buffers: %5d frame buffers: %5d render buffers: %5d textures: %5d programs: %5d", arrayOfObject);
      this.d = (5000L + System.currentTimeMillis());
      return;
      label278: f1 = (float)(100.0D * l / this.e);
    }
  }

  public void glActiveTexture(int paramInt)
  {
    this.c.glActiveTexture(paramInt);
    a("glActiveTexture");
  }

  public void glAttachShader(int paramInt1, int paramInt2)
  {
    this.c.glAttachShader(paramInt1, paramInt2);
    a("");
  }

  public void glBindAttribLocation(int paramInt1, int paramInt2, String paramString)
  {
    this.c.glBindAttribLocation(paramInt1, paramInt2, paramString);
    a("glBindAttribLocation");
  }

  public void glBindBuffer(int paramInt1, int paramInt2)
  {
    this.c.glBindBuffer(paramInt1, paramInt2);
    a("glBindBuffer");
  }

  public void glBindFramebuffer(int paramInt1, int paramInt2)
  {
    this.c.glBindFramebuffer(paramInt1, paramInt2);
    a("glBindFramebuffer");
  }

  public void glBindRenderbuffer(int paramInt1, int paramInt2)
  {
    this.c.glBindRenderbuffer(paramInt1, paramInt2);
    a("glBindRenderbuffer");
  }

  public void glBindTexture(int paramInt1, int paramInt2)
  {
    this.c.glBindTexture(paramInt1, paramInt2);
    a("glBindTexture");
  }

  public void glBlendColor(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    this.c.glBlendColor(paramFloat1, paramFloat2, paramFloat3, paramFloat4);
    a("glBlendColor");
  }

  public void glBlendEquation(int paramInt)
  {
    this.c.glBlendEquation(paramInt);
    a("glBlendEquation");
  }

  public void glBlendEquationSeparate(int paramInt1, int paramInt2)
  {
    this.c.glBlendEquationSeparate(paramInt1, paramInt2);
    a("glBlendEquationSeparate");
  }

  public void glBlendFunc(int paramInt1, int paramInt2)
  {
    this.c.glBlendFunc(paramInt1, paramInt2);
    a("glBlendFunc");
  }

  public void glBlendFuncSeparate(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.c.glBlendFuncSeparate(paramInt1, paramInt2, paramInt3, paramInt4);
    a("glBlendFuncSeparate");
  }

  public void glBufferData(int paramInt1, int paramInt2, Buffer paramBuffer, int paramInt3)
  {
    this.c.glBufferData(paramInt1, paramInt2, paramBuffer, paramInt3);
    a("glBufferData");
  }

  public void glBufferSubData(int paramInt1, int paramInt2, int paramInt3, Buffer paramBuffer)
  {
    this.c.glBufferSubData(paramInt1, paramInt2, paramInt3, paramBuffer);
    a("glBufferSubData");
  }

  public int glCheckFramebufferStatus(int paramInt)
  {
    int i = this.c.glCheckFramebufferStatus(paramInt);
    a("glCheckFramebufferStatus");
    return i;
  }

  public void glClear(int paramInt)
  {
    this.c.glClear(paramInt);
    a("glClear");
  }

  public void glClearColor(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    this.c.glClearColor(paramFloat1, paramFloat2, paramFloat3, paramFloat4);
    a("glClearColor");
  }

  public void glClearDepthf(float paramFloat)
  {
    this.c.glClearDepthf(paramFloat);
    a("glClearDepthf");
  }

  public void glClearStencil(int paramInt)
  {
    this.c.glClearStencil(paramInt);
    a("glClearStencil");
  }

  public void glColorMask(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4)
  {
    this.c.glColorMask(paramBoolean1, paramBoolean2, paramBoolean3, paramBoolean4);
    a("glColorMask");
  }

  public void glCompileShader(int paramInt)
  {
    this.c.glCompileShader(paramInt);
    a("glCompileShader");
  }

  public void glCompressedTexImage2D(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, Buffer paramBuffer)
  {
    this.c.glCompressedTexImage2D(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7, paramBuffer);
    a("glCompressedTexImage2D");
  }

  public void glCompressedTexSubImage2D(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8, Buffer paramBuffer)
  {
    this.c.glCompressedTexSubImage2D(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7, paramInt8, paramBuffer);
    a("glCompressedTexSubImage2D");
  }

  public void glCopyTexImage2D(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8)
  {
    this.c.glCopyTexImage2D(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7, paramInt8);
    a("glCopyTexImage2D");
  }

  public void glCopyTexSubImage2D(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8)
  {
    this.c.glCopyTexSubImage2D(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7, paramInt8);
    a("glCopyTexSubImage2D");
  }

  public int glCreateProgram()
  {
    int i = this.c.glCreateProgram();
    a(z.f, i, true);
    a("glCreateProgram");
    return i;
  }

  public int glCreateShader(int paramInt)
  {
    int i = this.c.glCreateShader(paramInt);
    a(z.a, i, true);
    a("glCreateShader");
    return i;
  }

  public void glCullFace(int paramInt)
  {
    this.c.glCullFace(paramInt);
    a("glCullFace");
  }

  public void glDeleteBuffers(int paramInt, IntBuffer paramIntBuffer)
  {
    a(z.b, paramInt, paramIntBuffer, false);
    this.c.glDeleteBuffers(paramInt, paramIntBuffer);
    a("glDeleteBuffers");
  }

  public void glDeleteFramebuffers(int paramInt, IntBuffer paramIntBuffer)
  {
    a(z.c, paramInt, paramIntBuffer, false);
    this.c.glDeleteFramebuffers(paramInt, paramIntBuffer);
    a("glDeleteFramebuffers");
  }

  public void glDeleteProgram(int paramInt)
  {
    a(z.f, paramInt, false);
    this.c.glDeleteProgram(paramInt);
    a("glDeleteProgram");
  }

  public void glDeleteRenderbuffers(int paramInt, IntBuffer paramIntBuffer)
  {
    a(z.d, paramInt, paramIntBuffer, false);
    this.c.glDeleteRenderbuffers(paramInt, paramIntBuffer);
    a("glDeleteRenderbuffers");
  }

  public void glDeleteShader(int paramInt)
  {
    a(z.a, paramInt, false);
    this.c.glDeleteShader(paramInt);
    a("glDeleteShader");
  }

  public void glDeleteTextures(int paramInt, IntBuffer paramIntBuffer)
  {
    a(z.e, paramInt, paramIntBuffer, false);
    this.c.glDeleteTextures(paramInt, paramIntBuffer);
    a("glDeleteTextures");
  }

  public void glDepthFunc(int paramInt)
  {
    this.c.glDepthFunc(paramInt);
    a("glDepthFunc");
  }

  public void glDepthMask(boolean paramBoolean)
  {
    this.c.glDepthMask(paramBoolean);
    a("glDepthMask");
  }

  public void glDepthRangef(float paramFloat1, float paramFloat2)
  {
    this.c.glDepthRangef(paramFloat1, paramFloat2);
    a("glDepthRangef");
  }

  public void glDetachShader(int paramInt1, int paramInt2)
  {
    this.c.glDetachShader(paramInt1, paramInt2);
    a("glDetachShader");
  }

  public void glDisable(int paramInt)
  {
    this.c.glDisable(paramInt);
    a("glDisable");
  }

  public void glDisableVertexAttribArray(int paramInt)
  {
    this.c.glDisableVertexAttribArray(paramInt);
    a("glDisableVertexAttribArray");
  }

  public void glDrawArrays(int paramInt1, int paramInt2, int paramInt3)
  {
    this.c.glDrawArrays(paramInt1, paramInt2, paramInt3);
    a("glDrawArrays");
  }

  public void glDrawElements(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.c.glDrawElements(paramInt1, paramInt2, paramInt3, paramInt4);
    a("glDrawElements");
  }

  public void glDrawElements(int paramInt1, int paramInt2, int paramInt3, Buffer paramBuffer)
  {
    this.c.glDrawElements(paramInt1, paramInt2, paramInt3, paramBuffer);
    a("glDrawElements");
  }

  public void glEnable(int paramInt)
  {
    this.c.glEnable(paramInt);
    a("glEnable");
  }

  public void glEnableVertexAttribArray(int paramInt)
  {
    this.c.glEnableVertexAttribArray(paramInt);
    a("glEnableVertexAttribArray");
  }

  public void glFinish()
  {
    this.c.glFinish();
    a("glFinish");
  }

  public void glFlush()
  {
    this.c.glFlush();
    a("glFlush");
  }

  public void glFramebufferRenderbuffer(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.c.glFramebufferRenderbuffer(paramInt1, paramInt2, paramInt3, paramInt4);
    a("glFramebufferRenderbuffer");
  }

  public void glFramebufferTexture2D(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    this.c.glFramebufferTexture2D(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5);
    a("glFramebufferTexture2D");
  }

  public void glFrontFace(int paramInt)
  {
    this.c.glFrontFace(paramInt);
    a("glFrontFace");
  }

  public void glGenBuffers(int paramInt, IntBuffer paramIntBuffer)
  {
    this.c.glGenBuffers(paramInt, paramIntBuffer);
    a(z.b, paramInt, paramIntBuffer, true);
    a("glGenBuffers");
  }

  public void glGenFramebuffers(int paramInt, IntBuffer paramIntBuffer)
  {
    this.c.glGenFramebuffers(paramInt, paramIntBuffer);
    a(z.c, paramInt, paramIntBuffer, true);
    a("glGenFramebuffers");
  }

  public void glGenRenderbuffers(int paramInt, IntBuffer paramIntBuffer)
  {
    this.c.glGenRenderbuffers(paramInt, paramIntBuffer);
    a(z.d, paramInt, paramIntBuffer, true);
    a("glGenRenderbuffers");
  }

  public void glGenTextures(int paramInt, IntBuffer paramIntBuffer)
  {
    this.c.glGenTextures(paramInt, paramIntBuffer);
    a(z.e, paramInt, paramIntBuffer, true);
    a("glGenTextures");
  }

  public void glGenerateMipmap(int paramInt)
  {
    this.c.glGenerateMipmap(paramInt);
    a("glGenerateMipmap");
  }

  public String glGetActiveAttrib(int paramInt1, int paramInt2, IntBuffer paramIntBuffer, Buffer paramBuffer)
  {
    String str = this.c.glGetActiveAttrib(paramInt1, paramInt2, paramIntBuffer, paramBuffer);
    a("glGetActiveAttrib");
    return str;
  }

  public String glGetActiveUniform(int paramInt1, int paramInt2, IntBuffer paramIntBuffer, Buffer paramBuffer)
  {
    String str = this.c.glGetActiveUniform(paramInt1, paramInt2, paramIntBuffer, paramBuffer);
    a("glGetActiveUniform");
    return str;
  }

  public void glGetAttachedShaders(int paramInt1, int paramInt2, Buffer paramBuffer, IntBuffer paramIntBuffer)
  {
    this.c.glGetAttachedShaders(paramInt1, paramInt2, paramBuffer, paramIntBuffer);
    a("glGetAttachedShaders");
  }

  public int glGetAttribLocation(int paramInt, String paramString)
  {
    int i = this.c.glGetAttribLocation(paramInt, paramString);
    a("glGetAttribLocation");
    return i;
  }

  public void glGetBooleanv(int paramInt, Buffer paramBuffer)
  {
    this.c.glGetBooleanv(paramInt, paramBuffer);
    a("glGetBooleanv");
  }

  public void glGetBufferParameteriv(int paramInt1, int paramInt2, IntBuffer paramIntBuffer)
  {
    this.c.glGetBufferParameteriv(paramInt1, paramInt2, paramIntBuffer);
    a("glGetBufferParameteriv");
  }

  public int glGetError()
  {
    return this.c.glGetError();
  }

  public void glGetFloatv(int paramInt, FloatBuffer paramFloatBuffer)
  {
    this.c.glGetFloatv(paramInt, paramFloatBuffer);
    a("glGetFloatv");
  }

  public void glGetFramebufferAttachmentParameteriv(int paramInt1, int paramInt2, int paramInt3, IntBuffer paramIntBuffer)
  {
    this.c.glGetFramebufferAttachmentParameteriv(paramInt1, paramInt2, paramInt3, paramIntBuffer);
    a("glGetFramebufferAttachmentParameteriv");
  }

  public void glGetIntegerv(int paramInt, IntBuffer paramIntBuffer)
  {
    this.c.glGetIntegerv(paramInt, paramIntBuffer);
    a("glGetIntegerv");
  }

  public String glGetProgramInfoLog(int paramInt)
  {
    String str = this.c.glGetProgramInfoLog(paramInt);
    a("glGetProgramInfoLog");
    return str;
  }

  public void glGetProgramiv(int paramInt1, int paramInt2, IntBuffer paramIntBuffer)
  {
    this.c.glGetProgramiv(paramInt1, paramInt2, paramIntBuffer);
    a("glGetProgramiv");
  }

  public void glGetRenderbufferParameteriv(int paramInt1, int paramInt2, IntBuffer paramIntBuffer)
  {
    this.c.glGetRenderbufferParameteriv(paramInt1, paramInt2, paramIntBuffer);
    a("glGetRenderbufferParameteriv");
  }

  public String glGetShaderInfoLog(int paramInt)
  {
    String str = this.c.glGetShaderInfoLog(paramInt);
    a("glGetShaderInfoLog");
    return str;
  }

  public void glGetShaderPrecisionFormat(int paramInt1, int paramInt2, IntBuffer paramIntBuffer1, IntBuffer paramIntBuffer2)
  {
    this.c.glGetShaderPrecisionFormat(paramInt1, paramInt2, paramIntBuffer1, paramIntBuffer2);
    a("glGetShaderPrecisionFormat");
  }

  public void glGetShaderSource(int paramInt1, int paramInt2, Buffer paramBuffer, String paramString)
  {
    this.c.glGetShaderSource(paramInt1, paramInt2, paramBuffer, paramString);
    a("glGetShaderSource");
  }

  public void glGetShaderiv(int paramInt1, int paramInt2, IntBuffer paramIntBuffer)
  {
    this.c.glGetShaderiv(paramInt1, paramInt2, paramIntBuffer);
    a("glGetShaderiv");
  }

  public String glGetString(int paramInt)
  {
    String str = this.c.glGetString(paramInt);
    a("glGetString");
    return str;
  }

  public void glGetTexParameterfv(int paramInt1, int paramInt2, FloatBuffer paramFloatBuffer)
  {
    this.c.glGetTexParameterfv(paramInt1, paramInt2, paramFloatBuffer);
    a("glGetTexParameterfv");
  }

  public void glGetTexParameteriv(int paramInt1, int paramInt2, IntBuffer paramIntBuffer)
  {
    this.c.glGetTexParameteriv(paramInt1, paramInt2, paramIntBuffer);
    a("glGetTexParameteriv");
  }

  public int glGetUniformLocation(int paramInt, String paramString)
  {
    int i = this.c.glGetUniformLocation(paramInt, paramString);
    a("glGetUniformLocation");
    return i;
  }

  public void glGetUniformfv(int paramInt1, int paramInt2, FloatBuffer paramFloatBuffer)
  {
    this.c.glGetUniformfv(paramInt1, paramInt2, paramFloatBuffer);
    a("glGetUniformfv");
  }

  public void glGetUniformiv(int paramInt1, int paramInt2, IntBuffer paramIntBuffer)
  {
    this.c.glGetUniformiv(paramInt1, paramInt2, paramIntBuffer);
    a("glGetUniformiv");
  }

  public void glGetVertexAttribPointerv(int paramInt1, int paramInt2, Buffer paramBuffer)
  {
    this.c.glGetVertexAttribPointerv(paramInt1, paramInt2, paramBuffer);
    a("glGetVertexAttribPointerv");
  }

  public void glGetVertexAttribfv(int paramInt1, int paramInt2, FloatBuffer paramFloatBuffer)
  {
    this.c.glGetVertexAttribfv(paramInt1, paramInt2, paramFloatBuffer);
    a("glGetVertexAttribfv");
  }

  public void glGetVertexAttribiv(int paramInt1, int paramInt2, IntBuffer paramIntBuffer)
  {
    this.c.glGetVertexAttribiv(paramInt1, paramInt2, paramIntBuffer);
    a("glGetVertexAttribiv");
  }

  public void glHint(int paramInt1, int paramInt2)
  {
    this.c.glHint(paramInt1, paramInt2);
    a("glHint");
  }

  public boolean glIsBuffer(int paramInt)
  {
    boolean bool = this.c.glIsBuffer(paramInt);
    a("glIsBuffer");
    return bool;
  }

  public boolean glIsEnabled(int paramInt)
  {
    boolean bool = this.c.glIsEnabled(paramInt);
    a("glIsEnabled");
    return bool;
  }

  public boolean glIsFramebuffer(int paramInt)
  {
    boolean bool = this.c.glIsFramebuffer(paramInt);
    a("glIsFramebuffer");
    return bool;
  }

  public boolean glIsProgram(int paramInt)
  {
    boolean bool = this.c.glIsProgram(paramInt);
    a("glIsProgram");
    return bool;
  }

  public boolean glIsRenderbuffer(int paramInt)
  {
    boolean bool = this.c.glIsRenderbuffer(paramInt);
    a("glIsRenderbuffer");
    return bool;
  }

  public boolean glIsShader(int paramInt)
  {
    boolean bool = this.c.glIsShader(paramInt);
    a("glIsShader");
    return bool;
  }

  public boolean glIsTexture(int paramInt)
  {
    boolean bool = this.c.glIsTexture(paramInt);
    a("glIsTexture");
    return bool;
  }

  public void glLineWidth(float paramFloat)
  {
    this.c.glLineWidth(paramFloat);
    a("glLineWidth");
  }

  public void glLinkProgram(int paramInt)
  {
    this.c.glLinkProgram(paramInt);
    a("glLinkProgram");
  }

  public void glPixelStorei(int paramInt1, int paramInt2)
  {
    this.c.glPixelStorei(paramInt1, paramInt2);
    a("glPixelStorei");
  }

  public void glPolygonOffset(float paramFloat1, float paramFloat2)
  {
    this.c.glPolygonOffset(paramFloat1, paramFloat2);
    a("glPolygonOffset");
  }

  public void glReadPixels(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, Buffer paramBuffer)
  {
    this.c.glReadPixels(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramBuffer);
    a("glReadPixels");
  }

  public void glReleaseShaderCompiler()
  {
    this.c.glReleaseShaderCompiler();
    a("glReleaseShaderCompiler");
  }

  public void glRenderbufferStorage(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.c.glRenderbufferStorage(paramInt1, paramInt2, paramInt3, paramInt4);
    a("glRenderbufferStorage");
  }

  public void glSampleCoverage(float paramFloat, boolean paramBoolean)
  {
    this.c.glSampleCoverage(paramFloat, paramBoolean);
    a("glSampleCoverage");
  }

  public void glScissor(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.c.glScissor(paramInt1, paramInt2, paramInt3, paramInt4);
    a("glScissor");
  }

  public void glShaderBinary(int paramInt1, IntBuffer paramIntBuffer, int paramInt2, Buffer paramBuffer, int paramInt3)
  {
    this.c.glShaderBinary(paramInt1, paramIntBuffer, paramInt2, paramBuffer, paramInt3);
    a("glShaderBinary");
  }

  public void glShaderSource(int paramInt, String paramString)
  {
    this.c.glShaderSource(paramInt, paramString);
    a("glShaderSource");
  }

  public void glStencilFunc(int paramInt1, int paramInt2, int paramInt3)
  {
    this.c.glStencilFunc(paramInt1, paramInt2, paramInt3);
    a("glStencilFunc");
  }

  public void glStencilFuncSeparate(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.c.glStencilFuncSeparate(paramInt1, paramInt2, paramInt3, paramInt4);
    a("glStencilFuncSeparate");
  }

  public void glStencilMask(int paramInt)
  {
    this.c.glStencilMask(paramInt);
    a("glStencilMask");
  }

  public void glStencilMaskSeparate(int paramInt1, int paramInt2)
  {
    this.c.glStencilMaskSeparate(paramInt1, paramInt2);
    a("glStencilMaskSeparate");
  }

  public void glStencilOp(int paramInt1, int paramInt2, int paramInt3)
  {
    this.c.glStencilOp(paramInt1, paramInt2, paramInt3);
    a("glStencilOp");
  }

  public void glStencilOpSeparate(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.c.glStencilOpSeparate(paramInt1, paramInt2, paramInt3, paramInt4);
    a("glStencilOpSeparate");
  }

  public void glTexImage2D(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8, Buffer paramBuffer)
  {
    this.c.glTexImage2D(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7, paramInt8, paramBuffer);
    a("glTexImage2D");
  }

  public void glTexParameterf(int paramInt1, int paramInt2, float paramFloat)
  {
    this.c.glTexParameterf(paramInt1, paramInt2, paramFloat);
    a("glTexParameterf");
  }

  public void glTexParameterfv(int paramInt1, int paramInt2, FloatBuffer paramFloatBuffer)
  {
    this.c.glTexParameterfv(paramInt1, paramInt2, paramFloatBuffer);
    a("glTexParameterfv");
  }

  public void glTexParameteri(int paramInt1, int paramInt2, int paramInt3)
  {
    this.c.glTexParameteri(paramInt1, paramInt2, paramInt3);
    a("glTexParameteri");
  }

  public void glTexParameteriv(int paramInt1, int paramInt2, IntBuffer paramIntBuffer)
  {
    this.c.glTexParameteriv(paramInt1, paramInt2, paramIntBuffer);
    a("glTexParameteriv");
  }

  public void glTexSubImage2D(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8, Buffer paramBuffer)
  {
    this.c.glTexSubImage2D(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7, paramInt8, paramBuffer);
    a("glTexSubImage2D");
  }

  public void glUniform1f(int paramInt, float paramFloat)
  {
    this.c.glUniform1f(paramInt, paramFloat);
    a("glUniform1f");
  }

  public void glUniform1fv(int paramInt1, int paramInt2, FloatBuffer paramFloatBuffer)
  {
    this.c.glUniform1fv(paramInt1, paramInt2, paramFloatBuffer);
    a("glUniform1fv");
  }

  public void glUniform1i(int paramInt1, int paramInt2)
  {
    this.c.glUniform1i(paramInt1, paramInt2);
    a("glUniform1i");
  }

  public void glUniform1iv(int paramInt1, int paramInt2, IntBuffer paramIntBuffer)
  {
    this.c.glUniform1iv(paramInt1, paramInt2, paramIntBuffer);
    a("glUniform1iv");
  }

  public void glUniform2f(int paramInt, float paramFloat1, float paramFloat2)
  {
    this.c.glUniform2f(paramInt, paramFloat1, paramFloat2);
    a("glUniform2f");
  }

  public void glUniform2fv(int paramInt1, int paramInt2, FloatBuffer paramFloatBuffer)
  {
    this.c.glUniform2fv(paramInt1, paramInt2, paramFloatBuffer);
    a("glUniform2fv");
  }

  public void glUniform2i(int paramInt1, int paramInt2, int paramInt3)
  {
    this.c.glUniform2i(paramInt1, paramInt2, paramInt3);
    a("glUniform2i");
  }

  public void glUniform2iv(int paramInt1, int paramInt2, IntBuffer paramIntBuffer)
  {
    this.c.glUniform2iv(paramInt1, paramInt2, paramIntBuffer);
    a("glUniform2iv");
  }

  public void glUniform3f(int paramInt, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    this.c.glUniform3f(paramInt, paramFloat1, paramFloat2, paramFloat3);
    a("glUniform3f");
  }

  public void glUniform3fv(int paramInt1, int paramInt2, FloatBuffer paramFloatBuffer)
  {
    this.c.glUniform3fv(paramInt1, paramInt2, paramFloatBuffer);
    a("glUniform3fv");
  }

  public void glUniform3i(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.c.glUniform3i(paramInt1, paramInt2, paramInt3, paramInt4);
    a("glUniform3i");
  }

  public void glUniform3iv(int paramInt1, int paramInt2, IntBuffer paramIntBuffer)
  {
    this.c.glUniform3iv(paramInt1, paramInt2, paramIntBuffer);
    a("glUniform3iv");
  }

  public void glUniform4f(int paramInt, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    this.c.glUniform4f(paramInt, paramFloat1, paramFloat2, paramFloat3, paramFloat4);
    a("glUniform4f");
  }

  public void glUniform4fv(int paramInt1, int paramInt2, FloatBuffer paramFloatBuffer)
  {
    this.c.glUniform4fv(paramInt1, paramInt2, paramFloatBuffer);
    a("glUniform4fv");
  }

  public void glUniform4i(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    this.c.glUniform4i(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5);
    a("glUniform4i");
  }

  public void glUniform4iv(int paramInt1, int paramInt2, IntBuffer paramIntBuffer)
  {
    this.c.glUniform4iv(paramInt1, paramInt2, paramIntBuffer);
    a("glUniform4iv");
  }

  public void glUniformMatrix2fv(int paramInt1, int paramInt2, boolean paramBoolean, FloatBuffer paramFloatBuffer)
  {
    this.c.glUniformMatrix2fv(paramInt1, paramInt2, paramBoolean, paramFloatBuffer);
    a("glUniformMatrix2fv");
  }

  public void glUniformMatrix3fv(int paramInt1, int paramInt2, boolean paramBoolean, FloatBuffer paramFloatBuffer)
  {
    this.c.glUniformMatrix3fv(paramInt1, paramInt2, paramBoolean, paramFloatBuffer);
    a("glUniformMatrix3fv");
  }

  public void glUniformMatrix4fv(int paramInt1, int paramInt2, boolean paramBoolean, FloatBuffer paramFloatBuffer)
  {
    this.c.glUniformMatrix4fv(paramInt1, paramInt2, paramBoolean, paramFloatBuffer);
    a("glUniformMatrix4fv");
  }

  public void glUseProgram(int paramInt)
  {
    this.c.glUseProgram(paramInt);
    a("glUseProgram");
  }

  public void glValidateProgram(int paramInt)
  {
    this.c.glValidateProgram(paramInt);
    a("glValidateProgram");
  }

  public void glVertexAttrib1f(int paramInt, float paramFloat)
  {
    this.c.glVertexAttrib1f(paramInt, paramFloat);
    a("glVertexAttrib1f");
  }

  public void glVertexAttrib1fv(int paramInt, FloatBuffer paramFloatBuffer)
  {
    this.c.glVertexAttrib1fv(paramInt, paramFloatBuffer);
    a("glVertexAttrib1fv");
  }

  public void glVertexAttrib2f(int paramInt, float paramFloat1, float paramFloat2)
  {
    this.c.glVertexAttrib2f(paramInt, paramFloat1, paramFloat2);
    a("glVertexAttrib2f");
  }

  public void glVertexAttrib2fv(int paramInt, FloatBuffer paramFloatBuffer)
  {
    this.c.glVertexAttrib2fv(paramInt, paramFloatBuffer);
    a("glVertexAttrib2fv");
  }

  public void glVertexAttrib3f(int paramInt, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    this.c.glVertexAttrib3f(paramInt, paramFloat1, paramFloat2, paramFloat3);
    a("glVertexAttrib3f");
  }

  public void glVertexAttrib3fv(int paramInt, FloatBuffer paramFloatBuffer)
  {
    this.c.glVertexAttrib3fv(paramInt, paramFloatBuffer);
    a("glVertexAttrib3fv");
  }

  public void glVertexAttrib4f(int paramInt, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    this.c.glVertexAttrib4f(paramInt, paramFloat1, paramFloat2, paramFloat3, paramFloat4);
    a("glVertexAttrib4f");
  }

  public void glVertexAttrib4fv(int paramInt, FloatBuffer paramFloatBuffer)
  {
    this.c.glVertexAttrib4fv(paramInt, paramFloatBuffer);
    a("glVertexAttrib4fv");
  }

  public void glVertexAttribPointer(int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean, int paramInt4, int paramInt5)
  {
    this.c.glVertexAttribPointer(paramInt1, paramInt2, paramInt3, paramBoolean, paramInt4, paramInt5);
    a("glVertexAttribPointer");
  }

  public void glVertexAttribPointer(int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean, int paramInt4, Buffer paramBuffer)
  {
    this.c.glVertexAttribPointer(paramInt1, paramInt2, paramInt3, paramBoolean, paramInt4, paramBuffer);
    a("glVertexAttribPointer");
  }

  public void glViewport(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.c.glViewport(paramInt1, paramInt2, paramInt3, paramInt4);
    a("glViewport");
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.j.y
 * JD-Core Version:    0.6.2
 */