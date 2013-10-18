.class public final Lcom/nianticproject/ingress/common/scanner/visuals/af;
.super Lcom/nianticproject/ingress/common/scanner/visuals/z;
.source "SourceFile"


# static fields
.field private static final j:Lcom/badlogic/gdx/graphics/Color;

.field private static final k:Lcom/badlogic/gdx/graphics/Color;


# instance fields
.field private final l:Lcom/badlogic/gdx/math/Matrix4;

.field private final m:Lcom/badlogic/gdx/math/Matrix4;

.field private final n:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field private final o:Lcom/nianticproject/ingress/common/j/ai;

.field private final p:Lcom/badlogic/gdx/graphics/Texture;

.field private final q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/common/scanner/visuals/ai;",
            ">;"
        }
    .end annotation
.end field

.field private r:Z

.field private s:F

.field private t:F

.field private final u:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->PINK:Lcom/badlogic/gdx/graphics/Color;

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/af;->j:Lcom/badlogic/gdx/graphics/Color;

    .line 42
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->CYAN:Lcom/badlogic/gdx/graphics/Color;

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/af;->k:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method constructor <init>(FF)V
    .locals 13
    .parameter
    .parameter

    .prologue
    .line 141
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ag;->ak:Lcom/nianticproject/ingress/common/j/ai;

    sget-object v1, Lcom/nianticproject/ingress/common/scanner/ag;->am:Lcom/badlogic/gdx/graphics/Texture;

    invoke-static {}, Lcom/nianticproject/ingress/common/scanner/visuals/ah;->a()F

    move-result v2

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/nianticproject/ingress/common/scanner/visuals/z;-><init>(Lcom/nianticproject/ingress/common/j/ai;Lcom/badlogic/gdx/graphics/Texture;FF)V

    .line 44
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/af;->l:Lcom/badlogic/gdx/math/Matrix4;

    .line 45
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/af;->m:Lcom/badlogic/gdx/math/Matrix4;

    .line 46
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ag;->aB:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/af;->n:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 47
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ag;->al:Lcom/nianticproject/ingress/common/j/ai;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/af;->o:Lcom/nianticproject/ingress/common/j/ai;

    .line 48
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ag;->an:Lcom/badlogic/gdx/graphics/Texture;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/af;->p:Lcom/badlogic/gdx/graphics/Texture;

    .line 49
    invoke-static {}, Lcom/google/a/c/eq;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/af;->q:Ljava/util/List;

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/af;->r:Z

    .line 109
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/af;->s:F

    .line 110
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/af;->t:F

    .line 143
    iput p2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/af;->u:F

    .line 145
    const/4 v0, 0x0

    move v7, v0

    :goto_0
    int-to-float v0, v7

    const/high16 v1, 0x4000

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 146
    iget-object v8, p0, Lcom/nianticproject/ingress/common/scanner/visuals/af;->q:Ljava/util/List;

    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/ai;

    const-wide/high16 v1, 0x3fd0

    const-wide/high16 v3, 0x3fe8

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    const-wide/high16 v3, 0x4059

    mul-double/2addr v1, v3

    double-to-float v2, v1

    const-wide v3, 0x3fe4ccccc0000000L

    const-wide v5, 0x3fd6666680000000L

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    mul-double/2addr v5, v9

    add-double/2addr v3, v5

    const-wide v5, 0x407f400000000000L

    mul-double/2addr v3, v5

    double-to-float v3, v3

    sget-object v4, Lcom/nianticproject/ingress/common/scanner/visuals/af;->j:Lcom/badlogic/gdx/graphics/Color;

    const-wide v5, 0x4076800000000000L

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    mul-double/2addr v5, v9

    double-to-float v5, v5

    const/high16 v1, 0x4270

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    const-wide/high16 v11, 0x403e

    mul-double/2addr v9, v11

    double-to-float v6, v9

    add-float/2addr v1, v6

    const/high16 v6, 0x4170

    sub-float v6, v1, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/nianticproject/ingress/common/scanner/visuals/ai;-><init>(Lcom/nianticproject/ingress/common/scanner/visuals/af;FFLcom/badlogic/gdx/graphics/Color;FF)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 156
    :cond_0
    const/4 v0, 0x0

    move v7, v0

    :goto_1
    int-to-float v0, v7

    const/high16 v1, 0x3f80

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 157
    iget-object v8, p0, Lcom/nianticproject/ingress/common/scanner/visuals/af;->q:Ljava/util/List;

    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/ai;

    const-wide/high16 v1, 0x3fd0

    const-wide/high16 v3, 0x3fe8

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    const-wide/high16 v3, 0x4059

    mul-double/2addr v1, v3

    double-to-float v2, v1

    const-wide v3, 0x3fe4ccccc0000000L

    const-wide v5, 0x3fd6666680000000L

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    mul-double/2addr v5, v9

    add-double/2addr v3, v5

    const-wide v5, 0x407f400000000000L

    mul-double/2addr v3, v5

    double-to-float v3, v3

    sget-object v4, Lcom/nianticproject/ingress/common/scanner/visuals/af;->k:Lcom/badlogic/gdx/graphics/Color;

    const-wide v5, 0x4076800000000000L

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    mul-double/2addr v5, v9

    double-to-float v5, v5

    const/high16 v1, 0x4270

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    const-wide/high16 v11, 0x403e

    mul-double/2addr v9, v11

    double-to-float v6, v9

    add-float/2addr v1, v6

    const/high16 v6, 0x4170

    sub-float v6, v1, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/nianticproject/ingress/common/scanner/visuals/ai;-><init>(Lcom/nianticproject/ingress/common/scanner/visuals/af;FFLcom/badlogic/gdx/graphics/Color;FF)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    .line 166
    :cond_1
    return-void
