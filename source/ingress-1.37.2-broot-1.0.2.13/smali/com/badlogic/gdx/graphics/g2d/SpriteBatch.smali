.class public Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# static fields
.field public static final C1:I = 0x2

.field public static final C2:I = 0x7

.field public static final C3:I = 0xc

.field public static final C4:I = 0x11

.field public static final U1:I = 0x3

.field public static final U2:I = 0x8

.field public static final U3:I = 0xd

.field public static final U4:I = 0x12

.field public static final V1:I = 0x4

.field public static final V2:I = 0x9

.field public static final V3:I = 0xe

.field public static final V4:I = 0x13

.field public static final X1:I = 0x0

.field public static final X2:I = 0x5

.field public static final X3:I = 0xa

.field public static final X4:I = 0xf

.field public static final Y1:I = 0x1

.field public static final Y2:I = 0x6

.field public static final Y3:I = 0xb

.field public static final Y4:I = 0x10

.field private static final spriteBatches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/badlogic/gdx/Application;",
            "Ljava/util/List",
            "<",
            "Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private blendDstFunc:I

.field private blendSrcFunc:I

.field private blendingDisabled:Z

.field color:F

.field private final combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

.field private currBufferIdx:I

.field private customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field private drawing:Z

.field private idx:I

.field private final indexBuffer:Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;

.field private invTexHeight:F

.field private invTexWidth:F

.field private lastTexture:Lcom/badlogic/gdx/graphics/Texture;

.field public maxSpritesInBatch:I

.field private ownsShader:Z

.field private final projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

.field public renderCalls:I

.field private final shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field private tempColor:Lcom/badlogic/gdx/graphics/Color;

.field public totalRenderCalls:I

.field private final transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

