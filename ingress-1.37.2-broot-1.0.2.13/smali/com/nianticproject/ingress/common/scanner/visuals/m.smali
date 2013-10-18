.class public final Lcom/nianticproject/ingress/common/scanner/visuals/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;
.implements Lcom/nianticproject/ingress/common/j/o;


# static fields
.field private static a:Lcom/nianticproject/ingress/common/scanner/visuals/m;

.field private static final c:[F

.field private static final d:[F


# instance fields
.field private b:Ljava/lang/String;

.field private final e:Lcom/badlogic/gdx/math/Matrix4;

.field private final f:Lcom/badlogic/gdx/math/Vector3;

.field private final g:Lcom/nianticproject/ingress/common/scanner/fp;

.field private final h:Lcom/nianticproject/ingress/common/scanner/visuals/bc;

.field private final i:Lcom/nianticproject/ingress/common/j/an;

.field private final j:Lcom/nianticproject/ingress/common/j/am;

.field private k:Lcom/google/a/a/ak;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/a/ak",
            "<[D[D>;"
        }
    .end annotation
.end field

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/common/scanner/visuals/o;",
            ">;"
        }
    .end annotation
.end field

.field private final m:[F

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 78
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/m;->c:[F

    .line 79
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/m;->d:[F

    return-void

    .line 78
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 79
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/scanner/fp;)V
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const-string/jumbo v0, "u_globParams"

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/m;->b:Ljava/lang/String;

    .line 85
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/m;->e:Lcom/badlogic/gdx/math/Matrix4;

    .line 86
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/m;->f:Lcom/badlogic/gdx/math/Vector3;

    .line 96
    const/16 v0, 0x258

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/m;->m:[F

    .line 99
    iput-boolean v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/m;->n:Z

    .line 102
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/fp;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/m;->g:Lcom/nianticproject/ingress/common/scanner/fp;

    .line 103
    new-instance v0, Lcom/nianticproject/ingress/common/j/an;

    invoke-static {}, Lcom/nianticproject/ingress/common/scanner/visuals/m;->e()[F

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    new-instance v4, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v5, 0x3

    const-string/jumbo v6, "a_position"

    invoke-direct {v4, v1, v5, v6}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v4, v3, v1

    invoke-direct {v0, v2, v3}, Lcom/nianticproject/ingress/common/j/an;-><init>([F[Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/m;->i:Lcom/nianticproject/ingress/common/j/an;

    .line 107
    new-instance v0, Lcom/nianticproject/ingress/common/j/am;

    invoke-static {}, Lcom/nianticproject/ingress/common/scanner/visuals/m;->d()[S

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/nianticproject/ingress/common/j/am;-><init>([S)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/m;->j:Lcom/nianticproject/ingress/common/j/am;

    .line 109
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/n;

    invoke-direct {v0, p0, p1}, Lcom/nianticproject/ingress/common/scanner/visuals/n;-><init>(Lcom/nianticproject/ingress/common/scanner/visuals/m;Lcom/nianticproject/ingress/common/scanner/fp;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/m;->h:Lcom/nianticproject/ingress/common/scanner/visuals/bc;

    .line 114
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ag;->aO:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->getUniforms()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v1, v2, v0

    .line 117
    const-string/jumbo v4, "[0]"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/m;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "[0]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/m;->b:Ljava/lang/String;

    .line 122
    :cond_0
    sput-object p0, Lcom/nianticproject/ingress/common/scanner/visuals/m;->a:Lcom/nianticproject/ingress/common/scanner/visuals/m;

    .line 123
    return-void

    .line 114
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static a([FIF)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 310
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 311
    add-int/lit8 v1, p1, 0x0

    sget-object v2, Lcom/nianticproject/ingress/common/scanner/visuals/m;->c:[F

    aget v2, v2, v0

    aput v2, p0, v1

    .line 312
    add-int/lit8 v1, p1, 0x1

    sget-object v2, Lcom/nianticproject/ingress/common/scanner/visuals/m;->d:[F

    aget v2, v2, v0

    aput v2, p0, v1

    .line 313
    add-int/lit8 v1, p1, 0x2

    aput p2, p0, v1

    .line 314
    add-int/lit8 p1, p1, 0x3

    .line 310
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 316
    :cond_0
    return p1
.end method

.method public static b()Lcom/nianticproject/ingress/common/scanner/visuals/m;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/m;->a:Lcom/nianticproject/ingress/common/scanner/visuals/m;

    return-object v0
.end method

.method private static d()[S
    .locals 10

    .prologue
    const/16 v9, 0x2d0

    const/4 v8, 0x6

    const/4 v1, 0x0

    .line 287
    new-array v4, v9, [S

    .line 288
    new-array v5, v8, [S

    fill-array-data v5, :array_0

    move v2, v1

    move v3, v1

    .line 291
    :goto_0
    if-ge v2, v9, :cond_1

    move v0, v1

    .line 293
    :goto_1
    if-ge v0, v8, :cond_0

    .line 294
    add-int v6, v2, v0

    aget-short v7, v5, v0

    add-int/2addr v7, v3

    int-to-short v7, v7

    aput-short v7, v4, v6

    .line 293
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 296
    :cond_0
    add-int/lit8 v3, v3, 0x4

    .line 292
    add-int/lit8 v0, v2, 0x6

    move v2, v0

    goto :goto_0

    .line 298
    :cond_1
    return-object v4

    .line 288
    :array_0
    .array-data 0x2
        0x0t 0x0t
        0x1t 0x0t
        0x2t 0x0t
        0x1t 0x0t
        0x3t 0x0t
        0x2t 0x0t
    .end array-data
.end method

.method private static e()[F
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 320
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 322
    const/16 v1, 0x5a0

    new-array v2, v1, [F

    move v1, v0

    .line 325
    :goto_0
    const/16 v3, 0x78

    if-ge v0, v3, :cond_0

    .line 326
    int-to-float v3, v0

    invoke-static {v2, v1, v3}, Lcom/nianticproject/ingress/common/scanner/visuals/m;->a([FIF)I

    move-result v1

    .line 325
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 328
    :cond_0
    return-object v2
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/math/Matrix4;Lcom/nianticproject/ingress/common/j/f;Lcom/nianticproject/ingress/common/j/n;)V
    .locals 18
    .parameter
    .parameter
    .parameter

    .prologue
    .line 180
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/nianticproject/ingress/common/scanner/visuals/m;->n:Z

    if-nez v1, :cond_0

    .line 282
    :goto_0
    return-void

    .line 185
    :cond_0
    :try_start_0
    const-string/jumbo v1, "ParticleEnergyGlobVisuals.draw"

    invoke-static {v1}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 186
    sget-object v3, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 187
    const/16 v1, 0xb44

    invoke-interface {v3, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    .line 188
    const/16 v1, 0xbe2

    invoke-interface {v3, v1}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    .line 190
    const/16 v1, 0x302

    const/4 v2, 0x1

    invoke-interface {v3, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBlendFunc(II)V

    .line 194
    const/4 v1, 0x0

    invoke-interface {v3, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDepthMask(Z)V

    .line 196
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nianticproject/ingress/common/scanner/visuals/m;->f:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual/range {p2 .. p2}, Lcom/nianticproject/ingress/common/j/f;->k()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 198
    sget-object v4, Lcom/nianticproject/ingress/common/scanner/ag;->aS:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 200
    sget-object v1, Lcom/nianticproject/ingress/common/scanner/ag;->aX:Lcom/badlogic/gdx/graphics/Texture;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 202
    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->begin()V

    .line 204
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nianticproject/ingress/common/scanner/visuals/m;->j:Lcom/nianticproject/ingress/common/j/am;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/j/am;->a()V

    .line 205
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nianticproject/ingress/common/scanner/visuals/m;->i:Lcom/nianticproject/ingress/common/j/an;

    invoke-virtual {v1, v4}, Lcom/nianticproject/ingress/common/j/an;->a(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 207
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nianticproject/ingress/common/scanner/visuals/m;->e:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual/range {p2 .. p2}, Lcom/nianticproject/ingress/common/j/f;->e()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 208
    const-string/jumbo v1, "u_modelViewProject"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nianticproject/ingress/common/scanner/visuals/m;->e:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v4, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 209
    const-string/jumbo v1, "u_cameraPos"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nianticproject/ingress/common/scanner/visuals/m;->f:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;Lcom/badlogic/gdx/math/Vector3;)V

    .line 210
    const-string/jumbo v1, "u_texture"

    const/4 v2, 0x0

    invoke-virtual {v4, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    .line 212
    const/4 v1, 0x0

    move v2, v1

    .line 215
    :goto_1
    const/16 v1, 0x12c

    if-ge v2, v1, :cond_2

    .line 218
    const/16 v1, 0x78

    .line 219
    rsub-int v5, v2, 0x12c

    const/16 v6, 0x78

    if-ge v5, v6, :cond_1

    .line 220
    const/16 v1, 0x3c

    .line 223
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nianticproject/ingress/common/scanner/visuals/m;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nianticproject/ingress/common/scanner/visuals/m;->m:[F

    mul-int/lit8 v7, v2, 0x2

    const/16 v8, 0xf0

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniform2fv(Ljava/lang/String;[FII)V

    .line 225
    sget-object v5, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const/4 v6, 0x4

    mul-int/lit8 v7, v1, 0x6

    const/16 v8, 0x1403

    const/4 v9, 0x0

    invoke-interface {v5, v6, v7, v8, v9}, Lcom/badlogic/gdx/graphics/GL20;->glDrawElements(IIII)V

    .line 228
    add-int/2addr v1, v2

    move v2, v1

    .line 229
    goto :goto_1

    .line 232
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nianticproject/ingress/common/scanner/visuals/m;->i:Lcom/nianticproject/ingress/common/j/an;

    invoke-virtual {v1, v4}, Lcom/nianticproject/ingress/common/j/an;->b(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 233
    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->end()V

    .line 235
    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-interface {v3, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBlendFunc(II)V

    .line 236
    const/16 v1, 0xb44

    invoke-interface {v3, v1}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    .line 237
    const/16 v1, 0xbe2

    invoke-interface {v3, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    .line 238
    const/4 v1, 0x1

    invoke-interface {v3, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDepthMask(Z)V

    .line 241
    const/16 v1, 0xbe2

    invoke-interface {v3, v1}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    .line 242
    const/4 v1, 0x0

    invoke-interface {v3, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDepthMask(Z)V

    .line 244
    invoke-static {}, Lcom/nianticproject/ingress/common/scanner/visuals/bo;->e()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    .line 245
    invoke-static {}, Lcom/nianticproject/ingress/common/scanner/visuals/bo;->f()Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    move-result-object v2

    .line 246
    invoke-static {}, Lcom/nianticproject/ingress/common/scanner/visuals/bo;->d()Lcom/nianticproject/ingress/common/j/ai;

    move-result-object v4

    .line 248
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->bind()V

    .line 249
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->begin()V

    .line 250
    invoke-virtual {v4, v2}, Lcom/nianticproject/ingress/common/j/ai;->a(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 252
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nianticproject/ingress/common/scanner/visuals/m;->g:Lcom/nianticproject/ingress/common/scanner/fp;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/scanner/fp;->a()Lcom/google/a/d/u;

    move-result-object v5

    .line 253
    invoke-virtual {v5}, Lcom/google/a/d/u;->e()D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/nianticproject/ingress/common/q/b;->d(D)I

    move-result v1

    int-to-double v6, v1

    .line 254
    invoke-virtual {v5}, Lcom/google/a/d/u;->b()D

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/nianticproject/ingress/common/q/b;->e(D)I

    move-result v1

    int-to-double v8, v1

    .line 256
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nianticproject/ingress/common/scanner/visuals/m;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/common/scanner/visuals/o;

    .line 257
    invoke-static {v1}, Lcom/nianticproject/ingress/common/scanner/visuals/o;->a(Lcom/nianticproject/ingress/common/scanner/visuals/o;)D

    move-result-wide v11

    const-wide/high16 v13, 0x3ff0

    div-double/2addr v11, v13

    invoke-virtual {v5}, Lcom/google/a/d/u;->b()D

    move-result-wide v13

    invoke-static {v13, v14}, Lcom/nianticproject/ingress/common/q/b;->a(D)D

    move-result-wide v13

    div-double/2addr v11, v13

    double-to-float v11, v11

    .line 259
    invoke-static {v1}, Lcom/nianticproject/ingress/common/scanner/visuals/o;->b(Lcom/nianticproject/ingress/common/scanner/visuals/o;)D

    move-result-wide v12

    sub-double/2addr v12, v6

    neg-double v12, v12

    invoke-virtual {v5}, Lcom/google/a/d/u;->b()D

    move-result-wide v14

    invoke-static {v14, v15}, Lcom/nianticproject/ingress/common/q/b;->a(D)D

    move-result-wide v14

    div-double/2addr v12, v14

    .line 260
    invoke-static {v1}, Lcom/nianticproject/ingress/common/scanner/visuals/o;->c(Lcom/nianticproject/ingress/common/scanner/visuals/o;)D

    move-result-wide v14

    sub-double/2addr v14, v8

    neg-double v14, v14

    invoke-virtual {v5}, Lcom/google/a/d/u;->b()D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lcom/nianticproject/ingress/common/q/b;->a(D)D

    move-result-wide v16

    div-double v14, v14, v16

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nianticproject/ingress/common/scanner/visuals/m;->e:Lcom/badlogic/gdx/math/Matrix4;

    move-object/from16 v16, v0

    invoke-virtual/range {p2 .. p2}, Lcom/nianticproject/ingress/common/j/f;->e()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v16

    double-to-float v12, v12

    const/4 v13, 0x0

    double-to-float v14, v14

    move-object/from16 v0, v16

    invoke-virtual {v0, v12, v13, v14}, Lcom/badlogic/gdx/math/Matrix4;->translate(FFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v12

    const/high16 v13, 0x3f80

    invoke-virtual {v12, v11, v13, v11}, Lcom/badlogic/gdx/math/Matrix4;->scale(FFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 267
    const-string/jumbo v11, "u_texture"

    const/4 v12, 0x0

    invoke-virtual {v2, v11, v12}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    .line 268
    const-string/jumbo v11, "u_uvScale"

    const/high16 v12, 0x40a0

    const/high16 v13, 0x3f80

    invoke-virtual {v2, v11, v12, v13}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FF)V

    .line 269
    const-string/jumbo v11, "u_modelViewProject"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nianticproject/ingress/common/scanner/visuals/m;->e:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v2, v11, v12}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 270
    const-string/jumbo v11, "u_color"

    invoke-static {v1}, Lcom/nianticproject/ingress/common/scanner/visuals/o;->d(Lcom/nianticproject/ingress/common/scanner/visuals/o;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v12

    invoke-static {v2, v11, v12}, Lcom/nianticproject/ingress/common/w/ad;->a(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    .line 271
    const-string/jumbo v11, "u_bearing"

    const/high16 v12, 0x3f80

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v2, v11, v12, v13, v14}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FFF)V

    .line 272
    const-string/jumbo v11, "u_bearingColor"

    invoke-static {v1}, Lcom/nianticproject/ingress/common/scanner/visuals/o;->d(Lcom/nianticproject/ingress/common/scanner/visuals/o;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-static {v2, v11, v1}, Lcom/nianticproject/ingress/common/w/ad;->a(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    .line 273
    const-string/jumbo v1, "u_bearingThreshold"

    const/high16 v11, 0x3f80

    const/high16 v12, 0x3f80

    invoke-virtual {v2, v1, v11, v12}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FF)V

    .line 274
    invoke-virtual {v4}, Lcom/nianticproject/ingress/common/j/ai;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    .line 281
    :catchall_0
    move-exception v1

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v1

    .line 277
    :cond_3
    const/16 v1, 0xbe2

    :try_start_1
    invoke-interface {v3, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    .line 278
    const/4 v1, 0x1

    invoke-interface {v3, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDepthMask(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 281
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto/16 :goto_0
.end method

.method public final a(Lcom/google/a/a/ak;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/a/ak",
            "<[D[D>;)V"
        }
    .end annotation

    .prologue
    .line 138
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/m;->k:Lcom/google/a/a/ak;

    .line 139
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/common/scanner/visuals/o;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 143
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/m;->l:Ljava/util/List;

    .line 144
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 333
    const/4 v0, 0x1

    return v0
.end method

.method public final a(F)Z
    .locals 13
    .parameter

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/m;->n:Z

    if-nez v0, :cond_0

    .line 149
    const/4 v0, 0x1

    .line 175
    :goto_0
    return v0

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/m;->k:Lcom/google/a/a/ak;

    .line 153
    if-nez v1, :cond_2

    .line 154
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x12c

    if-ge v0, v1, :cond_1

    .line 155
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/m;->m:[F

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 156
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/m;->m:[F

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 159
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 162
    :cond_2
    iget-object v0, v1, Lcom/google/a/a/ak;->a:Ljava/lang/Object;

    check-cast v0, [D

    .line 163
    iget-object v1, v1, Lcom/google/a/a/ak;->b:Ljava/lang/Object;

    check-cast v1, [D

    .line 165
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/m;->g:Lcom/nianticproject/ingress/common/scanner/fp;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/scanner/fp;->a()Lcom/google/a/d/u;

    move-result-object v2

    .line 166
    invoke-virtual {v2}, Lcom/google/a/d/u;->e()D

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/nianticproject/ingress/common/q/b;->d(D)I

    move-result v3

    int-to-double v3, v3

    .line 167
    invoke-virtual {v2}, Lcom/google/a/d/u;->b()D

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/nianticproject/ingress/common/q/b;->e(D)I

    move-result v5

    int-to-double v5, v5

    .line 168
    const-wide/high16 v7, 0x3ff0

    invoke-virtual {v2}, Lcom/google/a/d/u;->b()D

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/nianticproject/ingress/common/q/b;->a(D)D

    move-result-wide v9

    div-double/2addr v7, v9

    .line 170
    const/4 v2, 0x0

    :goto_2
    const/16 v9, 0x12c

    if-ge v2, v9, :cond_3

    .line 171
    iget-object v9, p0, Lcom/nianticproject/ingress/common/scanner/visuals/m;->m:[F

    mul-int/lit8 v10, v2, 0x2

    add-int/lit8 v10, v10, 0x0

    aget-wide v11, v0, v2

    sub-double v11, v3, v11

    mul-double/2addr v11, v7

    double-to-float v11, v11

    aput v11, v9, v10

    .line 172
    iget-object v9, p0, Lcom/nianticproject/ingress/common/scanner/visuals/m;->m:[F

    mul-int/lit8 v10, v2, 0x2

    add-int/lit8 v10, v10, 0x1

    aget-wide v11, v1, v2

    sub-double v11, v5, v11

    mul-double/2addr v11, v7

    double-to-float v11, v11

    aput v11, v9, v10

    .line 170
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 175
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/m;->n:Z

    .line 132
    return-void
.end method

.method public final dispose()V
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/m;->i:Lcom/nianticproject/ingress/common/j/an;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/ac;->a(Lcom/badlogic/gdx/utils/Disposable;)Lcom/badlogic/gdx/utils/Disposable;

    .line 339
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/m;->j:Lcom/nianticproject/ingress/common/j/am;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/ac;->a(Lcom/badlogic/gdx/utils/Disposable;)Lcom/badlogic/gdx/utils/Disposable;

    .line 340
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/m;->h:Lcom/nianticproject/ingress/common/scanner/visuals/bc;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/ac;->a(Lcom/badlogic/gdx/utils/Disposable;)Lcom/badlogic/gdx/utils/Disposable;

    .line 341
    return-void
.end method
