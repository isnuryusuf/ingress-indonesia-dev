.class public final Lcom/badlogic/gdx/graphics/glutils/ShaderProgram$Uniform;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field private uniformLocation:I

.field private final uniformName:Ljava/lang/String;

.field private final uniformType:I


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram$Uniform;->this$0:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram$Uniform;->uniformName:Ljava/lang/String;

    .line 83
    iput p3, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram$Uniform;->uniformType:I

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram$Uniform;->uniformLocation:I

    .line 85
    return-void
.end method


# virtual methods
.method final fetchLocation(I)V
    .locals 3
    .parameter

    .prologue
    .line 89
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram$Uniform;->uniformName:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/badlogic/gdx/graphics/GL20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram$Uniform;->uniformLocation:I

    .line 90
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram$Uniform;->uniformLocation:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 91
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Can\'t find location of uniform: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram$Uniform;->uniformName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    return-void
.end method

.method public final getLocation()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram$Uniform;->uniformLocation:I

    return v0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram$Uniform;->uniformType:I

    return v0
.end method

.method public final setUniformMatrix(Lcom/badlogic/gdx/math/Matrix3;)V
    .locals 1
    .parameter

    .prologue
    .line 182
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram$Uniform;->setUniformMatrix(Lcom/badlogic/gdx/math/Matrix3;Z)V

    .line 183
    return-void
.end method

.method public final setUniformMatrix(Lcom/badlogic/gdx/math/Matrix3;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 189
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram$Uniform;->this$0:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->matrix:Ljava/nio/FloatBuffer;

    .line 190
    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Matrix3;->getValues()[F

    move-result-object v1

    .line 191
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 192
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/badlogic/gdx/utils/BufferUtils;->copy([FLjava/nio/Buffer;II)V

    .line 193
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram$Uniform;->uniformLocation:I

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3, p2, v0}, Lcom/badlogic/gdx/graphics/GL20;->glUniformMatrix3fv(IIZLjava/nio/FloatBuffer;)V

    .line 194
    return-void
.end method

.method public final setUniformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 1
    .parameter

    .prologue
    .line 166
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram$Uniform;->setUniformMatrix(Lcom/badlogic/gdx/math/Matrix4;Z)V

    .line 167
    return-void
.end method

.method public final setUniformMatrix(Lcom/badlogic/gdx/math/Matrix4;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 173
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram$Uniform;->this$0:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->matrix:Ljava/nio/FloatBuffer;

    .line 174
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 175
    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v2, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/badlogic/gdx/utils/BufferUtils;->copy([FLjava/nio/Buffer;II)V

    .line 176
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram$Uniform;->uniformLocation:I

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3, p2, v0}, Lcom/badlogic/gdx/graphics/GL20;->glUniformMatrix4fv(IIZLjava/nio/FloatBuffer;)V

    .line 177
    return-void
.end method

.method public final setUniformf(F)V
    .locals 2
    .parameter

    .prologue
    .line 136
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram$Uniform;->uniformLocation:I

    invoke-interface {v0, v1, p1}, Lcom/badlogic/gdx/graphics/GL20;->glUniform1f(IF)V

    .line 137
    return-void
.end method

.method public final setUniformf(FF)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 143
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram$Uniform;->uniformLocation:I

    invoke-interface {v0, v1, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glUniform2f(IFF)V

    .line 144
    return-void
.end method

.method public final setUniformf(FFF)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 151
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram$Uniform;->uniformLocation:I

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform3f(IFFF)V

    .line 152
    return-void
.end method

.method public final setUniformf(FFFF)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 160
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram$Uniform;->uniformLocation:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL20;->glUniform4f(IFFFF)V

    .line 161
    return-void
.end method

.method public final setUniformi(I)V
    .locals 2
    .parameter

    .prologue
    .line 106
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram$Uniform;->uniformLocation:I

    invoke-interface {v0, v1, p1}, Lcom/badlogic/gdx/graphics/GL20;->glUniform1i(II)V

    .line 107
    return-void
.end method

.method public final setUniformi(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 113
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram$Uniform;->uniformLocation:I

    invoke-interface {v0, v1, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glUniform2i(III)V

    .line 114
    return-void
.end method

.method public final setUniformi(III)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 121
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram$Uniform;->uniformLocation:I

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform3i(IIII)V

    .line 122
    return-void
.end method

.method public final setUniformi(IIII)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 130
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram$Uniform;->uniformLocation:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL20;->glUniform4i(IIIII)V

    .line 131
    return-void
.end method