.field private final vertexBuffers:[Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;

.field private final vertices:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->spriteBatches:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 127
    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;-><init>(I)V

    .line 128
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;-><init>(ILcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 134
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 160
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;-><init>(IILcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 161
    return-void
.end method

.method public constructor <init>(IILcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    .line 90
    iput v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexWidth:F

    .line 91
    iput v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexHeight:F

    .line 93
    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    .line 94
    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->currBufferIdx:I

    .line 97
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    .line 98
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    .line 99
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

    .line 101
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    .line 103
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendingDisabled:Z

    .line 104
    const/16 v0, 0x302

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendSrcFunc:I

    .line 105
    const/16 v0, 0x303

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendDstFunc:I

    .line 110
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    .line 111
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v2, v2, v2, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->tempColor:Lcom/badlogic/gdx/graphics/Color;

    .line 114
    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->renderCalls:I

    .line 117
    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->totalRenderCalls:I

    .line 120
    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->maxSpritesInBatch:I

    .line 121
    iput-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 182
    mul-int/lit8 v0, p1, 0x6

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->createIndexBuffer(I)Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->indexBuffer:Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;

    .line 183
    mul-int/lit8 v0, p1, 0x4

    invoke-static {v0, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->createVertexBuffers(II)[Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertexBuffers:[Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;

    .line 184
    mul-int/lit8 v0, p1, 0x14

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    .line 186
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->isGL20Available()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    .line 187
    invoke-static {}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->createDefaultShader()Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->ownsShader:Z

    .line 193
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/badlogic/gdx/math/Matrix4;->setToOrtho2D(FFFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 195
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-static {v0, p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->addManagedSpriteBatch(Lcom/badlogic/gdx/Application;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 196
    return-void

    .line 190
    :cond_0
    iput-object p3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    goto :goto_0
.end method

.method public constructor <init>(ILcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 154
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;-><init>(IILcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 155
    return-void
.end method

.method private static addManagedSpriteBatch(Lcom/badlogic/gdx/Application;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1281
    sget-object v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->spriteBatches:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1282
    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1283
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1284
    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->spriteBatches:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1285
    return-void
.end method

.method public static clearAllSpriteBatches(Lcom/badlogic/gdx/Application;)V
    .locals 1
    .parameter

    .prologue
    .line 1299
    sget-object v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->spriteBatches:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1300
    return-void
.end method

.method public static createDefaultShader()Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .locals 6

    .prologue
    .line 227
    const-string/jumbo v0, "attribute vec2 a_position;\nattribute vec4 a_color;\nattribute vec2 a_texCoord0;\nuniform mat4 u_projectionViewMatrix;\nvarying vec4 v_color;\nvarying vec2 v_texCoords;\n\nvoid main()\n{\n   v_color = a_color;\n   v_texCoords = a_texCoord0;\n   gl_Position =  u_projectionViewMatrix * vec4(a_position, 0.0, 1.0);\n}\n"

    .line 241
    const-string/jumbo v1, "#ifdef GL_ES\n#define LOWP lowp\nprecision mediump float;\n#else\n#define LOWP \n#endif\nvarying LOWP vec4 v_color;\nvarying vec2 v_texCoords;\nuniform sampler2D u_texture;\nvoid main()\n{\n  gl_FragColor = v_color * texture2D(u_texture, v_texCoords);\n}"

    .line 255
    new-instance v2, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-direct {v2, v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->isCompiled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 257
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GLCommon;->glGetError()I

    move-result v1

    .line 258
    const-string/jumbo v0, ""

    .line 259
    if-eqz v1, :cond_0

    .line 260
    sget-object v0, Lcom/badlogic/gdx/Gdx;->glu:Lcom/badlogic/gdx/graphics/GLU;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GLU;->gluErrorString(I)Ljava/lang/String;

    move-result-object v0

    .line 263
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "couldn\'t compile shader, gl error = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ", gl string = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", log = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->getLog()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 265
    :cond_1
    return-object v2
.end method

.method private static createIndexBuffer(I)Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 199
    new-array v3, p0, [S

    move v0, v1

    move v2, v1

    .line 201
    :goto_0
    if-ge v0, p0, :cond_0

    .line 202
    add-int/lit8 v4, v0, 0x0

    add-int/lit8 v5, v2, 0x0

    int-to-short v5, v5

    aput-short v5, v3, v4

    .line 203
    add-int/lit8 v4, v0, 0x1

    add-int/lit8 v5, v2, 0x1

    int-to-short v5, v5

    aput-short v5, v3, v4

    .line 204
    add-int/lit8 v4, v0, 0x2

    add-int/lit8 v5, v2, 0x2

    int-to-short v5, v5

    aput-short v5, v3, v4

    .line 205
    add-int/lit8 v4, v0, 0x3

    add-int/lit8 v5, v2, 0x2

    int-to-short v5, v5

    aput-short v5, v3, v4

    .line 206
    add-int/lit8 v4, v0, 0x4

    add-int/lit8 v5, v2, 0x3

    int-to-short v5, v5

    aput-short v5, v3, v4

    .line 207
    add-int/lit8 v4, v0, 0x5

    add-int/lit8 v5, v2, 0x0

    int-to-short v5, v5

    aput-short v5, v3, v4

    .line 201
    add-int/lit8 v0, v0, 0x6

    add-int/lit8 v2, v2, 0x4

    int-to-short v2, v2

    goto :goto_0

    .line 209
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;

    const/4 v2, 0x1

    invoke-direct {v0, v2, p0}, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;-><init>(ZI)V

    .line 210
    invoke-virtual {v0, v3, v1, p0}, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->setIndices([SII)V

    .line 211
    return-object v0
.end method

.method private static createVertexBuffers(II)[Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v1, 0x0

    .line 215
    new-array v2, p1, [Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;

    move v0, v1

    .line 216
    :goto_0
    if-ge v0, p1, :cond_0

    .line 217
    new-instance v3, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;

    new-array v4, v11, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    new-instance v5, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string/jumbo v6, "a_position"

    invoke-direct {v5, v1, v10, v6}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v5, v4, v1

    const/4 v5, 0x1

    new-instance v6, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v7, 0x5

    const/4 v8, 0x4

    const-string/jumbo v9, "a_color"

    invoke-direct {v6, v7, v8, v9}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v6, v4, v5

    new-instance v5, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string/jumbo v6, "a_texCoord0"

    invoke-direct {v5, v11, v10, v6}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v5, v4, v10

    invoke-direct {v3, v1, p0, v4}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;-><init>(ZI[Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    aput-object v3, v2, v0

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 222
    :cond_0
    return-object v2
.end method

.method private invalidate()V
    .locals 2

    .prologue
    .line 1274
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->indexBuffer:Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->invalidate()V

    .line 1275
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertexBuffers:[Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1276
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertexBuffers:[Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->invalidate()V

    .line 1275
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1278
    :cond_0
    return-void
.end method

.method public static invalidateAllSpriteBatches(Lcom/badlogic/gdx/Application;)V
    .locals 3
    .parameter

    .prologue
    .line 1290
    sget-object v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->spriteBatches:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1291
    if-nez v0, :cond_1

    .line 1295
    :cond_0
    return-void

    .line 1292
    :cond_1
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 1293
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-direct {v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invalidate()V

    .line 1292
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method

.method private setupMatrices()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1202
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->isGL20Available()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1203
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl10:Lcom/badlogic/gdx/graphics/GL10;

    .line 1204
    const/16 v1, 0x1701

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL10;->glMatrixMode(I)V

    .line 1205
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, v1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    invoke-interface {v0, v1, v3}, Lcom/badlogic/gdx/graphics/GL10;->glLoadMatrixf([FI)V

    .line 1206
    const/16 v1, 0x1700

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL10;->glMatrixMode(I)V

    .line 1207
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, v1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    invoke-interface {v0, v1, v3}, Lcom/badlogic/gdx/graphics/GL10;->glLoadMatrixf([FI)V

    .line 1220
    :goto_0
    return-void

    .line 1209
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 1210
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-eqz v0, :cond_1

    .line 1211
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string/jumbo v1, "u_proj"

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setOptUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)Z

    .line 1212
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string/jumbo v1, "u_trans"

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setOptUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)Z

    .line 1213
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string/jumbo v1, "u_projTrans"

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setOptUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)Z

    .line 1214
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string/jumbo v1, "u_texture"

    invoke-virtual {v0, v1, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    goto :goto_0

    .line 1216
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string/jumbo v1, "u_projectionViewMatrix"

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 1217
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string/jumbo v1, "u_texture"

    invoke-virtual {v0, v1, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V
    .locals 2
    .parameter

    .prologue
    const/high16 v1, 0x3f80

    .line 1223
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->isGL20Available()Z

    .line 1224
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->renderMesh()V

    .line 1230
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    .line 1231
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v1, v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexWidth:F

    .line 1232
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v1, v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexHeight:F

    .line 1234
    return-void
.end method


# virtual methods
.method public begin()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 273
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "you have to call SpriteBatch.end() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_0
    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->renderCalls:I

    .line 276
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/graphics/GLCommon;->glDepthMask(Z)V

    .line 277
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->isGL20Available()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 278
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-eqz v0, :cond_1

    .line 279
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->begin()V

    .line 286
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->indexBuffer:Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->bind()V

    .line 287
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setupMatrices()V

    .line 289
    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    .line 290
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    .line 291
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    .line 293
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendingDisabled:Z

    if-eqz v0, :cond_3

    .line 294
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->disableBlending()V

    .line 298
    :goto_1
    return-void

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->begin()V

    goto :goto_0

    .line 283
    :cond_2
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/16 v1, 0xde1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GLCommon;->glEnable(I)V

    goto :goto_0

    .line 296
    :cond_3
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->enableBlending()V

    goto :goto_1
.end method

.method public disableBlending()V
    .locals 2

    .prologue
    .line 1125
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->renderMesh()V

    .line 1126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendingDisabled:Z

    .line 1127
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-eqz v0, :cond_0

    .line 1128
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    .line 1129
    const/16 v1, 0xbe2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GLCommon;->glDisable(I)V

    .line 1131
    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 1160
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->indexBuffer:Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->dispose()V

    .line 1161
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertexBuffers:[Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1162
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertexBuffers:[Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->dispose()V

    .line 1161
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1164
    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->ownsShader:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->dispose()V

    .line 1165
    :cond_1
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FF)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v6, 0x3f80

    const/4 v5, 0x0

    .line 664
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "SpriteBatch.begin must be called before draw."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 666
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq p1, v0, :cond_2

    .line 667
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    .line 670
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p2

    .line 671
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, p3

    .line 673
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput p2, v2, v3

    .line 674
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput p3, v2, v3

    .line 675
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    aput v4, v2, v3

    .line 676
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v5, v2, v3

    .line 677
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v6, v2, v3

    .line 679
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput p2, v2, v3

    .line 680
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v1, v2, v3

    .line 681
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    aput v4, v2, v3

    .line 682
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v5, v2, v3

    .line 683
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v5, v2, v3

    .line 685
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v0, v2, v3

    .line 686
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v1, v2, v3

    .line 687
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    aput v3, v1, v2

    .line 688
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v6, v1, v2

    .line 689
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v5, v1, v2

    .line 691
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v0, v1, v2

    .line 692
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput p3, v0, v1

    .line 693
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    aput v2, v0, v1

    .line 694
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v6, v0, v1

    .line 695
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v6, v0, v1

    .line 696
    return-void

    .line 668
    :cond_2
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    array-length v1, v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->renderMesh()V

    goto/16 :goto_0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FFFF)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v6, 0x3f80

    const/4 v5, 0x0

    .line 700
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "SpriteBatch.begin must be called before draw."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 702
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq p1, v0, :cond_2

    .line 703
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    .line 707
    :cond_1
    :goto_0
    add-float v0, p2, p4

    .line 708
    add-float v1, p3, p5

    .line 709
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput p2, v2, v3

    .line 715
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput p3, v2, v3

    .line 716
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    aput v4, v2, v3

    .line 717
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v5, v2, v3

    .line 718
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v6, v2, v3

    .line 720
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput p2, v2, v3

    .line 721
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v1, v2, v3

    .line 722
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    aput v4, v2, v3

    .line 723
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v5, v2, v3

    .line 724
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v5, v2, v3

    .line 726
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v0, v2, v3

    .line 727
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v1, v2, v3

    .line 728
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    aput v3, v1, v2

    .line 729
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v6, v1, v2

    .line 730
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v5, v1, v2

    .line 732
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v0, v1, v2

    .line 733
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput p3, v0, v1

    .line 734
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    aput v2, v0, v1

    .line 735
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v6, v0, v1

    .line 736
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v6, v0, v1

    .line 737
    return-void

    .line 704
    :cond_2
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    array-length v1, v1

    if-ne v0, v1, :cond_1

    .line 705
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->renderMesh()V

    goto/16 :goto_0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFF)V
    .locals 5
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
    .line 625
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "SpriteBatch.begin must be called before draw."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq p1, v0, :cond_2

    .line 628
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    .line 631
    :cond_1
    :goto_0
    add-float v0, p2, p4

    .line 632
    add-float v1, p3, p5

    .line 634
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput p2, v2, v3

    .line 635
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput p3, v2, v3

    .line 636
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    aput v4, v2, v3

    .line 637
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput p6, v2, v3

    .line 638
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput p7, v2, v3

    .line 640
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput p2, v2, v3

    .line 641
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v1, v2, v3

    .line 642
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    aput v4, v2, v3

    .line 643
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput p6, v2, v3

    .line 644
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput p9, v2, v3

    .line 646
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v0, v2, v3

    .line 647
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v1, v2, v3

    .line 648
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    aput v3, v1, v2

    .line 649
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput p8, v1, v2

    .line 650
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput p9, v1, v2

    .line 652
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v0, v1, v2

    .line 653
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput p3, v0, v1

    .line 654
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    aput v2, v0, v1

    .line 655
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput p8, v0, v1

    .line 656
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput p7, v0, v1

    .line 657
    return-void

    .line 629
    :cond_2
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    array-length v1, v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->renderMesh()V

    goto/16 :goto_0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFFFIIIIZZ)V
    .locals 17
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
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
    .line 377
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "SpriteBatch.begin must be called before draw."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 379
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    move-object/from16 v0, p1

    if-eq v0, v1, :cond_4

    .line 380
    invoke-direct/range {p0 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    .line 384
    :cond_1
    :goto_0
    add-float v9, p2, p4

    .line 385
    add-float v10, p3, p5

    .line 386
    move/from16 v0, p4

    neg-float v4, v0

    .line 387
    move/from16 v0, p5

    neg-float v1, v0

    .line 388
    sub-float v2, p6, p4

    .line 389
    sub-float v3, p7, p5

    .line 392
    const/high16 v5, 0x3f80

    cmpl-float v5, p8, v5

    if-nez v5, :cond_2

    const/high16 v5, 0x3f80

    cmpl-float v5, p9, v5

    if-eqz v5, :cond_3

    .line 393
    :cond_2
    mul-float v4, v4, p8

    .line 394
    mul-float v1, v1, p9

    .line 395
    mul-float v2, v2, p8

    .line 396
    mul-float v3, v3, p9

    .line 419
    :cond_3
    const/4 v5, 0x0

    cmpl-float v5, p10, v5

    if-eqz v5, :cond_5

    .line 420
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v11

    .line 421
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v12

    .line 423
    mul-float v5, v11, v4

    mul-float v6, v12, v1

    sub-float v8, v5, v6

    .line 424
    mul-float v5, v12, v4

    mul-float/2addr v1, v11

    add-float v7, v5, v1

    .line 426
    mul-float v1, v11, v4

    mul-float v5, v12, v3

    sub-float v6, v1, v5

    .line 427
    mul-float v1, v12, v4

    mul-float v4, v11, v3

    add-float v5, v1, v4

    .line 429
    mul-float v1, v11, v2

    mul-float v4, v12, v3

    sub-float v4, v1, v4

    .line 430
    mul-float v1, v12, v2

    mul-float v2, v11, v3

    add-float v3, v1, v2

    .line 432
    sub-float v1, v4, v6

    add-float v2, v8, v1

    .line 433
    sub-float v1, v5, v7

    sub-float v1, v3, v1

    .line 448
    :goto_1
    add-float/2addr v8, v9

    .line 449
    add-float/2addr v7, v10

    .line 450
    add-float/2addr v6, v9

    .line 451
    add-float/2addr v5, v10

    .line 452
    add-float v11, v4, v9

    .line 453
    add-float v12, v3, v10

    .line 454
    add-float/2addr v9, v2

    .line 455
    add-float/2addr v10, v1

    .line 457
    move/from16 v0, p11

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexWidth:F

    mul-float v3, v1, v2

    .line 458
    add-int v1, p12, p14

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexHeight:F

    mul-float/2addr v1, v2

    .line 459
    add-int v2, p11, p13

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexWidth:F

    mul-float/2addr v4, v2

    .line 460
    move/from16 v0, p12

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexHeight:F

    mul-float/2addr v2, v13

    .line 462
    if-eqz p15, :cond_7

    .line 468
    :goto_2
    if-eqz p16, :cond_6

    .line 474
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v15, v14, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v8, v13, v14

    .line 475
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v14, v13, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v7, v8, v13

    .line 476
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v13, v8, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    aput v13, v7, v8

    .line 477
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v13, v8, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v4, v7, v8

    .line 478
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v13, v8, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v2, v7, v8

    .line 480
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v13, v8, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v6, v7, v8

    .line 481
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v8, v7, 0x1

    move-object/from16 v0, p0

    iput v8, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v5, v6, v7

    .line 482
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v7, v6, 0x1

    move-object/from16 v0, p0

    iput v7, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    aput v7, v5, v6

    .line 483
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v7, v6, 0x1

    move-object/from16 v0, p0

    iput v7, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v4, v5, v6

    .line 484
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v6, v5, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v1, v4, v5

    .line 486
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v6, v5, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v11, v4, v5

    .line 487
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v6, v5, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v12, v4, v5

    .line 488
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v6, v5, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    aput v6, v4, v5

    .line 489
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v6, v5, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v3, v4, v5

    .line 490
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v6, v5, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v1, v4, v5

    .line 492
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v9, v1, v4

    .line 493
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v10, v1, v4

    .line 494
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    aput v5, v1, v4

    .line 495
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v3, v1, v4

    .line 496
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v2, v1, v3

    .line 497
    return-void

    .line 381
    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    array-length v2, v2

    if-ne v1, v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->renderMesh()V

    goto/16 :goto_0

    :cond_5
    move v5, v3

    move v6, v4

    move v7, v1

    move v8, v4

    move v4, v2

    .line 445
    goto/16 :goto_1

    :cond_6
    move/from16 v16, v2

    move v2, v1

    move/from16 v1, v16

    goto/16 :goto_3

    :cond_7
    move/from16 v16, v4

    move v4, v3

    move/from16 v3, v16

    goto/16 :goto_2
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FFFFIIIIZZ)V
    .locals 11
    .parameter
    .parameter
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
    .line 516
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "SpriteBatch.begin must be called before draw."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 518
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq p1, v1, :cond_2

    .line 519
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    .line 522
    :cond_1
    :goto_0
    move/from16 v0, p6

    int-to-float v1, v0

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexWidth:F

    mul-float v3, v1, v2

    .line 523
    add-int v1, p7, p9

    int-to-float v1, v1

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexHeight:F

    mul-float/2addr v1, v2

    .line 524
    add-int v2, p6, p8

    int-to-float v2, v2

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexWidth:F

    mul-float/2addr v4, v2

    .line 525
    move/from16 v0, p7

    int-to-float v2, v0

    iget v5, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexHeight:F

    mul-float/2addr v2, v5

    .line 526
    add-float v5, p2, p4

    .line 527
    add-float v6, p3, p5

    .line 529
    if-eqz p10, :cond_4

    .line 535
    :goto_1
    if-eqz p11, :cond_3

    .line 541
    :goto_2
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput p2, v7, v8

    .line 542
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput p3, v7, v8

    .line 543
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    iget v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    aput v9, v7, v8

    .line 544
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v4, v7, v8

    .line 545
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v2, v7, v8

    .line 547
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput p2, v7, v8

    .line 548
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v6, v7, v8

    .line 549
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    iget v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    aput v9, v7, v8

    .line 550
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v4, v7, v8

    .line 551
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v1, v4, v7

    .line 553
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v5, v4, v7

    .line 554
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v6, v4, v7

    .line 555
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    aput v7, v4, v6

    .line 556
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v3, v4, v6

    .line 557
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v1, v4, v6

    .line 559
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v6, v4, 0x1

    iput v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v5, v1, v4

    .line 560
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput p3, v1, v4

    .line 561
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    iget v5, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    aput v5, v1, v4

    .line 562
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v3, v1, v4

    .line 563
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v2, v1, v3

    .line 564
    return-void

    .line 520
    :cond_2
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    array-length v2, v2

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->renderMesh()V

    goto/16 :goto_0

    :cond_3
    move v10, v2

    move v2, v1

    move v1, v10

    goto/16 :goto_2

    :cond_4
    move v10, v4

    move v4, v3

    move v3, v10

    goto/16 :goto_1
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FFIIII)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 577
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "SpriteBatch.begin must be called before draw."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 579
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq p1, v1, :cond_2

    .line 580
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    .line 583
    :cond_1
    :goto_0
    int-to-float v1, p4

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexWidth:F

    mul-float/2addr v1, v2

    .line 584
    add-int v2, p5, p7

    int-to-float v2, v2

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexHeight:F

    mul-float/2addr v2, v3

    .line 585
    add-int v3, p4, p6

    int-to-float v3, v3

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexWidth:F

    mul-float/2addr v3, v4

    .line 586
    int-to-float v4, p5

    iget v5, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexHeight:F

    mul-float/2addr v4, v5

    .line 587
    move/from16 v0, p6

    int-to-float v5, v0

    add-float/2addr v5, p2

    .line 588
    move/from16 v0, p7

    int-to-float v6, v0

    add-float/2addr v6, p3

    .line 590
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput p2, v7, v8

    .line 591
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput p3, v7, v8

    .line 592
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    iget v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    aput v9, v7, v8

    .line 593
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v1, v7, v8

    .line 594
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v2, v7, v8

    .line 596
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput p2, v7, v8

    .line 597
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v6, v7, v8

    .line 598
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    iget v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    aput v9, v7, v8

    .line 599
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v1, v7, v8

    .line 600
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v4, v1, v7

    .line 602
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v5, v1, v7

    .line 603
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v6, v1, v7

    .line 604
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    aput v7, v1, v6

    .line 605
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v3, v1, v6

    .line 606
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v4, v1, v6

    .line 608
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v6, v4, 0x1

    iput v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v5, v1, v4

    .line 609
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput p3, v1, v4

    .line 610
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    iget v5, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    aput v5, v1, v4

    .line 611
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v3, v1, v4

    .line 612
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v2, v1, v3

    .line 613
    return-void

    .line 581
    :cond_2
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    array-length v2, v2

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->renderMesh()V

    goto/16 :goto_0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 742
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "SpriteBatch.begin must be called before draw."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 744
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq p1, v0, :cond_1

    .line 745
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    .line 748
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    array-length v0, v0

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    sub-int/2addr v0, v1

    .line 749
    if-nez v0, :cond_2

    .line 750
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->renderMesh()V

    .line 751
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    array-length v0, v0

    .line 753
    :cond_2
    sub-int v1, p4, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 754
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    invoke-static {p2, p3, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 755
    add-int v0, p3, v1

    .line 756
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    .line 758
    :goto_0
    if-ge v0, p4, :cond_3

    .line 759
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->renderMesh()V

    .line 760
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    array-length v1, v1

    sub-int v2, p4, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 761
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    const/4 v3, 0x0

    invoke-static {p2, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 762
    add-int/2addr v0, v1

    .line 763
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    goto :goto_0

    .line 765
    :cond_3
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 769
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    int-to-float v5, v0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    .line 770
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 774
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "SpriteBatch.begin must be called before draw."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 776
    :cond_0
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 777
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq v0, v1, :cond_2

    .line 778
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    .line 782
    :cond_1
    :goto_0
    add-float v0, p2, p4

    .line 783
    add-float v1, p3, p5

    .line 784
    iget v2, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 785
    iget v3, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    .line 786
    iget v4, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    .line 787
    iget v5, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 789
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput p2, v6, v7

    .line 790
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput p3, v6, v7

    .line 791
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    aput v8, v6, v7

    .line 792
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v2, v6, v7

    .line 793
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v3, v6, v7

    .line 795
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput p2, v6, v7

    .line 796
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v1, v6, v7

    .line 797
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    aput v8, v6, v7

    .line 798
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v2, v6, v7

    .line 799
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v5, v2, v6

    .line 801
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v0, v2, v6

    .line 802
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v1, v2, v6

    .line 803
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v6, v2, 0x1

    iput v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    iget v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    aput v6, v1, v2

    .line 804
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v6, v2, 0x1

    iput v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v4, v1, v2

    .line 805
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v6, v2, 0x1

    iput v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v5, v1, v2

    .line 807
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v0, v1, v2

    .line 808
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput p3, v0, v1

    .line 809
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    aput v2, v0, v1

    .line 810
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v4, v0, v1

    .line 811
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v3, v0, v1

    .line 812
    return-void

    .line 779
    :cond_2
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    array-length v1, v1

    if-ne v0, v1, :cond_1

    .line 780
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->renderMesh()V

    goto/16 :goto_0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V
    .locals 16
    .parameter
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
    .line 820
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "SpriteBatch.begin must be called before draw."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 822
    :cond_0
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 823
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq v1, v2, :cond_4

    .line 824
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    .line 829
    :cond_1
    :goto_0
    add-float v9, p2, p4

    .line 830
    add-float v10, p3, p5

    .line 831
    move/from16 v0, p4

    neg-float v4, v0

    .line 832
    move/from16 v0, p5

    neg-float v1, v0

    .line 833
    sub-float v2, p6, p4

    .line 834
    sub-float v3, p7, p5

    .line 837
    const/high16 v5, 0x3f80

    cmpl-float v5, p8, v5

    if-nez v5, :cond_2

    const/high16 v5, 0x3f80

    cmpl-float v5, p9, v5

    if-eqz v5, :cond_3

    .line 838
    :cond_2
    mul-float v4, v4, p8

    .line 839
    mul-float v1, v1, p9

    .line 840
    mul-float v2, v2, p8

    .line 841
    mul-float v3, v3, p9

    .line 864
    :cond_3
    const/4 v5, 0x0

    cmpl-float v5, p10, v5

    if-eqz v5, :cond_5

    .line 865
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v11

    .line 866
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v12

    .line 868
    mul-float v5, v11, v4

    mul-float v6, v12, v1

    sub-float v8, v5, v6

    .line 869
    mul-float v5, v12, v4

    mul-float/2addr v1, v11

    add-float v7, v5, v1

    .line 871
    mul-float v1, v11, v4

    mul-float v5, v12, v3

    sub-float v6, v1, v5

    .line 872
    mul-float v1, v12, v4

    mul-float v4, v11, v3

    add-float v5, v1, v4

    .line 874
    mul-float v1, v11, v2

    mul-float v4, v12, v3

    sub-float v4, v1, v4

    .line 875
    mul-float v1, v12, v2

    mul-float v2, v11, v3

    add-float v3, v1, v2

    .line 877
    sub-float v1, v4, v6

    add-float v2, v8, v1

    .line 878
    sub-float v1, v5, v7

    sub-float v1, v3, v1

    .line 893
    :goto_1
    add-float/2addr v8, v9

    .line 894
    add-float/2addr v7, v10

    .line 895
    add-float/2addr v6, v9

    .line 896
    add-float/2addr v5, v10

    .line 897
    add-float/2addr v4, v9

    .line 898
    add-float/2addr v3, v10

    .line 899
    add-float/2addr v2, v9

    .line 900
    add-float/2addr v1, v10

    .line 902
    move-object/from16 v0, p1

    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 903
    move-object/from16 v0, p1

    iget v10, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    .line 904
    move-object/from16 v0, p1

    iget v11, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    .line 905
    move-object/from16 v0, p1

    iget v12, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 907
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v15, v14, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v8, v13, v14

    .line 908
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v14, v13, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v7, v8, v13

    .line 909
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v13, v8, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    aput v13, v7, v8

    .line 910
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v13, v8, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v9, v7, v8

    .line 911
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v13, v8, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v10, v7, v8

    .line 913
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v13, v8, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v6, v7, v8

    .line 914
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v8, v7, 0x1

    move-object/from16 v0, p0

    iput v8, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v5, v6, v7

    .line 915
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v7, v6, 0x1

    move-object/from16 v0, p0

    iput v7, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    aput v7, v5, v6

    .line 916
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v7, v6, 0x1

    move-object/from16 v0, p0

    iput v7, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v9, v5, v6

    .line 917
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v7, v6, 0x1

    move-object/from16 v0, p0

    iput v7, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v12, v5, v6

    .line 919
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v7, v6, 0x1

    move-object/from16 v0, p0

    iput v7, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v4, v5, v6

    .line 920
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v6, v5, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v3, v4, v5

    .line 921
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    aput v5, v3, v4

    .line 922
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v11, v3, v4

    .line 923
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v12, v3, v4

    .line 925
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v2, v3, v4

    .line 926
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v1, v2, v3

    .line 927
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v3, v2, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    aput v3, v1, v2

    .line 928
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v3, v2, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v11, v1, v2

    .line 929
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v3, v2, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v10, v1, v2

    .line 930
    return-void

    .line 825
    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    array-length v2, v2

    if-ne v1, v2, :cond_1

    .line 826
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->renderMesh()V

    goto/16 :goto_0

    :cond_5
    move v5, v3

    move v6, v4

    move v7, v1

    move v8, v4

    move v4, v2

    .line 890
    goto/16 :goto_1
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFFZ)V
    .locals 21
    .parameter
    .parameter
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
    .line 940
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "SpriteBatch.begin must be called before draw."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 942
    :cond_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 943
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq v2, v3, :cond_4

    .line 944
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    .line 949
    :cond_1
    :goto_0
    add-float v10, p2, p4

    .line 950
    add-float v11, p3, p5

    .line 951
    move/from16 v0, p4

    neg-float v5, v0

    .line 952
    move/from16 v0, p5

    neg-float v2, v0

    .line 953
    sub-float v3, p6, p4

    .line 954
    sub-float v4, p7, p5

    .line 957
    const/high16 v6, 0x3f80

    cmpl-float v6, p8, v6

    if-nez v6, :cond_2

    const/high16 v6, 0x3f80

    cmpl-float v6, p9, v6

    if-eqz v6, :cond_3

    .line 958
    :cond_2
    mul-float v5, v5, p8

    .line 959
    mul-float v2, v2, p9

    .line 960
    mul-float v3, v3, p8

    .line 961
    mul-float v4, v4, p9

    .line 984
    :cond_3
    const/4 v6, 0x0

    cmpl-float v6, p10, v6

    if-eqz v6, :cond_5

    .line 985
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v12

    .line 986
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v13

    .line 988
    mul-float v6, v12, v5

    mul-float v7, v13, v2

    sub-float v9, v6, v7

    .line 989
    mul-float v6, v13, v5

    mul-float/2addr v2, v12

    add-float v8, v6, v2

    .line 991
    mul-float v2, v12, v5

    mul-float v6, v13, v4

    sub-float v7, v2, v6

    .line 992
    mul-float v2, v13, v5

    mul-float v5, v12, v4

    add-float v6, v2, v5

    .line 994
    mul-float v2, v12, v3

    mul-float v5, v13, v4

    sub-float v5, v2, v5

    .line 995
    mul-float v2, v13, v3

    mul-float v3, v12, v4

    add-float v4, v2, v3

    .line 997
    sub-float v2, v5, v7

    add-float v3, v9, v2

    .line 998
    sub-float v2, v6, v8

    sub-float v2, v4, v2

    .line 1013
    :goto_1
    add-float v12, v9, v10

    .line 1014
    add-float v13, v8, v11

    .line 1015
    add-float v14, v7, v10

    .line 1016
    add-float v15, v6, v11

    .line 1017
    add-float v16, v5, v10

    .line 1018
    add-float v17, v4, v11

    .line 1019
    add-float/2addr v10, v3

    .line 1020
    add-float/2addr v11, v2

    .line 1023
    if-eqz p11, :cond_6

    .line 1024
    move-object/from16 v0, p1

    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    .line 1025
    move-object/from16 v0, p1

    iget v8, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    .line 1026
    move-object/from16 v0, p1

    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 1027
    move-object/from16 v0, p1

    iget v6, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    .line 1028
    move-object/from16 v0, p1

    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 1029
    move-object/from16 v0, p1

    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 1030
    move-object/from16 v0, p1

    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    .line 1031
    move-object/from16 v0, p1

    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 1043
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v12, v18, v19

    .line 1044
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move/from16 v18, v0

    add-int/lit8 v19, v18, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v13, v12, v18

    .line 1045
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v18, v13, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    move/from16 v18, v0

    aput v18, v12, v13

    .line 1046
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v18, v13, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v9, v12, v13

    .line 1047
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v13, v12, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v8, v9, v12

    .line 1049
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v12, v9, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v14, v8, v9

    .line 1050
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v12, v9, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v15, v8, v9

    .line 1051
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v12, v9, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    aput v12, v8, v9

    .line 1052
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v12, v9, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v7, v8, v9

    .line 1053
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v9, v8, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v6, v7, v8

    .line 1055
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v8, v7, 0x1

    move-object/from16 v0, p0

    iput v8, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v16, v6, v7

    .line 1056
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v8, v7, 0x1

    move-object/from16 v0, p0

    iput v8, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v17, v6, v7

    .line 1057
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v8, v7, 0x1

    move-object/from16 v0, p0

    iput v8, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    aput v8, v6, v7

    .line 1058
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v8, v7, 0x1

    move-object/from16 v0, p0

    iput v8, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v5, v6, v7

    .line 1059
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v7, v6, 0x1

    move-object/from16 v0, p0

    iput v7, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v4, v5, v6

    .line 1061
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v6, v5, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v10, v4, v5

    .line 1062
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v6, v5, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v11, v4, v5

    .line 1063
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v6, v5, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    aput v6, v4, v5

    .line 1064
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v6, v5, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v3, v4, v5

    .line 1065
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v2, v3, v4

    .line 1066
    return-void

    .line 945
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    array-length v3, v3

    if-ne v2, v3, :cond_1

    .line 946
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->renderMesh()V

    goto/16 :goto_0

    :cond_5
    move v6, v4

    move v7, v5

    move v8, v2

    move v9, v5

    move v5, v3

    .line 1010
    goto/16 :goto_1

    .line 1033
    :cond_6
    move-object/from16 v0, p1

    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 1034
    move-object/from16 v0, p1

    iget v8, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 1035
    move-object/from16 v0, p1

    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    .line 1036
    move-object/from16 v0, p1

    iget v6, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 1037
    move-object/from16 v0, p1

    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    .line 1038
    move-object/from16 v0, p1

    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    .line 1039
    move-object/from16 v0, p1

    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 1040
    move-object/from16 v0, p1

    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    goto/16 :goto_2
.end method

.method public enableBlending()V
    .locals 3

    .prologue
    .line 1135
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->renderMesh()V

    .line 1136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendingDisabled:Z

    .line 1137
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-eqz v0, :cond_0

    .line 1138
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    .line 1139
    const/16 v1, 0xbe2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GLCommon;->glEnable(I)V

    .line 1140
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendSrcFunc:I

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendDstFunc:I

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/GLCommon;->glBlendFunc(II)V

    .line 1142
    :cond_0
    return-void
.end method

.method public end()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 303
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "SpriteBatch.begin must be called before end."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->renderMesh()V

    .line 305
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    .line 306
    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    .line 307
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    .line 309
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->indexBuffer:Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->unbind()V

    .line 311
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    .line 312
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GLCommon;->glDepthMask(Z)V

    .line 313
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->isBlendingEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0xbe2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GLCommon;->glDisable(I)V

    .line 315
    :cond_2
    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->isGL20Available()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 316
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-eqz v0, :cond_3

    .line 317
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->end()V

    .line 323
    :goto_0
    return-void

    .line 319
    :cond_3
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->end()V

    goto :goto_0

    .line 321
    :cond_4
    const/16 v1, 0xde1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GLCommon;->glDisable(I)V

    goto :goto_0
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 1070
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->renderMesh()V

    .line 1071
    return-void
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 4

    .prologue
    const/high16 v3, 0x437f

    .line 344
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    invoke-static {v0}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntColor(F)I

    move-result v0

    .line 345
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->tempColor:Lcom/badlogic/gdx/graphics/Color;

    .line 346
    and-int/lit16 v2, v0, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v3

    iput v2, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 347
    ushr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v3

    iput v2, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 348
    ushr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v3

    iput v2, v1, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 349
    ushr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    div-float/2addr v0, v3

    iput v0, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 350
    return-object v1
.end method

.method public getProjectionMatrix()Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    .prologue
    .line 1171
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    return-object v0
.end method

.method public getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    return-object v0
.end method

.method public isBlendingEnabled()Z
    .locals 1

    .prologue
    .line 1270
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendingDisabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected renderMesh()V
    .locals 7

    .prologue
    const/16 v6, 0x1403

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 1096
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    if-nez v0, :cond_0

    .line 1121
    :goto_0
    return-void

    .line 1098
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->renderCalls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->renderCalls:I

    .line 1099
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->totalRenderCalls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->totalRenderCalls:I

    .line 1100
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    div-int/lit8 v1, v0, 0x14

    .line 1101
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->maxSpritesInBatch:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->maxSpritesInBatch:I

    .line 1103
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->bind()V

    .line 1110
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->uploadVertexData()Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;

    move-result-object v2

    .line 1111
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    if-eqz v0, :cond_2

    .line 1112
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 1113
    :goto_1
    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->bind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 1114
    sget-object v3, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    mul-int/lit8 v1, v1, 0x6

    invoke-interface {v3, v5, v1, v6, v4}, Lcom/badlogic/gdx/graphics/GL20;->glDrawElements(IIII)V

    .line 1115
    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->unbind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    goto :goto_0

    .line 1112
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    goto :goto_1

    .line 1117
    :cond_2
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->bind()V

    .line 1118
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl11:Lcom/badlogic/gdx/graphics/GL11;

    mul-int/lit8 v1, v1, 0x6

    invoke-interface {v0, v5, v1, v6, v4}, Lcom/badlogic/gdx/graphics/GL11;->glDrawElements(IIII)V

    .line 1119
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->unbind()V

    goto :goto_0
.end method

.method public setBlendFunction(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1149
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->renderMesh()V

    .line 1150
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendSrcFunc:I

    .line 1151
    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendDstFunc:I

    .line 1153
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->isBlendingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1154
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->enableBlending()V

    .line 1156
    :cond_0
    return-void
.end method

.method public setColor(F)V
    .locals 0
    .parameter

    .prologue
    .line 339
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    .line 340
    return-void
.end method

.method public setColor(FFFF)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x437f

    .line 332
    mul-float v0, v2, p4

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x18

    mul-float v1, v2, p3

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    mul-float v1, v2, p2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    mul-float v1, v2, p1

    float-to-int v1, v1

    or-int/2addr v0, v1

    .line 333
    invoke-static {v0}, Lcom/badlogic/gdx/utils/NumberUtils;->intToFloatColor(I)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    .line 334
    return-void
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 1
    .parameter

    .prologue
    .line 327
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    .line 328
    return-void
.end method

.method public setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 1
    .parameter

    .prologue
    .line 1186
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 1187
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 1188
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setupMatrices()V

    .line 1189
    :cond_1
    return-void
.end method

.method public setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 1
    .parameter

    .prologue
    .line 1251
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-eqz v0, :cond_0

    .line 1252
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 1253
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-eqz v0, :cond_2

    .line 1254
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->end()V

    .line 1258
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 1259
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-eqz v0, :cond_1

    .line 1260
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-eqz v0, :cond_3

    .line 1261
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->begin()V

    .line 1264
    :goto_1
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setupMatrices()V

    .line 1266
    :cond_1
    return-void

    .line 1256
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->end()V

    goto :goto_0

    .line 1263
    :cond_3
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->begin()V

    goto :goto_1
.end method

.method public setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 1
    .parameter

    .prologue
    .line 1196
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 1197
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 1198
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setupMatrices()V

    .line 1199
    :cond_1
    return-void
.end method

.method protected uploadVertexData()Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1080
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertexBuffers:[Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->currBufferIdx:I

    aget-object v0, v0, v1

    .line 1081
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    invoke-virtual {v0, v1, v3, v2}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->setVertices([FII)V

    .line 1083
    iput v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    .line 1084
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->currBufferIdx:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->currBufferIdx:I

    .line 1085
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->currBufferIdx:I

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertexBuffers:[Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;

    array-length v2, v2

    if-ne v1, v2, :cond_0

    iput v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->currBufferIdx:I

    .line 1087
    :cond_0
    return-object v0
.end method
