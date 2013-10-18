.class public Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# static fields
.field private static final buffers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/badlogic/gdx/Application;",
            "Ljava/util/List",
            "<",
            "Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private colorTexture:Lcom/badlogic/gdx/graphics/Texture;

.field private depthbufferHandle:I

.field private final format:Lcom/badlogic/gdx/graphics/Pixmap$Format;

.field private framebufferHandle:I

.field private final hasDepth:Z

.field private final height:I

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->buffers:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Pixmap$Format;IIZ)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput p2, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->width:I

    .line 88
    iput p3, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->height:I

    .line 89
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->format:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    .line 90
    iput-boolean p4, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->hasDepth:Z

    .line 91
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->build()V

    .line 93
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-direct {p0, v0, p0}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->addManagedFrameBuffer(Lcom/badlogic/gdx/Application;Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;)V

    .line 94
    return-void
.end method

.method private addManagedFrameBuffer(Lcom/badlogic/gdx/Application;Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 192
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->buffers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 193
    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 194
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->buffers:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    return-void
.end method

.method private build()V
    .locals 10

    .prologue
    const/16 v3, 0xde1

    const v9, 0x8d41

    const v1, 0x8d40

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 97
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->isGL20Available()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string/jumbo v1, "GL2 is required."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/graphics/Texture;

    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->width:I

    iget v4, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->height:I

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->format:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v0, v2, v4, v6}, Lcom/badlogic/gdx/graphics/Texture;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->colorTexture:Lcom/badlogic/gdx/graphics/Texture;

    .line 100
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->colorTexture:Lcom/badlogic/gdx/graphics/Texture;

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {v0, v2, v4}, Lcom/badlogic/gdx/graphics/Texture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    .line 101
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->colorTexture:Lcom/badlogic/gdx/graphics/Texture;

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-virtual {v0, v2, v4}, Lcom/badlogic/gdx/graphics/Texture;->setWrap(Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    .line 102
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getGL20()Lcom/badlogic/gdx/graphics/GL20;

    move-result-object v0

    .line 104
    invoke-static {v8}, Lcom/badlogic/gdx/utils/BufferUtils;->newIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v6

    .line 105
    invoke-interface {v0, v8, v6}, Lcom/badlogic/gdx/graphics/GL20;->glGenFramebuffers(ILjava/nio/IntBuffer;)V

    .line 106
    invoke-virtual {v6, v5}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->framebufferHandle:I

    .line 108
    iget-boolean v2, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->hasDepth:Z

    if-eqz v2, :cond_1

    .line 109
    invoke-virtual {v6}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 110
    invoke-interface {v0, v8, v6}, Lcom/badlogic/gdx/graphics/GL20;->glGenRenderbuffers(ILjava/nio/IntBuffer;)V

    .line 111
    invoke-virtual {v6, v5}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->depthbufferHandle:I

    .line 114
    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->colorTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->getTextureObjectHandle()I

    move-result v2

    invoke-interface {v0, v3, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBindTexture(II)V

    .line 116
    iget-boolean v2, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->hasDepth:Z

    if-eqz v2, :cond_2

    .line 117
    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->depthbufferHandle:I

    invoke-interface {v0, v9, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBindRenderbuffer(II)V

    .line 118
    const v2, 0x81a5

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->colorTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v4

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->colorTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v7

    invoke-interface {v0, v9, v2, v4, v7}, Lcom/badlogic/gdx/graphics/GL20;->glRenderbufferStorage(IIII)V

    .line 122
    :cond_2
    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->framebufferHandle:I

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBindFramebuffer(II)V

    .line 123
    const v2, 0x8ce0

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->colorTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/Texture;->getTextureObjectHandle()I

    move-result v4

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL20;->glFramebufferTexture2D(IIIII)V

    .line 125
    iget-boolean v2, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->hasDepth:Z

    if-eqz v2, :cond_3

    .line 126
    const v2, 0x8d00

    iget v4, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->depthbufferHandle:I

    invoke-interface {v0, v1, v2, v9, v4}, Lcom/badlogic/gdx/graphics/GL20;->glFramebufferRenderbuffer(IIII)V

    .line 128
    :cond_3
    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glCheckFramebufferStatus(I)I

    move-result v2

    .line 130
    invoke-interface {v0, v9, v5}, Lcom/badlogic/gdx/graphics/GL20;->glBindRenderbuffer(II)V

    .line 131
    invoke-interface {v0, v3, v5}, Lcom/badlogic/gdx/graphics/GL20;->glBindTexture(II)V

    .line 132
    invoke-interface {v0, v1, v5}, Lcom/badlogic/gdx/graphics/GL20;->glBindFramebuffer(II)V

    .line 134
    const v1, 0x8cd5

    if-eq v2, v1, :cond_7

    .line 135
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->colorTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 136
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->hasDepth:Z

    if-eqz v1, :cond_4

    .line 137
    invoke-virtual {v6}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 138
    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->depthbufferHandle:I

    invoke-virtual {v6, v1}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 139
    invoke-virtual {v6}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    .line 140
    invoke-interface {v0, v8, v6}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteRenderbuffers(ILjava/nio/IntBuffer;)V

    .line 143
    :cond_4
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->colorTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 144
    invoke-virtual {v6}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 145
    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->framebufferHandle:I

    invoke-virtual {v6, v1}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 146
    invoke-virtual {v6}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    .line 147
    invoke-interface {v0, v8, v6}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteFramebuffers(ILjava/nio/IntBuffer;)V

    .line 149
    const v0, 0x8cd6

    if-ne v2, v0, :cond_5

    .line 150
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "frame buffer couldn\'t be constructed: incomplete attachment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_5
    const v0, 0x8cd9

    if-ne v2, v0, :cond_6

    .line 152
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "frame buffer couldn\'t be constructed: incomplete dimensions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_6
    const v0, 0x8cd7

    if-ne v2, v0, :cond_7

    .line 154
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "frame buffer couldn\'t be constructed: missing attachment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_7
    return-void
.end method

.method public static clearAllFrameBuffers(Lcom/badlogic/gdx/Application;)V
    .locals 1
    .parameter

    .prologue
    .line 211
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->buffers:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    return-void
.end method

.method public static getManagedStatus()Ljava/lang/String;
    .locals 4

    .prologue
    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    const-string/jumbo v0, "Managed buffers/app: { "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->buffers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/Application;

    .line 219
    sget-object v3, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->buffers:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 220
    const-string/jumbo v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 222
    :cond_0
    const-string/jumbo v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static invalidateAllFrameBuffers(Lcom/badlogic/gdx/Application;)V
    .locals 3
    .parameter

    .prologue
    .line 201
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getGL20()Lcom/badlogic/gdx/graphics/GL20;

    move-result-object v0

    if-nez v0, :cond_1

    .line 208
    :cond_0
    return-void

    .line 203
    :cond_1
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->buffers:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 204
    if-eqz v0, :cond_0

    .line 205
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 206
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    invoke-direct {v1}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->build()V

    .line 205
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method


# virtual methods
.method public begin()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 181
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getGL20()Lcom/badlogic/gdx/graphics/GL20;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->colorTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->colorTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v2

    invoke-interface {v0, v3, v3, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glViewport(IIII)V

    .line 182
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getGL20()Lcom/badlogic/gdx/graphics/GL20;

    move-result-object v0

    const v1, 0x8d40

    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->framebufferHandle:I

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBindFramebuffer(II)V

    .line 183
    return-void
.end method

.method public dispose()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 160
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getGL20()Lcom/badlogic/gdx/graphics/GL20;

    move-result-object v0

    .line 162
    invoke-static {v3}, Lcom/badlogic/gdx/utils/BufferUtils;->newIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v1

    .line 164
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->colorTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 165
    iget-boolean v2, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->hasDepth:Z

    if-eqz v2, :cond_0

    .line 166
    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->depthbufferHandle:I

    invoke-virtual {v1, v2}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 167
    invoke-virtual {v1}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    .line 168
    invoke-interface {v0, v3, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteRenderbuffers(ILjava/nio/IntBuffer;)V

    .line 171
    :cond_0
    invoke-virtual {v1}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 172
    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->framebufferHandle:I

    invoke-virtual {v1, v2}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 173
    invoke-virtual {v1}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    .line 174
    invoke-interface {v0, v3, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteFramebuffers(ILjava/nio/IntBuffer;)V

    .line 176
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->buffers:Ljava/util/Map;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->buffers:Ljava/util/Map;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 177
    :cond_1
    return-void
.end method

.method public end()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 187
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getGL20()Lcom/badlogic/gdx/graphics/GL20;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v1

    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v2

    invoke-interface {v0, v3, v3, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glViewport(IIII)V

    .line 188
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getGL20()Lcom/badlogic/gdx/graphics/GL20;

    move-result-object v0

    const v1, 0x8d40

    invoke-interface {v0, v1, v3}, Lcom/badlogic/gdx/graphics/GL20;->glBindFramebuffer(II)V

    .line 189
    return-void
.end method

.method public getColorBufferTexture()Lcom/badlogic/gdx/graphics/Texture;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->colorTexture:Lcom/badlogic/gdx/graphics/Texture;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->colorTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->colorTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v0

    return v0
.end method