.end method

.method private a(FLcom/nianticproject/ingress/common/j/f;Lcom/badlogic/gdx/math/Matrix4;FF)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v9, 0x4234

    const/high16 v8, 0x3f00

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/high16 v2, 0x3f80

    .line 286
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/af;->h:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p2}, Lcom/nianticproject/ingress/common/j/f;->e()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {v0, p1, v2, p1}, Lcom/badlogic/gdx/math/Matrix4;->scale(FFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/af;->i:F

    mul-float/2addr v1, v9

    invoke-virtual {v0, v7, v2, v7, v1}, Lcom/badlogic/gdx/math/Matrix4;->rotate(FFFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 292
    sget-object v6, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 293
    const/16 v0, 0xbe2

    invoke-interface {v6, v0}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    .line 294
    const/16 v0, 0x302

    const/4 v1, 0x1

    invoke-interface {v6, v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glBlendFunc(II)V

    .line 295
    invoke-interface {v6, v3}, Lcom/badlogic/gdx/graphics/GL20;->glDepthMask(Z)V

    .line 301
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/af;->b:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 302
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/af;->a:Lcom/nianticproject/ingress/common/j/ai;

    sget-object v1, Lcom/nianticproject/ingress/common/scanner/visuals/af;->c:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/j/ai;->a(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 303
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/af;->c:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->begin()V

    .line 304
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/af;->c:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string/jumbo v1, "u_texture"

    invoke-virtual {v0, v1, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    .line 305
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/af;->c:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string/jumbo v1, "u_color"

    invoke-static {p4, p5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    move v3, v2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FFFF)V

    .line 306
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/af;->c:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string/jumbo v1, "u_modelViewProject"

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/af;->h:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 307
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/af;->a:Lcom/nianticproject/ingress/common/j/ai;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/j/ai;->h()V

    .line 309
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/af;->h:Lcom/badlogic/gdx/math/Matrix4;

    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/af;->i:F

    mul-float/2addr v1, v8

    mul-float/2addr v1, v9

    invoke-virtual {v0, v7, v2, v7, v1}, Lcom/badlogic/gdx/math/Matrix4;->rotate(FFFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 310
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/af;->h:Lcom/badlogic/gdx/math/Matrix4;

    const v1, 0x3e4ccccd

    invoke-virtual {v0, v7, v1, v7}, Lcom/badlogic/gdx/math/Matrix4;->translate(FFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 311
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/af;->c:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string/jumbo v1, "u_color"

    invoke-static {p4, p5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    mul-float v5, v3, v8

    move v3, v2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FFFF)V

    .line 312
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/af;->c:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string/jumbo v1, "u_modelViewProject"

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/af;->h:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 313
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/af;->a:Lcom/nianticproject/ingress/common/j/ai;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/j/ai;->h()V

    .line 314
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/af;->a:Lcom/nianticproject/ingress/common/j/ai;

    sget-object v1, Lcom/nianticproject/ingress/common/scanner/visuals/af;->c:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/j/ai;->c(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 316
    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-interface {v6, v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glBlendFunc(II)V

    .line 317
    const/16 v0, 0xbe2

    invoke-interface {v6, v0}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    .line 318
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Lcom/badlogic/gdx/graphics/GL20;->glDepthMask(Z)V

    .line 319
    return-void
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/math/Matrix4;Lcom/nianticproject/ingress/common/j/f;Lcom/nianticproject/ingress/common/j/n;)V
    .locals 18
    .parameter
    .parameter
    .parameter

    .prologue
    .line 177
    :try_start_0
    const-string/jumbo v1, "FireUltraStrikeVisuals.draw"

    invoke-static {v1}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 179
    const/high16 v1, 0x3f80

    move-object/from16 v0, p0

    iget v2, v0, Lcom/nianticproject/ingress/common/scanner/visuals/af;->i:F

    const/high16 v3, 0x3e80

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 180
    const/high16 v1, 0x3fe0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/nianticproject/ingress/common/scanner/visuals/af;->d:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/nianticproject/ingress/common/scanner/visuals/af;->i:F

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/high16 v2, 0x3fe0

    div-float v13, v1, v2

    .line 182
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/nianticproject/ingress/common/scanner/visuals/af;->s:F

    .line 183
    const/4 v10, 0x0

    .line 184
    const/4 v9, 0x0

    .line 185
    const/4 v3, 0x0

    .line 186
    const/4 v8, 0x0

    .line 187
    const/high16 v7, 0x3f80

    .line 188
    const/high16 v6, 0x3f80

    .line 190
    invoke-static {}, Lcom/nianticproject/ingress/common/scanner/visuals/ah;->values()[Lcom/nianticproject/ingress/common/scanner/visuals/ah;

    move-result-object v14

    array-length v15, v14

    const/4 v1, 0x0

    move v11, v1

    move v1, v3

    :goto_0
    if-ge v11, v15, :cond_2

    aget-object v3, v14, v11

    .line 191
    iget v2, v3, Lcom/nianticproject/ingress/common/scanner/visuals/ah;->e:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nianticproject/ingress/common/scanner/visuals/af;->i:F

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_0

    iget v2, v3, Lcom/nianticproject/ingress/common/scanner/visuals/ah;->f:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nianticproject/ingress/common/scanner/visuals/af;->i:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_0

    .line 193
    const/high16 v2, 0x3f80

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nianticproject/ingress/common/scanner/visuals/af;->i:F

    iget v5, v3, Lcom/nianticproject/ingress/common/scanner/visuals/ah;->e:F

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/nianticproject/ingress/common/scanner/visuals/af;->e:F

    mul-float/2addr v4, v5

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 194
    sget-object v2, Lcom/nianticproject/ingress/common/scanner/visuals/ag;->a:[I

    invoke-virtual {v3}, Lcom/nianticproject/ingress/common/scanner/visuals/ah;->ordinal()I

    move-result v5

    aget v2, v2, v5

    packed-switch v2, :pswitch_data_0

    :cond_0
    move v2, v8

    move v3, v1

    move v4, v9

    move v5, v10

    move v1, v7

    .line 190
    :goto_1
    add-int/lit8 v7, v11, 0x1

    move v11, v7

    move v8, v2

    move v9, v4

    move v10, v5

    move v7, v1

    move v1, v3

    goto :goto_0

    .line 196
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/nianticproject/ingress/common/scanner/visuals/af;->r:Z

    if-nez v1, :cond_1

    .line 197
    invoke-static {}, Lcom/nianticproject/ingress/common/c/o;->a()Lcom/nianticproject/ingress/common/c/e;

    move-result-object v1

    sget-object v2, Lcom/nianticproject/ingress/common/c/bs;->aP:Lcom/nianticproject/ingress/common/c/bs;

    invoke-interface {v1, v2}, Lcom/nianticproject/ingress/common/c/e;->a(Lcom/nianticproject/ingress/common/c/bs;)V

    .line 198
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/nianticproject/ingress/common/scanner/visuals/af;->r:Z

    .line 200
    :cond_1
    const/4 v2, 0x1

    .line 201
    move-object/from16 v0, p0

    iget v1, v0, Lcom/nianticproject/ingress/common/scanner/visuals/af;->i:F

    iget v4, v3, Lcom/nianticproject/ingress/common/scanner/visuals/ah;->e:F

    sub-float/2addr v1, v4

    iget v4, v3, Lcom/nianticproject/ingress/common/scanner/visuals/ah;->f:F

    iget v3, v3, Lcom/nianticproject/ingress/common/scanner/visuals/ah;->e:F

    sub-float v3, v4, v3

    div-float/2addr v1, v3

    .line 203
    mul-float/2addr v6, v12

    move v3, v2

    move v4, v9

    move v5, v10

    move v2, v1

    move v1, v7

    .line 204
    goto :goto_1

    .line 208
    :pswitch_1
    const/4 v2, 0x1

    .line 209
    const/high16 v1, 0x3f80

    const v4, 0x3f4ccccd

    move-object/from16 v0, p0

    iget v5, v0, Lcom/nianticproject/ingress/common/scanner/visuals/af;->i:F

    iget v7, v3, Lcom/nianticproject/ingress/common/scanner/visuals/ah;->e:F

    sub-float/2addr v5, v7

    mul-float/2addr v4, v5

    iget v5, v3, Lcom/nianticproject/ingress/common/scanner/visuals/ah;->f:F

    iget v7, v3, Lcom/nianticproject/ingress/common/scanner/visuals/ah;->e:F

    sub-float/2addr v5, v7

    div-float/2addr v4, v5

    sub-float/2addr v1, v4

    .line 211
    const/high16 v4, 0x3f80

    move-object/from16 v0, p0

    iget v5, v0, Lcom/nianticproject/ingress/common/scanner/visuals/af;->i:F

    iget v7, v3, Lcom/nianticproject/ingress/common/scanner/visuals/ah;->e:F

    sub-float/2addr v5, v7

    iget v7, v3, Lcom/nianticproject/ingress/common/scanner/visuals/ah;->f:F

    iget v3, v3, Lcom/nianticproject/ingress/common/scanner/visuals/ah;->e:F

    sub-float v3, v7, v3

    div-float v3, v5, v3

    sub-float v3, v4, v3

    mul-float/2addr v6, v3

    move v3, v2

    move v4, v9

    move v5, v10

    move v2, v8

    .line 213
    goto :goto_1

    .line 217
    :pswitch_2
    const/4 v2, 0x1

    .line 218
    move-object/from16 v0, p0

    iget v3, v0, Lcom/nianticproject/ingress/common/scanner/visuals/af;->f:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/nianticproject/ingress/common/scanner/visuals/af;->g:F

    sub-float/2addr v5, v3

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/nianticproject/ingress/common/scanner/visuals/af;->s:F

    move v3, v1

    move v4, v9

    move v5, v2

    move v2, v8

    move v1, v7

    .line 219
    goto :goto_1

    .line 223
    :pswitch_3
    const/4 v2, 0x1

    .line 224
    move-object/from16 v0, p0

    iget v3, v0, Lcom/nianticproject/ingress/common/scanner/visuals/af;->f:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/nianticproject/ingress/common/scanner/visuals/af;->u:F

    sub-float/2addr v5, v3

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/nianticproject/ingress/common/scanner/visuals/af;->t:F

    move v3, v1

    move v4, v2

    move v5, v10

    move v2, v8

    move v1, v7

    goto/16 :goto_1

    .line 231
    :cond_2
    if-eqz v1, :cond_4

    .line 232
    invoke-virtual/range {p2 .. p2}, Lcom/nianticproject/ingress/common/j/f;->e()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v11

    .line 234
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/16 v2, 0xbe2

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/graphics/GLCommon;->glEnable(I)V

    .line 235
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/16 v2, 0xb44

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/graphics/GLCommon;->glDisable(I)V

    .line 237
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/16 v2, 0x302

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/badlogic/gdx/graphics/GLCommon;->glBlendFunc(II)V

    .line 238
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/graphics/GLCommon;->glDepthMask(Z)V

    .line 240
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nianticproject/ingress/common/scanner/visuals/af;->n:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->begin()V

    .line 242
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nianticproject/ingress/common/scanner/visuals/af;->p:Lcom/badlogic/gdx/graphics/Texture;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 243
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nianticproject/ingress/common/scanner/visuals/af;->n:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string/jumbo v2, "u_texture"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    .line 244
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nianticproject/ingress/common/scanner/visuals/af;->o:Lcom/nianticproject/ingress/common/j/ai;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nianticproject/ingress/common/scanner/visuals/af;->n:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v1, v2}, Lcom/nianticproject/ingress/common/j/ai;->b(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 246
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nianticproject/ingress/common/scanner/visuals/af;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/visuals/ai;

    move-object v5, v0

    .line 247
    invoke-static {v5}, Lcom/nianticproject/ingress/common/scanner/visuals/ai;->a(Lcom/nianticproject/ingress/common/scanner/visuals/ai;)F

    move-result v1

    invoke-static {v5}, Lcom/nianticproject/ingress/common/scanner/visuals/ai;->b(Lcom/nianticproject/ingress/common/scanner/visuals/ai;)F

    move-result v2

    sub-float/2addr v2, v1

    mul-float/2addr v2, v8

    add-float/2addr v1, v2

    mul-float/2addr v1, v7

    .line 250
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nianticproject/ingress/common/scanner/visuals/af;->l:Lcom/badlogic/gdx/math/Matrix4;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v2

    const/high16 v3, 0x40e0

    const/high16 v4, 0x40e0

    invoke-virtual {v2, v3, v1, v4}, Lcom/badlogic/gdx/math/Matrix4;->scale(FFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    invoke-static {v5}, Lcom/nianticproject/ingress/common/scanner/visuals/ai;->c(Lcom/nianticproject/ingress/common/scanner/visuals/ai;)F

    move-result v15

    invoke-static {v5}, Lcom/nianticproject/ingress/common/scanner/visuals/ai;->d(Lcom/nianticproject/ingress/common/scanner/visuals/ai;)F

    move-result v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nianticproject/ingress/common/scanner/visuals/af;->i:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    add-float v15, v15, v16

    invoke-virtual {v1, v2, v3, v4, v15}, Lcom/badlogic/gdx/math/Matrix4;->rotate(FFFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 255
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nianticproject/ingress/common/scanner/visuals/af;->m:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v1, v11}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 256
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nianticproject/ingress/common/scanner/visuals/af;->m:Lcom/badlogic/gdx/math/Matrix4;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nianticproject/ingress/common/scanner/visuals/af;->l:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 257
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nianticproject/ingress/common/scanner/visuals/af;->n:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string/jumbo v2, "u_modelViewProject"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nianticproject/ingress/common/scanner/visuals/af;->m:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 258
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nianticproject/ingress/common/scanner/visuals/af;->n:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string/jumbo v2, "u_color"

    invoke-static {v5}, Lcom/nianticproject/ingress/common/scanner/visuals/ai;->e(Lcom/nianticproject/ingress/common/scanner/visuals/ai;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->r:F

    invoke-static {v5}, Lcom/nianticproject/ingress/common/scanner/visuals/ai;->e(Lcom/nianticproject/ingress/common/scanner/visuals/ai;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v4

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->g:F

    invoke-static {v5}, Lcom/nianticproject/ingress/common/scanner/visuals/ai;->e(Lcom/nianticproject/ingress/common/scanner/visuals/ai;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FFFF)V

    .line 260
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nianticproject/ingress/common/scanner/visuals/af;->o:Lcom/nianticproject/ingress/common/j/ai;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/j/ai;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    .line 279
    :catchall_0
    move-exception v1

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v1

    .line 263
    :cond_3
    :try_start_1
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/graphics/GLCommon;->glDepthMask(Z)V

    .line 264
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/16 v2, 0x302

    const/16 v3, 0x303

    invoke-interface {v1, v2, v3}, Lcom/badlogic/gdx/graphics/GLCommon;->glBlendFunc(II)V

    .line 266
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/16 v2, 0xbe2

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/graphics/GLCommon;->glDisable(I)V

    .line 270
    :cond_4
    if-eqz v10, :cond_5

    .line 271
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nianticproject/ingress/common/scanner/visuals/af;->s:F

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move v5, v12

    move v6, v13

    invoke-direct/range {v1 .. v6}, Lcom/nianticproject/ingress/common/scanner/visuals/af;->a(FLcom/nianticproject/ingress/common/j/f;Lcom/badlogic/gdx/math/Matrix4;FF)V

    .line 274
    :cond_5
    if-eqz v9, :cond_6

    .line 275
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nianticproject/ingress/common/scanner/visuals/af;->t:F

    const v1, 0x3eb33333

    mul-float v5, v12, v1

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move v6, v13

    invoke-direct/range {v1 .. v6}, Lcom/nianticproject/ingress/common/scanner/visuals/af;->a(FLcom/nianticproject/ingress/common/j/f;Lcom/badlogic/gdx/math/Matrix4;FF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 279
    :cond_6
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 280
    return-void

    .line 194
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final b()F
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/af;->s:F

    return v0
.end method
