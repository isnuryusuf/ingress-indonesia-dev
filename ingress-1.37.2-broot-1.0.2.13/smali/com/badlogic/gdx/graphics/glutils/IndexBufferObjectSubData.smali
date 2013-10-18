.class public Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/graphics/glutils/IndexData;


# static fields
.field static final tmpHandle:Ljava/nio/IntBuffer;


# instance fields
.field buffer:Ljava/nio/ShortBuffer;

.field bufferHandle:I

.field byteBuffer:Ljava/nio/ByteBuffer;

.field isBound:Z

.field final isDirect:Z

.field isDirty:Z

.field final usage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->newIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->tmpHandle:Ljava/nio/IntBuffer;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->isDirty:Z

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->isBound:Z

    .line 86
    mul-int/lit8 v0, p1, 0x2

    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->newByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 87
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->isDirect:Z

    .line 89
    const v0, 0x88e4

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->usage:I

    .line 90
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->buffer:Ljava/nio/ShortBuffer;

    .line 91
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->buffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->flip()Ljava/nio/Buffer;

    .line 92
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 93
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->createBufferObject()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->bufferHandle:I

    .line 94
    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->isDirty:Z

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->isBound:Z

    .line 72
    mul-int/lit8 v0, p2, 0x2

    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->newByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 73
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->isDirect:Z

    .line 75
    if-eqz p1, :cond_0

    const v0, 0x88e4

    :goto_0
    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->usage:I

    .line 76
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->buffer:Ljava/nio/ShortBuffer;

    .line 77
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->buffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->flip()Ljava/nio/Buffer;

    .line 78
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 79
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->createBufferObject()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->bufferHandle:I

    .line 80
    return-void

    .line 75
    :cond_0
    const v0, 0x88e8

    goto :goto_0
.end method

.method private createBufferObject()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const v4, 0x8893

    const/4 v0, 0x0

    .line 97
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    if-eqz v1, :cond_1

    .line 98
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    sget-object v2, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-interface {v1, v3, v2}, Lcom/badlogic/gdx/graphics/GL20;->glGenBuffers(ILjava/nio/IntBuffer;)V

    .line 99
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    sget-object v2, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    invoke-interface {v1, v4, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    .line 100
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    iget v3, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->usage:I

    invoke-interface {v1, v4, v2, v5, v3}, Lcom/badlogic/gdx/graphics/GL20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 101
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v1, v4, v0}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    .line 102
    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    .line 111
    :cond_0
    :goto_0
    return v0

    .line 103
    :cond_1
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl11:Lcom/badlogic/gdx/graphics/GL11;

    if-eqz v1, :cond_0

    .line 104
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl11:Lcom/badlogic/gdx/graphics/GL11;

    sget-object v2, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-interface {v1, v3, v2}, Lcom/badlogic/gdx/graphics/GL11;->glGenBuffers(ILjava/nio/IntBuffer;)V

    .line 105
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl11:Lcom/badlogic/gdx/graphics/GL11;

    sget-object v2, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    invoke-interface {v1, v4, v2}, Lcom/badlogic/gdx/graphics/GL11;->glBindBuffer(II)V

    .line 106
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl11:Lcom/badlogic/gdx/graphics/GL11;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    iget v3, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->usage:I

    invoke-interface {v1, v4, v2, v5, v3}, Lcom/badlogic/gdx/graphics/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 107
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl11:Lcom/badlogic/gdx/graphics/GL11;

    invoke-interface {v1, v4, v0}, Lcom/badlogic/gdx/graphics/GL11;->glBindBuffer(II)V

    .line 108
    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public bind()V
    .locals 5

    .prologue
    const v4, 0x8893

    const/4 v3, 0x0

    .line 174
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->bufferHandle:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string/jumbo v1, "buuh"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl11:Lcom/badlogic/gdx/graphics/GL11;

    if-eqz v0, :cond_2

    .line 177
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl11:Lcom/badlogic/gdx/graphics/GL11;

    .line 178
    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->bufferHandle:I

    invoke-interface {v0, v4, v1}, Lcom/badlogic/gdx/graphics/GL11;->glBindBuffer(II)V

    .line 179
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->isDirty:Z

    if-eqz v1, :cond_1

    .line 182
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->buffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v2}, Ljava/nio/ShortBuffer;->limit()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 183
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v4, v3, v1, v2}, Lcom/badlogic/gdx/graphics/GL11;->glBufferSubData(IIILjava/nio/Buffer;)V

    .line 184
    iput-boolean v3, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->isDirty:Z

    .line 197
    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->isBound:Z

    .line 198
    return-void

    .line 187
    :cond_2
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 188
    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->bufferHandle:I

    invoke-interface {v0, v4, v1}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    .line 189
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->isDirty:Z

    if-eqz v1, :cond_1

    .line 192
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->buffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v2}, Ljava/nio/ShortBuffer;->limit()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 193
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v4, v3, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBufferSubData(IIILjava/nio/Buffer;)V

    .line 194
    iput-boolean v3, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->isDirty:Z

    goto :goto_0
