.class public Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/graphics/glutils/VertexData;


# static fields
.field static final tmpHandle:Ljava/nio/IntBuffer;


# instance fields
.field final attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

.field final buffer:Ljava/nio/FloatBuffer;

.field bufferHandle:I

.field final byteBuffer:Ljava/nio/ByteBuffer;

.field isBound:Z

.field final isDirect:Z

.field isDirty:Z

.field final isStatic:Z

.field final usage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->newIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->tmpHandle:Ljava/nio/IntBuffer;

    return-void
.end method

.method public varargs constructor <init>(ZI[Lcom/badlogic/gdx/graphics/VertexAttribute;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->isDirty:Z

    .line 68
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->isBound:Z

    .line 76
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->isStatic:Z

    .line 77
    new-instance v0, Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-direct {v0, p3}, Lcom/badlogic/gdx/graphics/VertexAttributes;-><init>([Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    .line 85
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v0, v0, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    mul-int/2addr v0, p2

    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->newByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->isDirect:Z

    .line 88
    if-eqz p1, :cond_0

    const v0, 0x88e4

    :goto_0
    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->usage:I

    .line 89
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->buffer:Ljava/nio/FloatBuffer;

    .line 90
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->createBufferObject()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->bufferHandle:I

    .line 91
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    .line 92
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 93
    return-void

    .line 88
    :cond_0
    const v0, 0x88e8

    goto :goto_0
.end method

.method private createBufferObject()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    const v3, 0x8892

    .line 96
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    if-eqz v0, :cond_0

    .line 97
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-interface {v0, v2, v1}, Lcom/badlogic/gdx/graphics/GL20;->glGenBuffers(ILjava/nio/IntBuffer;)V

    .line 98
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-virtual {v1, v4}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    invoke-interface {v0, v3, v1}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    .line 99
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->usage:I

    invoke-interface {v0, v3, v1, v5, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 100
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, v3, v4}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    .line 107
    :goto_0
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v4}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    return v0

    .line 102
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl11:Lcom/badlogic/gdx/graphics/GL11;

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-interface {v0, v2, v1}, Lcom/badlogic/gdx/graphics/GL11;->glGenBuffers(ILjava/nio/IntBuffer;)V

    .line 103
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl11:Lcom/badlogic/gdx/graphics/GL11;

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-virtual {v1, v4}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    invoke-interface {v0, v3, v1}, Lcom/badlogic/gdx/graphics/GL11;->glBindBuffer(II)V

    .line 104
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl11:Lcom/badlogic/gdx/graphics/GL11;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->usage:I

    invoke-interface {v0, v3, v1, v5, v2}, Lcom/badlogic/gdx/graphics/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 105
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl11:Lcom/badlogic/gdx/graphics/GL11;

    invoke-interface {v0, v3, v4}, Lcom/badlogic/gdx/graphics/GL11;->glBindBuffer(II)V

    goto :goto_0
.end method


# virtual methods
.method public bind()V
    .locals 9

    .prologue
    const v5, 0x8892

    const/16 v1, 0x1406

    const/4 v0, 0x0

    .line 165
    sget-object v4, Lcom/badlogic/gdx/Gdx;->gl11:Lcom/badlogic/gdx/graphics/GL11;

    .line 167
    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->bufferHandle:I

    invoke-interface {v4, v5, v2}, Lcom/badlogic/gdx/graphics/GL11;->glBindBuffer(II)V

    .line 168
    iget-boolean v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->isDirty:Z

    if-eqz v2, :cond_0

    .line 169
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->limit()I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 170
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v4, v5, v0, v2, v3}, Lcom/badlogic/gdx/graphics/GL11;->glBufferSubData(IIILjava/nio/Buffer;)V

    .line 173
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->isDirty:Z

    .line 177
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/VertexAttributes;->size()I

    move-result v5

    move v3, v0

    move v2, v0

    .line 179
    :goto_0
    if-ge v3, v5, :cond_1

    .line 180
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v6

    .line 182
    iget v0, v6, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    packed-switch v0, :pswitch_data_0

    .line 210
    :pswitch_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unkown vertex attribute type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v6, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :pswitch_1
    const v0, 0x8074

    invoke-interface {v4, v0}, Lcom/badlogic/gdx/graphics/GL11;->glEnableClientState(I)V

    .line 185
    iget v0, v6, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v7, v7, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    iget v6, v6, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    invoke-interface {v4, v0, v1, v7, v6}, Lcom/badlogic/gdx/graphics/GL11;->glVertexPointer(IIII)V

    move v0, v2

    .line 179
    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_0

    .line 191
    :pswitch_2
    iget v0, v6, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    const/4 v7, 0x5

    if-ne v0, v7, :cond_2

    const/16 v0, 0x1401

    .line 193
    :goto_2
    const v7, 0x8076

    invoke-interface {v4, v7}, Lcom/badlogic/gdx/graphics/GL11;->glEnableClientState(I)V

    .line 194
    iget v7, v6, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v8, v8, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    iget v6, v6, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    invoke-interface {v4, v7, v0, v8, v6}, Lcom/badlogic/gdx/graphics/GL11;->glColorPointer(IIII)V

    move v0, v2

    .line 195
    goto :goto_1

    .line 198
    :pswitch_3
    const v0, 0x8075

    invoke-interface {v4, v0}, Lcom/badlogic/gdx/graphics/GL11;->glEnableClientState(I)V

    .line 199
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v0, v0, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    iget v6, v6, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    invoke-interface {v4, v1, v0, v6}, Lcom/badlogic/gdx/graphics/GL11;->glNormalPointer(III)V

    move v0, v2

    .line 200
    goto :goto_1

    .line 203
    :pswitch_4
    const v0, 0x84c0

    add-int/2addr v0, v2

    invoke-interface {v4, v0}, Lcom/badlogic/gdx/graphics/GL11;->glClientActiveTexture(I)V

    .line 204
    const v0, 0x8078

    invoke-interface {v4, v0}, Lcom/badlogic/gdx/graphics/GL11;->glEnableClientState(I)V

    .line 205
    iget v0, v6, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v7, v7, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    iget v6, v6, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    invoke-interface {v4, v0, v1, v7, v6}, Lcom/badlogic/gdx/graphics/GL11;->glTexCoordPointer(IIII)V

    .line 206
    add-int/lit8 v0, v2, 0x1

    .line 207
    goto :goto_1

    .line 214
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->isBound:Z

    .line 215
    return-void

    :cond_2
    move v0, v1

    goto :goto_2

    .line 182
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public bind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 11
    .parameter

    .prologue
    const v3, 0x8892

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 221
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 223
    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->bufferHandle:I

    invoke-interface {v0, v3, v1}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    .line 224
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->isDirty:Z

    if-eqz v1, :cond_0

    .line 225
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->limit()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 226
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v3, v8, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBufferSubData(IIILjava/nio/Buffer;)V

    .line 229
    iput-boolean v8, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->isDirty:Z

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/VertexAttributes;->size()I

    move-result v10

    move v9, v8

    .line 233
    :goto_0
    if-ge v9, v10, :cond_1

    .line 234
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v0, v9}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v0

    .line 235
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->alias:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->enableVertexAttribute(Ljava/lang/String;)V

    .line 236
    const/16 v3, 0x1406

    .line 238
    iget v1, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 239
    const/16 v3, 0x1401

    move v4, v7

    .line 242
    :goto_1
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->alias:Ljava/lang/String;

    iget v2, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v5, v5, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    iget v6, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setVertexAttribute(Ljava/lang/String;IIZII)V

    .line 233
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_0

    .line 245
    :cond_1
    iput-boolean v7, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->isBound:Z

    .line 246
    return-void

    :cond_2
    move v4, v8

    goto :goto_1
.end method

.method public dispose()V
    .locals 5

    .prologue
    const v4, 0x8892

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 305
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    if-eqz v0, :cond_0

    .line 306
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 307
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->tmpHandle:Ljava/nio/IntBuffer;

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->bufferHandle:I

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 308
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    .line 309
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 310
    invoke-interface {v0, v4, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    .line 311
    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-interface {v0, v3, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteBuffers(ILjava/nio/IntBuffer;)V

    .line 312
    iput v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->bufferHandle:I

    .line 322
    :goto_0
    return-void

    .line 314
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 315
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->tmpHandle:Ljava/nio/IntBuffer;

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->bufferHandle:I

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 316
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    .line 317
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl11:Lcom/badlogic/gdx/graphics/GL11;

    .line 318
    invoke-interface {v0, v4, v2}, Lcom/badlogic/gdx/graphics/GL11;->glBindBuffer(II)V

    .line 319
    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-interface {v0, v3, v1}, Lcom/badlogic/gdx/graphics/GL11;->glDeleteBuffers(ILjava/nio/IntBuffer;)V

    .line 320
    iput v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->bufferHandle:I

    goto :goto_0
.end method

.method public getAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    return-object v0
.end method

.method public getBuffer()Ljava/nio/FloatBuffer;
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->isDirty:Z

    .line 131
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->buffer:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public getBufferHandle()I
    .locals 1

    .prologue
    .line 327
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->bufferHandle:I

    return v0
.end method

.method public getNumMaxVertices()I
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v1, v1, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    div-int/2addr v0, v1

    return v0
.end method

.method public getNumVertices()I
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->limit()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v1, v1, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    div-int/2addr v0, v1

    return v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 298
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->createBufferObject()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->bufferHandle:I

    .line 299
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->isDirty:Z

    .line 300
    return-void
.end method

.method public setVertices([FII)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const v4, 0x8892

    const/4 v3, 0x0

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->isDirty:Z

    .line 138
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->isDirect:Z

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {p1, v0, p3, p2}, Lcom/badlogic/gdx/utils/BufferUtils;->copy([FLjava/nio/Buffer;II)V

    .line 140
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 141
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p3}, Ljava/nio/FloatBuffer;->limit(I)Ljava/nio/Buffer;

    .line 150
    :goto_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->isBound:Z

    if-eqz v0, :cond_0

    .line 151
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    if-eqz v0, :cond_2

    .line 152
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 153
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v4, v3, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBufferSubData(IIILjava/nio/Buffer;)V

    .line 158
    :goto_1
    iput-boolean v3, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->isDirty:Z

    .line 160
    :cond_0
    return-void

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 144
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    .line 145
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    .line 146
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 147
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->limit()I

    move-result v1

    shl-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 155
    :cond_2
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl11:Lcom/badlogic/gdx/graphics/GL11;

    .line 156
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v4, v3, v1, v2}, Lcom/badlogic/gdx/graphics/GL11;->glBufferSubData(IIILjava/nio/Buffer;)V

    goto :goto_1
.end method

.method public unbind()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 251
    sget-object v3, Lcom/badlogic/gdx/Gdx;->gl11:Lcom/badlogic/gdx/graphics/GL11;

    .line 253
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/VertexAttributes;->size()I

    move-result v4

    move v1, v2

    move v0, v2

    .line 255
    :goto_0
    if-ge v1, v4, :cond_0

    .line 257
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v5, v1}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v5

    .line 258
    iget v6, v5, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    packed-switch v6, :pswitch_data_0

    .line 274
    :pswitch_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unkown vertex attribute type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v5, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :pswitch_1
    const v5, 0x8076

    invoke-interface {v3, v5}, Lcom/badlogic/gdx/graphics/GL11;->glDisableClientState(I)V

    .line 255
    :goto_1
    :pswitch_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 266
    :pswitch_3
    const v5, 0x8075

    invoke-interface {v3, v5}, Lcom/badlogic/gdx/graphics/GL11;->glDisableClientState(I)V

    goto :goto_1

    .line 269
    :pswitch_4
    const v5, 0x84c0

    add-int/2addr v5, v0

    invoke-interface {v3, v5}, Lcom/badlogic/gdx/graphics/GL11;->glClientActiveTexture(I)V

    .line 270
    const v5, 0x8078

    invoke-interface {v3, v5}, Lcom/badlogic/gdx/graphics/GL11;->glDisableClientState(I)V

    .line 271
    add-int/lit8 v0, v0, 0x1

    .line 272
    goto :goto_1

    .line 278
    :cond_0
    const v0, 0x8892

    invoke-interface {v3, v0, v2}, Lcom/badlogic/gdx/graphics/GL11;->glBindBuffer(II)V

    .line 279
    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->isBound:Z

    .line 280
    return-void

    .line 258
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public unbind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 286
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 287
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/VertexAttributes;->size()I

    move-result v3

    move v0, v1

    .line 288
    :goto_0
    if-ge v0, v3, :cond_0

    .line 289
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v4

    .line 290
    iget-object v4, v4, Lcom/badlogic/gdx/graphics/VertexAttribute;->alias:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->disableVertexAttribute(Ljava/lang/String;)V

    .line 288
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 292
    :cond_0
    const v0, 0x8892

    invoke-interface {v2, v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    .line 293
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->isBound:Z

    .line 294
    return-void
.end method
