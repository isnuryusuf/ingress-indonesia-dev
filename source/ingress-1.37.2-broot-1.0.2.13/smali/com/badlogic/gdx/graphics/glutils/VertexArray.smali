.class public Lcom/badlogic/gdx/graphics/glutils/VertexArray;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/graphics/glutils/VertexData;


# instance fields
.field final attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

.field final buffer:Ljava/nio/FloatBuffer;

.field final byteBuffer:Ljava/nio/ByteBuffer;

.field isBound:Z


# direct methods
.method public constructor <init>(ILcom/badlogic/gdx/graphics/VertexAttributes;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->isBound:Z

    .line 61
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    .line 62
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v0, v0, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    mul-int/2addr v0, p1

    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->newUnsafeByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 63
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->buffer:Ljava/nio/FloatBuffer;

    .line 64
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    .line 65
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 66
    return-void
.end method

.method public varargs constructor <init>(I[Lcom/badlogic/gdx/graphics/VertexAttribute;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 53
    new-instance v0, Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-direct {v0, p2}, Lcom/badlogic/gdx/graphics/VertexAttributes;-><init>([Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/glutils/VertexArray;-><init>(ILcom/badlogic/gdx/graphics/VertexAttributes;)V

    .line 54
    return-void
.end method


# virtual methods
.method public bind()V
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/16 v1, 0x1406

    .line 101
    sget-object v4, Lcom/badlogic/gdx/Gdx;->gl10:Lcom/badlogic/gdx/graphics/GL10;

    .line 103
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/VertexAttributes;->size()I

    move-result v5

    .line 105
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->limit()I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move v3, v0

    move v2, v0

    .line 107
    :goto_0
    if-ge v3, v5, :cond_0

    .line 108
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v6

    .line 110
    iget v0, v6, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v2

    .line 138
    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_0

    .line 112
    :pswitch_1
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v7, v6, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 113
    const v0, 0x8074

    invoke-interface {v4, v0}, Lcom/badlogic/gdx/graphics/GL10;->glEnableClientState(I)V

    .line 114
    iget v0, v6, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v6, v6, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v4, v0, v1, v6, v7}, Lcom/badlogic/gdx/graphics/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    move v0, v2

    .line 115
    goto :goto_1

    .line 120
    :pswitch_2
    iget v0, v6, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    const/4 v7, 0x5

    if-ne v0, v7, :cond_1

    const/16 v0, 0x1401

    .line 121
    :goto_2
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v8, v6, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 122
    const v7, 0x8076

    invoke-interface {v4, v7}, Lcom/badlogic/gdx/graphics/GL10;->glEnableClientState(I)V

    .line 123
    iget v6, v6, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v7, v7, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v4, v6, v0, v7, v8}, Lcom/badlogic/gdx/graphics/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    move v0, v2

    .line 124
    goto :goto_1

    .line 127
    :pswitch_3
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v6, v6, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 128
    const v0, 0x8075

    invoke-interface {v4, v0}, Lcom/badlogic/gdx/graphics/GL10;->glEnableClientState(I)V

    .line 129
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v0, v0, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v4, v1, v0, v6}, Lcom/badlogic/gdx/graphics/GL10;->glNormalPointer(IILjava/nio/Buffer;)V

    move v0, v2

    .line 130
    goto :goto_1

    .line 133
    :pswitch_4
    const v0, 0x84c0

    add-int/2addr v0, v2

    invoke-interface {v4, v0}, Lcom/badlogic/gdx/graphics/GL10;->glClientActiveTexture(I)V

    .line 134
    const v0, 0x8078

    invoke-interface {v4, v0}, Lcom/badlogic/gdx/graphics/GL10;->glEnableClientState(I)V

    .line 135
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v7, v6, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 136
    iget v0, v6, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v6, v6, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v4, v0, v1, v6, v7}, Lcom/badlogic/gdx/graphics/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 137
    add-int/lit8 v0, v2, 0x1

    goto :goto_1

    .line 145
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->isBound:Z

    .line 146
    return-void

    :cond_1
    move v0, v1

    goto :goto_2

    .line 110
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
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 181
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 182
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/VertexAttributes;->size()I

    move-result v10

    .line 183
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->limit()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move v9, v8

    .line 184
    :goto_0
    if-ge v9, v10, :cond_0

    .line 185
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v0, v9}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v0

    .line 186
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->alias:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->enableVertexAttribute(Ljava/lang/String;)V

    .line 187
    const/16 v3, 0x1406

    .line 189
    iget v1, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 190
    const/16 v3, 0x1401

    move v4, v7

    .line 193
    :goto_1
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v2, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 194
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->alias:Ljava/lang/String;

    iget v2, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v5, v0, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->byteBuffer:Ljava/nio/ByteBuffer;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setVertexAttribute(Ljava/lang/String;IIZILjava/nio/Buffer;)V

    .line 184
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_0

    .line 196
    :cond_0
    iput-boolean v7, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->isBound:Z

    .line 197
    return-void

    :cond_1
    move v4, v8

    goto :goto_1
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->disposeUnsafeByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 72
    return-void