.end method

.method public dispose()V
    .locals 5

    .prologue
    const v4, 0x8893

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 218
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    if-eqz v0, :cond_1

    .line 219
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 220
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->tmpHandle:Ljava/nio/IntBuffer;

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->bufferHandle:I

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 221
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    .line 222
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 223
    invoke-interface {v0, v4, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    .line 224
    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-interface {v0, v3, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteBuffers(ILjava/nio/IntBuffer;)V

    .line 225
    iput v2, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->bufferHandle:I

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl11:Lcom/badlogic/gdx/graphics/GL11;

    if-eqz v0, :cond_0

    .line 227
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 228
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->tmpHandle:Ljava/nio/IntBuffer;

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->bufferHandle:I

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 229
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    .line 230
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl11:Lcom/badlogic/gdx/graphics/GL11;

    .line 231
    invoke-interface {v0, v4, v2}, Lcom/badlogic/gdx/graphics/GL11;->glBindBuffer(II)V

    .line 232
    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-interface {v0, v3, v1}, Lcom/badlogic/gdx/graphics/GL11;->glDeleteBuffers(ILjava/nio/IntBuffer;)V

    .line 233
    iput v2, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->bufferHandle:I

    goto :goto_0
.end method

.method public getBuffer()Ljava/nio/ShortBuffer;
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->isDirty:Z

    .line 169
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->buffer:Ljava/nio/ShortBuffer;

    return-object v0
.end method

.method public getNumIndices()I
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->buffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->limit()I

    move-result v0

    return v0
.end method

.method public getNumMaxIndices()I
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->buffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->capacity()I

    move-result v0

    return v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 212
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->createBufferObject()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->bufferHandle:I

    .line 213
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->isDirty:Z

    .line 214
    return-void
.end method

.method public setIndices([SII)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const v4, 0x8893

    const/4 v3, 0x0

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->isDirty:Z

    .line 138
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->buffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    .line 139
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->buffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    .line 140
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->buffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->flip()Ljava/nio/Buffer;

    .line 141
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 142
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    shl-int/lit8 v1, p3, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 144
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->isBound:Z

    if-eqz v0, :cond_1

    .line 145
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl11:Lcom/badlogic/gdx/graphics/GL11;

    if-eqz v0, :cond_2

    .line 146
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl11:Lcom/badlogic/gdx/graphics/GL11;

    .line 149
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v4, v3, v1, v2}, Lcom/badlogic/gdx/graphics/GL11;->glBufferSubData(IIILjava/nio/Buffer;)V

    .line 157
    :cond_0
    :goto_0
    iput-boolean v3, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->isDirty:Z

    .line 159
    :cond_1
    return-void

    .line 150
    :cond_2
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl11:Lcom/badlogic/gdx/graphics/GL11;

    if-eqz v0, :cond_0

    .line 151
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 154
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v4, v3, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBufferSubData(IIILjava/nio/Buffer;)V

    goto :goto_0
.end method

.method public unbind()V
    .locals 3

    .prologue
    const v2, 0x8893

    const/4 v1, 0x0

    .line 202
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl11:Lcom/badlogic/gdx/graphics/GL11;

    if-eqz v0, :cond_1

    .line 203
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl11:Lcom/badlogic/gdx/graphics/GL11;

    invoke-interface {v0, v2, v1}, Lcom/badlogic/gdx/graphics/GL11;->glBindBuffer(II)V

    .line 207
    :cond_0
    :goto_0
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->isBound:Z

    .line 208
    return-void

    .line 204
    :cond_1
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    if-eqz v0, :cond_0

    .line 205
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, v2, v1}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    goto :goto_0
.end method
