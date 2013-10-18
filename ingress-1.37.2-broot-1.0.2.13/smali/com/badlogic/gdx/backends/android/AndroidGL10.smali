.class Lcom/badlogic/gdx/backends/android/AndroidGL10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/graphics/GL10;


# instance fields
.field final gl:Ljavax/microedition/khronos/opengles/GL10;


# direct methods
.method public constructor <init>(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    .line 32
    return-void
.end method


# virtual methods
.method public final glActiveTexture(I)V
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glActiveTexture(I)V

    .line 37
    return-void
.end method

.method public final glAlphaFunc(IF)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glAlphaFunc(IF)V

    .line 42
    return-void
.end method

.method public final glBindTexture(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 47
    return-void
.end method

.method public final glBlendFunc(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 52
    return-void
.end method

.method public final glClear(I)V
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 57
    return-void
.end method

.method public final glClearColor(FFFF)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 62
    return-void
.end method

.method public final glClearDepthf(F)V
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClearDepthf(F)V

    .line 67
    return-void
.end method

.method public final glClearStencil(I)V
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClearStencil(I)V

    .line 72
    return-void
.end method

.method public final glClientActiveTexture(I)V
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClientActiveTexture(I)V

    .line 77
    return-void
.end method

.method public final glColor4f(FFFF)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 82
    return-void
.end method

.method public final glColorMask(ZZZZ)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColorMask(ZZZZ)V

    .line 87
    return-void
.end method

.method public final glColorPointer(IIILjava/nio/Buffer;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    .line 92
    return-void
.end method

.method public final glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Ljavax/microedition/khronos/opengles/GL10;->glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V

    .line 98
    return-void
.end method

.method public final glCompressedTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Ljavax/microedition/khronos/opengles/GL10;->glCompressedTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 104
    return-void
.end method

.method public final glCopyTexImage2D(IIIIIIII)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Ljavax/microedition/khronos/opengles/GL10;->glCopyTexImage2D(IIIIIIII)V

    .line 109
    return-void
.end method

.method public final glCopyTexSubImage2D(IIIIIIII)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Ljavax/microedition/khronos/opengles/GL10;->glCopyTexSubImage2D(IIIIIIII)V

    .line 114
    return-void
.end method

.method public final glCullFace(I)V
    .locals 1
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glCullFace(I)V

    .line 119
    return-void
.end method

.method public final glDeleteTextures(ILjava/nio/IntBuffer;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(ILjava/nio/IntBuffer;)V

    .line 124
    return-void
.end method

.method public final glDeleteTextures(I[II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 425
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    .line 426
    return-void
.end method

.method public final glDepthFunc(I)V
    .locals 1
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDepthFunc(I)V

    .line 129
    return-void
.end method

.method public final glDepthMask(Z)V
    .locals 1
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDepthMask(Z)V

    .line 134
    return-void
.end method

.method public final glDepthRangef(FF)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 138
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glDepthRangef(FF)V

    .line 139
    return-void
.end method

.method public final glDisable(I)V
    .locals 1
    .parameter

    .prologue
    .line 143
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 144
    return-void
.end method

.method public final glDisableClientState(I)V
    .locals 1
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 149
    return-void
.end method

.method public final glDrawArrays(III)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 153
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 154
    return-void
.end method

.method public final glDrawElements(IIILjava/nio/Buffer;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 158
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 159
    return-void
.end method

.method public final glEnable(I)V
    .locals 1
    .parameter

    .prologue
    .line 163
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 164
    return-void
.end method

.method public final glEnableClientState(I)V
    .locals 1
    .parameter

    .prologue
    .line 168
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 169
    return-void
.end method

.method public final glFinish()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glFinish()V

    .line 174
    return-void
.end method

.method public final glFlush()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glFlush()V

    .line 179
    return-void
.end method

.method public final glFogf(IF)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 183
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glFogf(IF)V

    .line 184
    return-void
.end method

.method public final glFogfv(ILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 188
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glFogfv(ILjava/nio/FloatBuffer;)V

    .line 189
    return-void
.end method

.method public final glFogfv(I[FI)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 430
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glFogfv(I[FI)V

    .line 431
    return-void
.end method

.method public final glFrontFace(I)V
    .locals 1
    .parameter

    .prologue
    .line 193
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    .line 194
    return-void
.end method

.method public final glFrustumf(FFFFFF)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 198
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glFrustumf(FFFFFF)V

    .line 199
    return-void
.end method

.method public final glGenTextures(ILjava/nio/IntBuffer;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 203
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(ILjava/nio/IntBuffer;)V

    .line 204
    return-void
.end method

.method public final glGenTextures(I[II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 435
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 436
    return-void
.end method

.method public final glGetError()I
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetError()I

    move-result v0

    return v0
.end method

.method public final glGetIntegerv(ILjava/nio/IntBuffer;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 213
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 214
    return-void
.end method

.method public final glGetIntegerv(I[II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 440
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(I[II)V

    .line 441
    return-void
.end method

.method public final glGetString(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 218
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final glHint(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 223
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    .line 224
    return-void
.end method

.method public final glLightModelf(IF)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 228
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelf(IF)V

    .line 229
    return-void
.end method

.method public final glLightModelfv(ILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 233
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelfv(ILjava/nio/FloatBuffer;)V

    .line 234
    return-void
.end method

.method public final glLightModelfv(I[FI)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 445
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelfv(I[FI)V

    .line 446
    return-void
.end method

.method public final glLightf(IIF)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 238
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightf(IIF)V

    .line 239
    return-void
.end method

.method public final glLightfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 243
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(IILjava/nio/FloatBuffer;)V

    .line 244
    return-void
.end method

.method public final glLightfv(II[FI)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 450
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(II[FI)V

    .line 451
    return-void
.end method

.method public final glLineWidth(F)V
    .locals 1
    .parameter

    .prologue
    .line 248
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidth(F)V

    .line 249
    return-void
.end method

.method public final glLoadIdentity()V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 254
    return-void
.end method

.method public final glLoadMatrixf(Ljava/nio/FloatBuffer;)V
    .locals 1
    .parameter

    .prologue
    .line 258
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixf(Ljava/nio/FloatBuffer;)V

    .line 259
    return-void
.end method

.method public final glLoadMatrixf([FI)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 455
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixf([FI)V

    .line 456
    return-void
.end method

.method public final glLogicOp(I)V
    .locals 1
    .parameter

    .prologue
    .line 263
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLogicOp(I)V

    .line 264
    return-void
.end method

.method public final glMaterialf(IIF)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 268
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialf(IIF)V

    .line 269
    return-void
.end method

.method public final glMaterialfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 273
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(IILjava/nio/FloatBuffer;)V

    .line 274
    return-void
.end method

.method public final glMaterialfv(II[FI)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 460
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(II[FI)V

    .line 461
    return-void
.end method

.method public final glMatrixMode(I)V
    .locals 1
    .parameter

    .prologue
    .line 278
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 279
    return-void
.end method

.method public final glMultMatrixf(Ljava/nio/FloatBuffer;)V
    .locals 1
    .parameter

    .prologue
    .line 283
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf(Ljava/nio/FloatBuffer;)V

    .line 284
    return-void
.end method

.method public final glMultMatrixf([FI)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 465
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf([FI)V

    .line 466
    return-void
.end method

.method public final glMultiTexCoord4f(IFFFF)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 288
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL10;->glMultiTexCoord4f(IFFFF)V

    .line 289
    return-void
.end method

.method public final glNormal3f(FFF)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 293
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glNormal3f(FFF)V

    .line 294
    return-void
.end method

.method public final glNormalPointer(IILjava/nio/Buffer;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 298
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glNormalPointer(IILjava/nio/Buffer;)V

    .line 299
    return-void
.end method

.method public final glOrthof(FFFFFF)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 303
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthof(FFFFFF)V

    .line 304
    return-void
.end method

.method public final glPixelStorei(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 308
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glPixelStorei(II)V

    .line 309
    return-void
.end method

.method public final glPointSize(F)V
    .locals 1
    .parameter

    .prologue
    .line 313
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glPointSize(F)V

    .line 314
    return-void
.end method

.method public glPolygonMode(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 476
    return-void
.end method

.method public final glPolygonOffset(FF)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 318
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glPolygonOffset(FF)V

    .line 319
    return-void
.end method

.method public final glPopMatrix()V
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 324
    return-void
.end method

.method public final glPushMatrix()V
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 329
    return-void
.end method

.method public final glReadPixels(IIIIIILjava/nio/Buffer;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 333
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Ljavax/microedition/khronos/opengles/GL10;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 334
    return-void
.end method

.method public final glRotatef(FFFF)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 338
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 339
    return-void
.end method

.method public final glSampleCoverage(FZ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 343
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glSampleCoverage(FZ)V

    .line 344
    return-void
.end method

.method public final glScalef(FFF)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 348
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 349
    return-void
.end method

.method public final glScissor(IIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 353
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glScissor(IIII)V

    .line 354
    return-void
.end method

.method public final glShadeModel(I)V
    .locals 1
    .parameter

    .prologue
    .line 358
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    .line 359
    return-void
.end method

.method public final glStencilFunc(III)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 363
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glStencilFunc(III)V

    .line 364
    return-void
.end method

.method public final glStencilMask(I)V
    .locals 1
    .parameter

    .prologue
    .line 368
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glStencilMask(I)V

    .line 369
    return-void
.end method

.method public final glStencilOp(III)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 373
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glStencilOp(III)V

    .line 374
    return-void
.end method

.method public final glTexCoordPointer(IIILjava/nio/Buffer;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 378
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 379
    return-void
.end method

.method public final glTexEnvf(IIF)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 383
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 384
    return-void
.end method

.method public final glTexEnvfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 388
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvfv(IILjava/nio/FloatBuffer;)V

    .line 389
    return-void
.end method

.method public final glTexEnvfv(II[FI)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 470
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvfv(II[FI)V

    .line 471
    return-void
.end method

.method public final glTexImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 394
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Ljavax/microedition/khronos/opengles/GL10;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 395
    return-void
.end method

.method public final glTexParameterf(IIF)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 399
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 400
    return-void
.end method

.method public final glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 405
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Ljavax/microedition/khronos/opengles/GL10;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 406
    return-void
.end method

.method public final glTranslatef(FFF)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 410
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 411
    return-void
.end method

.method public final glVertexPointer(IIILjava/nio/Buffer;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 415
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 416
    return-void
.end method

.method public final glViewport(IIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 420
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 421
    return-void
.end method
