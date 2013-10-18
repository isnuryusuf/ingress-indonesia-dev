.class final Lcom/badlogic/gdx/backends/android/AndroidGL11;
.super Lcom/badlogic/gdx/backends/android/AndroidGL10;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/graphics/GL11;


# instance fields
.field private final gl:Ljavax/microedition/khronos/opengles/GL11;


# direct methods
.method public constructor <init>(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/AndroidGL10;-><init>(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 35
    check-cast p1, Ljavax/microedition/khronos/opengles/GL11;

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGL11;->gl:Ljavax/microedition/khronos/opengles/GL11;

    .line 36
    return-void
.end method


# virtual methods
.method public final glBindBuffer(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL11;->gl:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 41
    return-void
.end method

.method public final glBufferData(IILjava/nio/Buffer;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL11;->gl:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 46
    return-void
.end method

.method public final glBufferSubData(IIILjava/nio/Buffer;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL11;->gl:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glBufferSubData(IIILjava/nio/Buffer;)V

    .line 51
    return-void
.end method

.method public final glClipPlanef(ILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL11;->gl:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glClipPlanef(ILjava/nio/FloatBuffer;)V

    .line 56
    return-void
.end method

.method public final glClipPlanef(I[FI)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 180
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL11;->gl:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glClipPlanef(I[FI)V

    .line 181
    return-void
.end method

.method public final glColor4ub(BBBB)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL11;->gl:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glColor4ub(BBBB)V

    .line 61
    return-void
.end method

.method public final glColorPointer(IIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 260
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL11;->gl:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glColorPointer(IIII)V

    .line 261
    return-void
.end method

.method public final glDeleteBuffers(ILjava/nio/IntBuffer;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL11;->gl:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteBuffers(ILjava/nio/IntBuffer;)V

    .line 66
    return-void
.end method

.method public final glDeleteBuffers(I[II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 185
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL11;->gl:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteBuffers(I[II)V

    .line 186
    return-void
.end method

.method public final glDrawElements(IIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 280
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL11;->gl:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glDrawElements(IIII)V

    .line 281
    return-void
.end method

.method public final glGenBuffers(ILjava/nio/IntBuffer;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL11;->gl:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(ILjava/nio/IntBuffer;)V

    .line 71
    return-void
.end method

.method public final glGenBuffers(I[II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 190
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL11;->gl:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    .line 191
    return-void
.end method

.method public final glGetBooleanv(ILjava/nio/IntBuffer;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL11;->gl:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glGetBooleanv(ILjava/nio/IntBuffer;)V

    .line 76
    return-void
.end method

.method public final glGetBooleanv(I[ZI)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 195
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL11;->gl:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetBooleanv(I[ZI)V

    .line 196
    return-void
.end method

.method public final glGetBufferParameteriv(IILjava/nio/IntBuffer;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL11;->gl:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetBufferParameteriv(IILjava/nio/IntBuffer;)V

    .line 81
    return-void
.end method

.method public final glGetBufferParameteriv(II[II)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 200
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL11;->gl:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetBufferParameteriv(II[II)V

    .line 201
    return-void
.end method

.method public final glGetClipPlanef(ILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL11;->gl:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glGetClipPlanef(ILjava/nio/FloatBuffer;)V

    .line 86
    return-void
.end method

.method public final glGetClipPlanef(I[FI)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 205
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL11;->gl:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetClipPlanef(I[FI)V

    .line 206
    return-void
.end method

.method public final glGetFloatv(ILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL11;->gl:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glGetFloatv(ILjava/nio/FloatBuffer;)V

    .line 91
    return-void
.end method

.method public final glGetFloatv(I[FI)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 210
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL11;->gl:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetFloatv(I[FI)V

    .line 211
    return-void
.end method

.method public final glGetLightfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL11;->gl:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetLightfv(IILjava/nio/FloatBuffer;)V

    .line 96
    return-void
.end method

.method public final glGetLightfv(II[FI)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 215
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL11;->gl:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetLightfv(II[FI)V

    .line 216
    return-void
.end method

.method public final glGetMaterialfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL11;->gl:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetMaterialfv(IILjava/nio/FloatBuffer;)V

    .line 101
    return-void
.end method

.method public final glGetMaterialfv(II[FI)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 220
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL11;->gl:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetMaterialfv(II[FI)V

    .line 221
    return-void
.end method

.method public final glGetPointerv(I[Ljava/nio/Buffer;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL11;->gl:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glGetPointerv(I[Ljava/nio/Buffer;)V

    .line 106
    return-void
.end method

.method public final glGetTexEnviv(IILjava/nio/IntBuffer;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL11;->gl:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexEnviv(IILjava/nio/IntBuffer;)V

    .line 111
    return-void
.end method

.method public final glGetTexEnviv(II[II)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 225
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL11;->gl:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexEnviv(II[II)V

    .line 226
    return-void
.end method

.method public final glGetTexParameterfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL11;->gl:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexParameterfv(IILjava/nio/FloatBuffer;)V

    .line 116
    return-void
.end method

.method public final glGetTexParameterfv(II[FI)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 230
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL11;->gl:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexParameterfv(II[FI)V

    .line 231
    return-void
.end method

.method public final glGetTexParameteriv(IILjava/nio/IntBuffer;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL11;->gl:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexParameteriv(IILjava/nio/IntBuffer;)V

    .line 121
    return-void
.end method

.method public final glGetTexParameteriv(II[II)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 235
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL11;->gl:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexParameteriv(II[II)V

    .line 236
    return-void
.end method

.method public final glIsBuffer(I)Z
    .locals 1
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL11;->gl:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11;->glIsBuffer(I)Z

    move-result v0

    return v0
.end method

.method public final glIsEnabled(I)Z
    .locals 1
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL11;->gl:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11;->glIsEnabled(I)Z

    move-result v0

    return v0
.end method

.method public final glIsTexture(I)Z
    .locals 1
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL11;->gl:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11;->glIsTexture(I)Z

    move-result v0

    return v0
.end method

.method public final glNormalPointer(III)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 265
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL11;->gl:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glNormalPointer(III)V

    .line 266
    return-void
.end method

.method public final glPointParameterf(IF)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL11;->gl:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glPointParameterf(IF)V

    .line 141
    return-void
.end method

.method public final glPointParameterfv(ILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL11;->gl:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glPointParameterfv(ILjava/nio/FloatBuffer;)V

    .line 146
    return-void
.end method

.method public final glPointParameterfv(I[FI)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 240
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL11;->gl:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glPointParameterfv(I[FI)V

    .line 241
    return-void
.end method

.method public final glPointSizePointerOES(IILjava/nio/Buffer;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 150
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL11;->gl:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glPointSizePointerOES(IILjava/nio/Buffer;)V

    .line 151
    return-void
.end method

.method public final glTexCoordPointer(IIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 270
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL11;->gl:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    .line 271
    return-void
.end method

.method public final glTexEnvi(III)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 155
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL11;->gl:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvi(III)V

    .line 156
    return-void
.end method

.method public final glTexEnviv(IILjava/nio/IntBuffer;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 160
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL11;->gl:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnviv(IILjava/nio/IntBuffer;)V

    .line 161
    return-void
.end method

.method public final glTexEnviv(II[II)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 245
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL11;->gl:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnviv(II[II)V

    .line 246
    return-void
.end method

.method public final glTexParameterfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 165
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL11;->gl:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterfv(IILjava/nio/FloatBuffer;)V

    .line 166
    return-void
.end method

.method public final glTexParameterfv(II[FI)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 250
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL11;->gl:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterfv(II[FI)V

    .line 251
    return-void
.end method

.method public final glTexParameteri(III)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 170
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL11;->gl:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    .line 171
    return-void
.end method

.method public final glTexParameteriv(IILjava/nio/IntBuffer;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 175
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL11;->gl:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteriv(IILjava/nio/IntBuffer;)V

    .line 176
    return-void
.end method

.method public final glTexParameteriv(II[II)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 255
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL11;->gl:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteriv(II[II)V

    .line 256
    return-void
.end method

.method public final glVertexPointer(IIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 275
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL11;->gl:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    .line 276
    return-void
.end method