.end method

.method public getAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    return-object v0
.end method

.method public getBuffer()Ljava/nio/FloatBuffer;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->buffer:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public getNumMaxVertices()I
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v1, v1, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    div-int/2addr v0, v1

    return v0
.end method

.method public getNumVertices()I
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->limit()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v1, v1, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    div-int/2addr v0, v1

    return v0
.end method

.method public setVertices([FII)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {p1, v0, p3, p2}, Lcom/badlogic/gdx/utils/BufferUtils;->copy([FLjava/nio/Buffer;II)V

    .line 95
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->buffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 96
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p3}, Ljava/nio/FloatBuffer;->limit(I)Ljava/nio/Buffer;

    .line 97
    return-void
.end method

.method public unbind()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 150
    sget-object v3, Lcom/badlogic/gdx/Gdx;->gl10:Lcom/badlogic/gdx/graphics/GL10;

    .line 152
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/VertexAttributes;->size()I

    move-result v4

    move v1, v2

    move v0, v2

    .line 154
    :goto_0
    if-ge v1, v4, :cond_0

    .line 156
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v5, v1}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v5

    .line 157
    iget v5, v5, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    packed-switch v5, :pswitch_data_0

    .line 171
    :goto_1
    :pswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 162
    :pswitch_1
    const v5, 0x8076

    invoke-interface {v3, v5}, Lcom/badlogic/gdx/graphics/GL10;->glDisableClientState(I)V

    goto :goto_1

    .line 165
    :pswitch_2
    const v5, 0x8075

    invoke-interface {v3, v5}, Lcom/badlogic/gdx/graphics/GL10;->glDisableClientState(I)V

    goto :goto_1

    .line 168
    :pswitch_3
    const v5, 0x84c0

    add-int/2addr v5, v0

    invoke-interface {v3, v5}, Lcom/badlogic/gdx/graphics/GL10;->glClientActiveTexture(I)V

    .line 169
    const v5, 0x8078

    invoke-interface {v3, v5}, Lcom/badlogic/gdx/graphics/GL10;->glDisableClientState(I)V

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 177
    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->isBound:Z

    .line 178
    return-void

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public unbind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 203
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 204
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/VertexAttributes;->size()I

    move-result v2

    move v0, v1

    .line 205
    :goto_0
    if-ge v0, v2, :cond_0

    .line 206
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v3

    .line 207
    iget-object v3, v3, Lcom/badlogic/gdx/graphics/VertexAttribute;->alias:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->disableVertexAttribute(Ljava/lang/String;)V

    .line 205
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 209
    :cond_0
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->isBound:Z

    .line 210
    return-void
.end method
