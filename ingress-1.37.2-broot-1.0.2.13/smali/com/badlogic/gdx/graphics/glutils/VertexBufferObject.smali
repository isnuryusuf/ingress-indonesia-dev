.class public Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/graphics/glutils/VertexData;


# static fields
.field static final tmpHandle:Ljava/nio/IntBuffer;


# instance fields
.field private final attributeIndexCache:[I

.field final attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

.field final buffer:Ljava/nio/FloatBuffer;

.field bufferHandle:I

.field final byteBuffer:Ljava/nio/ByteBuffer;

.field isBound:Z

.field isDirty:Z

.field final isStatic:Z

.field maxBufferSize:I

.field private shaderCache:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field final usage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->newIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->tmpHandle:Ljava/nio/IntBuffer;

    return-void
.end method

.method public constructor <init>(ZILcom/badlogic/gdx/graphics/VertexAttributes;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->isDirty:Z

    .line 68
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->isBound:Z

    .line 89
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->isStatic:Z

    .line 90
    iput-object p3, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    .line 91
    invoke-virtual {p3}, Lcom/badlogic/gdx/graphics/VertexAttributes;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->attributeIndexCache:[I

    .line 93
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v0, v0, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    mul-int/2addr v0, p2

    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->newUnsafeByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 94
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->buffer:Ljava/nio/FloatBuffer;

    .line 95
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    .line 96
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 97
    if-eqz p1, :cond_0

    const v0, 0x88e4

    :goto_0
    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->usage:I

    .line 98
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->createBufferObject()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->bufferHandle:I

    .line 99
    return-void

    .line 97
    :cond_0
    const v0, 0x88e8

    goto :goto_0
.end method

.method public varargs constructor <init>(ZI[Lcom/badlogic/gdx/graphics/VertexAttribute;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    new-instance v0, Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-direct {v0, p3}, Lcom/badlogic/gdx/graphics/VertexAttributes;-><init>([Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;-><init>(ZILcom/badlogic/gdx/graphics/VertexAttributes;)V

    .line 81
    return-void
.end method

.method private bufferData()V
    .locals 6

    .prologue
    const v5, 0x8892

    const/4 v4, 0x0

    .line 234
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 235
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->limit()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 237
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 238
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->isStatic:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->maxBufferSize:I

    if-gt v1, v0, :cond_2

    .line 240
    :cond_0
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    if-eqz v1, :cond_1

    .line 241
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 242
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->usage:I

    invoke-interface {v1, v5, v0, v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 258
    :goto_0
    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->maxBufferSize:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->maxBufferSize:I

    .line 259
    iput-boolean v4, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->isDirty:Z

    .line 260
    return-void

    .line 244
    :cond_1
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl11:Lcom/badlogic/gdx/graphics/GL11;

    .line 245
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->usage:I

    invoke-interface {v1, v5, v0, v2, v3}, Lcom/badlogic/gdx/graphics/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    goto :goto_0

    .line 249
    :cond_2
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    if-eqz v1, :cond_3

    .line 250
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 251
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v1, v5, v4, v0, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBufferSubData(IIILjava/nio/Buffer;)V

    goto :goto_0

    .line 253
    :cond_3
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl11:Lcom/badlogic/gdx/graphics/GL11;

    .line 254
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v1, v5, v4, v0, v2}, Lcom/badlogic/gdx/graphics/GL11;->glBufferSubData(IIILjava/nio/Buffer;)V

    goto :goto_0
.end method

.method private createBufferObject()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v5, 0x0

    const v4, 0x8892

    .line 102
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    if-eqz v0, :cond_0

    .line 103
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-interface {v0, v2, v1}, Lcom/badlogic/gdx/graphics/GL20;->glGenBuffers(ILjava/nio/IntBuffer;)V

    .line 107
    :goto_0
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v5}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    .line 108
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->isStatic:Z

    if-nez v1, :cond_2

    .line 110
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->maxBufferSize:I

    .line 111
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    if-eqz v1, :cond_1

    .line 112
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 113
    invoke-interface {v1, v4, v0}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    .line 114
    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->maxBufferSize:I

    iget v3, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->usage:I

    invoke-interface {v1, v4, v2, v6, v3}, Lcom/badlogic/gdx/graphics/GL20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 115
    invoke-interface {v1, v4, v5}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    .line 126
    :goto_1
    return v0

    .line 105
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl11:Lcom/badlogic/gdx/graphics/GL11;

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-interface {v0, v2, v1}, Lcom/badlogic/gdx/graphics/GL11;->glGenBuffers(ILjava/nio/IntBuffer;)V

    goto :goto_0

    .line 117
    :cond_1
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl11:Lcom/badlogic/gdx/graphics/GL11;

    .line 118
    invoke-interface {v1, v4, v0}, Lcom/badlogic/gdx/graphics/GL11;->glBindBuffer(II)V

    .line 119
    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->maxBufferSize:I

    iget v3, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->usage:I

    invoke-interface {v1, v4, v2, v6, v3}, Lcom/badlogic/gdx/graphics/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 120
    invoke-interface {v1, v4, v5}, Lcom/badlogic/gdx/graphics/GL11;->glBindBuffer(II)V

    goto :goto_1

    .line 123
    :cond_2
    iput v5, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->maxBufferSize:I

    goto :goto_1
.end method


# virtual methods
.method public bind()V
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/16 v1, 0x1406

    .line 183
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->bindBuffer()V

    .line 185
    sget-object v4, Lcom/badlogic/gdx/Gdx;->gl11:Lcom/badlogic/gdx/graphics/GL11;

    .line 187
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/VertexAttributes;->size()I

    move-result v5

    move v3, v0

    move v2, v0

    .line 189
    :goto_0
    if-ge v3, v5, :cond_0

    .line 190
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v6

    .line 192
    iget v0, v6, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v2

    .line 217
    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_0

    .line 194
    :pswitch_1
    const v0, 0x8074

    invoke-interface {v4, v0}, Lcom/badlogic/gdx/graphics/GL11;->glEnableClientState(I)V

    .line 195
    iget v0, v6, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v7, v7, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    iget v6, v6, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    invoke-interface {v4, v0, v1, v7, v6}, Lcom/badlogic/gdx/graphics/GL11;->glVertexPointer(IIII)V

    move v0, v2

    .line 196
    goto :goto_1

    .line 201
    :pswitch_2
    iget v0, v6, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    const/4 v7, 0x5

    if-ne v0, v7, :cond_1

    const/16 v0, 0x1401

    .line 203
    :goto_2
    const v7, 0x8076

    invoke-interface {v4, v7}, Lcom/badlogic/gdx/graphics/GL11;->glEnableClientState(I)V

    .line 204
    iget v7, v6, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v8, v8, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    iget v6, v6, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    invoke-interface {v4, v7, v0, v8, v6}, Lcom/badlogic/gdx/graphics/GL11;->glColorPointer(IIII)V

    move v0, v2

    .line 205
    goto :goto_1

    .line 208
    :pswitch_3
    const v0, 0x8075

    invoke-interface {v4, v0}, Lcom/badlogic/gdx/graphics/GL11;->glEnableClientState(I)V

    .line 209
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v0, v0, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    iget v6, v6, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    invoke-interface {v4, v1, v0, v6}, Lcom/badlogic/gdx/graphics/GL11;->glNormalPointer(III)V

    move v0, v2

    .line 210
    goto :goto_1

    .line 213
    :pswitch_4
    const v0, 0x84c0

    add-int/2addr v0, v2

    invoke-interface {v4, v0}, Lcom/badlogic/gdx/graphics/GL11;->glClientActiveTexture(I)V

    .line 214
    const v0, 0x8078

    invoke-interface {v4, v0}, Lcom/badlogic/gdx/graphics/GL11;->glEnableClientState(I)V

    .line 215
    iget v0, v6, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v7, v7, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    iget v6, v6, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    invoke-interface {v4, v0, v1, v7, v6}, Lcom/badlogic/gdx/graphics/GL11;->glTexCoordPointer(IIII)V

    .line 216
    add-int/lit8 v0, v2, 0x1

    goto :goto_1

    .line 224
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->isBound:Z

    .line 225
    return-void

    :cond_1
    move v0, v1

    goto :goto_2

    .line 192
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

    .line 269
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->bindBuffer()V

    .line 273
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/VertexAttributes;->size()I

    move-result v10

    .line 274
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->shaderCache:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-eq v0, p1, :cond_1

    move v0, v8

    .line 275
    :goto_0
    if-ge v0, v10, :cond_0

    .line 276
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->attributeIndexCache:[I

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v2

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/VertexAttribute;->alias:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->getAttributeLocation(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v0

    .line 275
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 278
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->shaderCache:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 281
    :cond_1
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    move v9, v8

    .line 282
    :goto_1
    if-ge v9, v10, :cond_3

    .line 283
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->attributeIndexCache:[I

    aget v1, v1, v9

    .line 284
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 285
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v2, v9}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v6

    .line 289
    const/16 v3, 0x1406

    .line 291
    iget v2, v6, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    const/4 v4, 0x5

    if-ne v2, v4, :cond_4

    .line 292
    const/16 v3, 0x1401

    move v4, v7

    .line 296
    :goto_2
    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glEnableVertexAttribArray(I)V

    .line 297
    iget v2, v6, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v5, v5, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    iget v6, v6, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    invoke-interface/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/GL20;->glVertexAttribPointer(IIIZII)V

    .line 282
    :cond_2
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_1

    .line 299
    :cond_3
    iput-boolean v7, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->isBound:Z

    .line 300
    return-void

    :cond_4
    move v4, v8

    goto :goto_2
.end method

.method public bindBuffer()V
    .locals 3

    .prologue
    const v2, 0x8892

    .line 168
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    if-eqz v0, :cond_1

    .line 169
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->bufferHandle:I

    invoke-interface {v0, v2, v1}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    .line 174
    :goto_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->isDirty:Z

    if-eqz v0, :cond_0

    .line 175
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->bufferData()V

    .line 177
    :cond_0
    return-void

    .line 171
    :cond_1
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl11:Lcom/badlogic/gdx/graphics/GL11;

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->bufferHandle:I

    invoke-interface {v0, v2, v1}, Lcom/badlogic/gdx/graphics/GL11;->glBindBuffer(II)V

    goto :goto_0
.end method

.method public dispose()V
    .locals 5

    .prologue
    const v4, 0x8892

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 366
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    if-eqz v0, :cond_0

    .line 367
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 368
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->tmpHandle:Ljava/nio/IntBuffer;

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->bufferHandle:I

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 369
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    .line 370
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 371
    invoke-interface {v0, v4, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    .line 372
    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-interface {v0, v3, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteBuffers(ILjava/nio/IntBuffer;)V

    .line 373
    iput v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->bufferHandle:I

    .line 383
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->disposeUnsafeByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 384
    return-void

    .line 375
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 376
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->tmpHandle:Ljava/nio/IntBuffer;

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->bufferHandle:I

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 377
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    .line 378
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl11:Lcom/badlogic/gdx/graphics/GL11;

    .line 379
    invoke-interface {v0, v4, v2}, Lcom/badlogic/gdx/graphics/GL11;->glBindBuffer(II)V

    .line 380
    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-interface {v0, v3, v1}, Lcom/badlogic/gdx/graphics/GL11;->glDeleteBuffers(ILjava/nio/IntBuffer;)V

    .line 381
    iput v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->bufferHandle:I

    goto :goto_0
.end method

.method public getAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    return-object v0
.end method

.method public getBuffer()Ljava/nio/FloatBuffer;
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->isDirty:Z

    .line 150
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->buffer:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public getNumMaxVertices()I
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v1, v1, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    div-int/2addr v0, v1

    return v0
.end method

.method public getNumVertices()I
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->limit()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v1, v1, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    div-int/2addr v0, v1

    return v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 358
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->shaderCache:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 359
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->createBufferObject()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->bufferHandle:I

    .line 360
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->isDirty:Z

    .line 361
    return-void
.end method

.method public setVertices([FII)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->isDirty:Z

    .line 157
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {p1, v0, p3, p2}, Lcom/badlogic/gdx/utils/BufferUtils;->copy([FLjava/nio/Buffer;II)V

    .line 158
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->buffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 159
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p3}, Ljava/nio/FloatBuffer;->limit(I)Ljava/nio/Buffer;

    .line 161
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->isBound:Z

    if-eqz v0, :cond_0

    .line 162
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->bufferData()V

    .line 164
    :cond_0
    return-void
.end method

.method public unbind()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 305
    sget-object v3, Lcom/badlogic/gdx/Gdx;->gl11:Lcom/badlogic/gdx/graphics/GL11;

    .line 307
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/VertexAttributes;->size()I

    move-result v4

    move v1, v2

    move v0, v2

    .line 309
    :goto_0
    if-ge v1, v4, :cond_0

    .line 311
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v5, v1}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v5

    .line 312
    iget v5, v5, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    packed-switch v5, :pswitch_data_0

    .line 326
    :goto_1
    :pswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 317
    :pswitch_1
    const v5, 0x8076

    invoke-interface {v3, v5}, Lcom/badlogic/gdx/graphics/GL11;->glDisableClientState(I)V

    goto :goto_1

    .line 320
    :pswitch_2
    const v5, 0x8075

    invoke-interface {v3, v5}, Lcom/badlogic/gdx/graphics/GL11;->glDisableClientState(I)V

    goto :goto_1

    .line 323
    :pswitch_3
    const v5, 0x84c0

    add-int/2addr v5, v0

    invoke-interface {v3, v5}, Lcom/badlogic/gdx/graphics/GL11;->glClientActiveTexture(I)V

    .line 324
    const v5, 0x8078

    invoke-interface {v3, v5}, Lcom/badlogic/gdx/graphics/GL11;->glDisableClientState(I)V

    .line 325
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 332
    :cond_0
    const v0, 0x8892

    invoke-interface {v3, v0, v2}, Lcom/badlogic/gdx/graphics/GL11;->glBindBuffer(II)V

    .line 333
    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->isBound:Z

    .line 334
    return-void

    .line 312
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
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 340
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->shaderCache:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-eq v0, p1, :cond_0

    .line 341
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unbind() called with different shader than bind()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 344
    :cond_0
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 345
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/VertexAttributes;->size()I

    move-result v3

    move v0, v1

    .line 346
    :goto_0
    if-ge v0, v3, :cond_2

    .line 347
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->attributeIndexCache:[I

    aget v4, v4, v0

    .line 348
    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 349
    invoke-interface {v2, v4}, Lcom/badlogic/gdx/graphics/GL20;->glDisableVertexAttribArray(I)V

    .line 346
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 352
    :cond_2
    const v0, 0x8892

    invoke-interface {v2, v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    .line 353
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->isBound:Z

    .line 354
    return-void
.end method
