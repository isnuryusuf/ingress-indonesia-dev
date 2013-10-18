.class public Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;
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

    sput-object v0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->tmpHandle:Ljava/nio/IntBuffer;

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
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->isDirty:Z

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->isBound:Z

    .line 86
    mul-int/lit8 v0, p1, 0x2

    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->newUnsafeByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 87
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->isDirect:Z

    .line 89
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->buffer:Ljava/nio/ShortBuffer;

    .line 90
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->buffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->flip()Ljava/nio/Buffer;

    .line 91
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 92
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->createBufferObject()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->bufferHandle:I

    .line 93
    const v0, 0x88e4

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->usage:I

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
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->isDirty:Z

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->isBound:Z

    .line 72
    mul-int/lit8 v0, p2, 0x2

    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->newUnsafeByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 73
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->isDirect:Z

    .line 75
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->buffer:Ljava/nio/ShortBuffer;

    .line 76
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->buffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->flip()Ljava/nio/Buffer;

    .line 77
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 78
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->createBufferObject()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->bufferHandle:I

    .line 79
    if-eqz p1, :cond_0

    const v0, 0x88e4

    :goto_0
    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->usage:I

    .line 80
    return-void

    .line 79
    :cond_0
    const v0, 0x88e8

    goto :goto_0
.end method

.method private createBufferObject()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 97
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    if-eqz v0, :cond_0

    .line 98
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-interface {v0, v3, v1}, Lcom/badlogic/gdx/graphics/GL20;->glGenBuffers(ILjava/nio/IntBuffer;)V

    .line 99
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    .line 102
    :goto_0
    return v0

    .line 100
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl11:Lcom/badlogic/gdx/graphics/GL11;

    if-eqz v0, :cond_1

    .line 101
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl11:Lcom/badlogic/gdx/graphics/GL11;

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-interface {v0, v3, v1}, Lcom/badlogic/gdx/graphics/GL11;->glGenBuffers(ILjava/nio/IntBuffer;)V

    .line 102
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    goto :goto_0

    .line 104
    :cond_1
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string/jumbo v1, "Can not use IndexBufferObject with GLES 1.0, need 1.1 or 2.0"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bind()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const v4, 0x8893

    .line 163
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->bufferHandle:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string/jumbo v1, "No buffer allocated!"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl11:Lcom/badlogic/gdx/graphics/GL11;

    if-eqz v0, :cond_2

    .line 166
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl11:Lcom/badlogic/gdx/graphics/GL11;

    .line 167
    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->bufferHandle:I

    invoke-interface {v0, v4, v1}, Lcom/badlogic/gdx/graphics/GL11;->glBindBuffer(II)V

    .line 168
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->isDirty:Z

    if-eqz v1, :cond_1

    .line 169
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->buffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v2}, Ljava/nio/ShortBuffer;->limit()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 170
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->usage:I

    invoke-interface {v0, v4, v1, v2, v3}, Lcom/badlogic/gdx/graphics/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 171
    iput-boolean v5, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->isDirty:Z

    .line 182
    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->isBound:Z

    .line 183
    return-void

    .line 174
    :cond_2
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 175
    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->bufferHandle:I

    invoke-interface {v0, v4, v1}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    .line 176
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->isDirty:Z

    if-eqz v1, :cond_1

    .line 177
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->buffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v2}, Ljava/nio/ShortBuffer;->limit()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 178
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->usage:I

    invoke-interface {v0, v4, v1, v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 179
    iput-boolean v5, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->isDirty:Z

    goto :goto_0
.end method

.method public dispose()V
    .locals 5

    .prologue
    const v4, 0x8893

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 203
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    if-eqz v0, :cond_1

    .line 204
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 205
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->tmpHandle:Ljava/nio/IntBuffer;

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->bufferHandle:I

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 206
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    .line 207
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 208
    invoke-interface {v0, v4, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    .line 209
    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-interface {v0, v3, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteBuffers(ILjava/nio/IntBuffer;)V

    .line 210
    iput v2, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->bufferHandle:I

    .line 220
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->disposeUnsafeByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 221
    return-void

    .line 211
    :cond_1
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl11:Lcom/badlogic/gdx/graphics/GL11;

    if-eqz v0, :cond_0

    .line 212
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 213
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->tmpHandle:Ljava/nio/IntBuffer;

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->bufferHandle:I

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 214
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    .line 215
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl11:Lcom/badlogic/gdx/graphics/GL11;

    .line 216
    invoke-interface {v0, v4, v2}, Lcom/badlogic/gdx/graphics/GL11;->glBindBuffer(II)V

    .line 217
    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-interface {v0, v3, v1}, Lcom/badlogic/gdx/graphics/GL11;->glDeleteBuffers(ILjava/nio/IntBuffer;)V

    .line 218
    iput v2, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->bufferHandle:I

    goto :goto_0
.end method

.method public getBuffer()Ljava/nio/ShortBuffer;
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->isDirty:Z

    .line 158
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->buffer:Ljava/nio/ShortBuffer;

    return-object v0
.end method

.method public getNumIndices()I
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->buffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->limit()I

    move-result v0

    return v0
.end method

.method public getNumMaxIndices()I
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->buffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->capacity()I

    move-result v0

    return v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->createBufferObject()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->bufferHandle:I

    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->isDirty:Z

    .line 199
    return-void
.end method

.method public setIndices([SII)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const v5, 0x8893

    const/4 v4, 0x0

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->isDirty:Z

    .line 132
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->buffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    .line 133
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->buffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    .line 134
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->buffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->flip()Ljava/nio/Buffer;

    .line 135
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 136
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    shl-int/lit8 v1, p3, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 138
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->isBound:Z

    if-eqz v0, :cond_1

    .line 139
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl11:Lcom/badlogic/gdx/graphics/GL11;

    if-eqz v0, :cond_2

    .line 140
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl11:Lcom/badlogic/gdx/graphics/GL11;

    .line 141
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->usage:I

    invoke-interface {v0, v5, v1, v2, v3}, Lcom/badlogic/gdx/graphics/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 146
    :cond_0
    :goto_0
    iput-boolean v4, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->isDirty:Z

    .line 148
    :cond_1
    return-void

    .line 142
    :cond_2
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    if-eqz v0, :cond_0

    .line 143
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 144
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->usage:I

    invoke-interface {v0, v5, v1, v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glBufferData(IILjava/nio/Buffer;I)V

    goto :goto_0
.end method

.method public unbind()V
    .locals 3

    .prologue
    const v2, 0x8893

    const/4 v1, 0x0

    .line 187
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl11:Lcom/badlogic/gdx/graphics/GL11;

    if-eqz v0, :cond_1

    .line 188
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl11:Lcom/badlogic/gdx/graphics/GL11;

    invoke-interface {v0, v2, v1}, Lcom/badlogic/gdx/graphics/GL11;->glBindBuffer(II)V

    .line 192
    :cond_0
    :goto_0
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->isBound:Z

    .line 193
    return-void

    .line 189
    :cond_1
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    if-eqz v0, :cond_0

    .line 190
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, v2, v1}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    goto :goto_0
.end method
