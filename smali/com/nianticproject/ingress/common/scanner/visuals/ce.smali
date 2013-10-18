.class public final Lcom/nianticproject/ingress/common/scanner/visuals/ce;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;
.implements Lcom/nianticproject/ingress/common/j/o;


# static fields
.field private static final a:Lcom/badlogic/gdx/graphics/Color;

.field private static final b:[F

.field private static final c:[F


# instance fields
.field private final d:Lcom/badlogic/gdx/math/Matrix4;

.field private final e:Lcom/badlogic/gdx/math/Vector3;

.field private final f:Lcom/badlogic/gdx/math/Vector3;

.field private final g:Lcom/badlogic/gdx/math/Vector3;

.field private final h:Lcom/badlogic/gdx/math/Vector3;

.field private final i:Lcom/badlogic/gdx/math/Vector3;

.field private final j:Lcom/badlogic/gdx/math/Vector3;

.field private final k:Lcom/badlogic/gdx/graphics/Color;

.field private final l:Lcom/nianticproject/ingress/common/scanner/fp;

.field private final m:Lcom/nianticproject/ingress/common/scanner/visuals/bc;

.field private final n:Lcom/nianticproject/ingress/common/j/t;

.field private o:Z

.field private p:Lcom/nianticproject/ingress/gameentity/f;

.field private q:Lcom/nianticproject/ingress/gameentity/f;

.field private r:Lcom/badlogic/gdx/graphics/Color;

.field private s:F


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x6

    const/high16 v7, 0x4000

    const/high16 v6, 0x3f00

    const v2, 0x3e3851ec

    const/high16 v5, 0x3f80

    .line 77
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3eeb851f

    invoke-direct {v0, v1, v2, v2, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->a:Lcom/badlogic/gdx/graphics/Color;

    .line 120
    const/16 v0, 0x65

    new-array v0, v0, [F

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->b:[F

    .line 126
    const/16 v0, 0x65

    new-array v0, v0, [F

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->c:[F

    .line 452
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v8, :cond_1

    .line 454
    int-to-float v1, v0

    const/high16 v2, 0x40a0

    div-float/2addr v1, v2

    .line 455
    sget-object v2, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->b:[F

    mul-int/lit8 v3, v0, 0x2

    aput v1, v2, v3

    .line 456
    sget-object v2, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->c:[F

    mul-int/lit8 v3, v0, 0x2

    sub-float v4, v1, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v4, v7

    sub-float v4, v5, v4

    invoke-static {v4}, Lcom/nianticproject/ingress/common/w/y;->a(F)F

    move-result v4

    aput v4, v2, v3

    .line 458
    if-eq v0, v8, :cond_0

    .line 459
    const v2, 0x3dcccccd

    add-float/2addr v1, v2

    .line 460
    sget-object v2, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->b:[F

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    aput v1, v2, v3

    .line 461
    sget-object v2, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->c:[F

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    sub-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v1, v7

    sub-float v1, v5, v1

    invoke-static {v1}, Lcom/nianticproject/ingress/common/w/y;->a(F)F

    move-result v1

    aput v1, v2, v3

    .line 452
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 464
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/scanner/fp;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x4

    const/high16 v7, 0x3f00

    const/4 v6, 0x0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->d:Lcom/badlogic/gdx/math/Matrix4;

    .line 134
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->e:Lcom/badlogic/gdx/math/Vector3;

    .line 135
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->f:Lcom/badlogic/gdx/math/Vector3;

    .line 136
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->g:Lcom/badlogic/gdx/math/Vector3;

    .line 137
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->h:Lcom/badlogic/gdx/math/Vector3;

    .line 138
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->i:Lcom/badlogic/gdx/math/Vector3;

    .line 139
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->j:Lcom/badlogic/gdx/math/Vector3;

    .line 140
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->k:Lcom/badlogic/gdx/graphics/Color;

    .line 151
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->s:F

    .line 154
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/fp;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->l:Lcom/nianticproject/ingress/common/scanner/fp;

    .line 155
    new-instance v0, Lcom/nianticproject/ingress/common/j/t;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    new-instance v2, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string/jumbo v3, "a_position"

    invoke-direct {v2, v6, v8, v3}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v2, v1, v6

    const/4 v2, 0x1

    new-instance v3, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v4, 0x3

    const-string/jumbo v5, "a_texCoord0"

    invoke-direct {v3, v4, v8, v5}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v3, v1, v2

    invoke-direct {v0, v6, v1}, Lcom/nianticproject/ingress/common/j/t;-><init>(I[Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->n:Lcom/nianticproject/ingress/common/j/t;

    .line 160
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ag;->au:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/j/ai;

    .line 161
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/j/ai;->e()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    .line 162
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/j/ai;->d()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    .line 165
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->j:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v4, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v3, v4

    mul-float/2addr v3, v7

    iget v4, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v0, v1

    mul-float/2addr v0, v7

    invoke-virtual {v2, v3, v4, v0}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    const/high16 v1, 0x40c0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    .line 170
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/cf;

    invoke-direct {v0, p0, p1}, Lcom/nianticproject/ingress/common/scanner/visuals/cf;-><init>(Lcom/nianticproject/ingress/common/scanner/visuals/ce;Lcom/nianticproject/ingress/common/scanner/fp;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->m:Lcom/nianticproject/ingress/common/scanner/visuals/bc;

    .line 176
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/scanner/visuals/ce;)Z
    .locals 1
    .parameter

    .prologue
    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->o:Z

    return v0
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/math/Matrix4;Lcom/nianticproject/ingress/common/j/f;Lcom/nianticproject/ingress/common/j/n;)V
    .locals 36
    .parameter
    .parameter
    .parameter

    .prologue
    .line 189
    :try_start_0
    const-string/jumbo v1, "LinkFormingVisuals.draw"

    invoke-static {v1}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 190
    move-object/from16 v0, p0

    iget v1, v0, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->s:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 227
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 228
    :goto_0
    return-void

    .line 194
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->o:Z

    if-eqz v1, :cond_2

    .line 195
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->o:Z

    .line 196
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->m:Lcom/nianticproject/ingress/common/scanner/visuals/bc;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/scanner/visuals/bc;->b()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->n:Lcom/nianticproject/ingress/common/j/t;

    const/16 v2, 0x12c

    invoke-virtual {v1, v2}, Lcom/nianticproject/ingress/common/j/t;->a(I)[F

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->p:Lcom/nianticproject/ingress/gameentity/f;

    const-class v2, Lcom/nianticproject/ingress/gameentity/components/LocationE6;

    invoke-interface {v1, v2}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/gameentity/components/LocationE6;

    invoke-interface {v1}, Lcom/nianticproject/ingress/gameentity/components/LocationE6;->getLatLng()Lcom/google/a/d/u;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->q:Lcom/nianticproject/ingress/gameentity/f;

    const-class v2, Lcom/nianticproject/ingress/gameentity/components/LocationE6;

    invoke-interface {v1, v2}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/gameentity/components/LocationE6;

    invoke-interface {v1}, Lcom/nianticproject/ingress/gameentity/components/LocationE6;->getLatLng()Lcom/google/a/d/u;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/a/d/u;->a(Lcom/google/a/d/u;)D

    move-result-wide v4

    double-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->j:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    move/from16 v17, v0

    const/high16 v1, 0x41f0

    const v5, 0x3da3d70a

    mul-float/2addr v5, v4

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    add-float v1, v1, v17

    const/high16 v5, 0x43fa

    cmpl-float v5, v4, v5

    if-lez v5, :cond_3

    const-wide v5, 0x407f400000000000L

    invoke-static {v3, v2, v5, v6}, Lcom/nianticproject/ingress/shared/b/a;->a(Lcom/google/a/d/u;Lcom/google/a/d/u;D)Lcom/google/a/d/u;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/a/d/u;->a(Lcom/google/a/d/u;)D

    move-result-wide v5

    double-to-float v5, v5

    const v6, 0x3da3d70a

    sub-float/2addr v4, v5

    mul-float/2addr v4, v6

    sub-float/2addr v1, v4

    move/from16 v0, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    move v15, v1

    move-object v1, v2

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->l:Lcom/nianticproject/ingress/common/scanner/fp;

    invoke-virtual {v2, v3}, Lcom/nianticproject/ingress/common/scanner/fp;->a(Lcom/google/a/d/u;)Lcom/nianticproject/ingress/common/scanner/eo;

    move-result-object v2

    invoke-interface {v2}, Lcom/nianticproject/ingress/common/scanner/eo;->b()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->l:Lcom/nianticproject/ingress/common/scanner/fp;

    invoke-virtual {v2, v1}, Lcom/nianticproject/ingress/common/scanner/fp;->a(Lcom/google/a/d/u;)Lcom/nianticproject/ingress/common/scanner/eo;

    move-result-object v1

    invoke-interface {v1}, Lcom/nianticproject/ingress/common/scanner/eo;->b()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    const/high16 v2, 0x4220

    add-float v19, v17, v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->r:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->h:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/4 v4, 0x0

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v2, v3, v4, v1}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    move-object/from16 v0, v18

    iget v2, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/4 v3, 0x0

    move-object/from16 v0, v18

    iget v4, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/badlogic/gdx/math/Vector3;->sub(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->i:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->h:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/math/Vector3;->Y:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    const/4 v13, 0x0

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/nianticproject/ingress/common/scanner/visuals/dc;->a(I)[F

    move-result-object v21

    const/4 v1, 0x0

    move v14, v1

    :goto_2
    const/4 v1, 0x5

    if-ge v14, v1, :cond_2

    sget-object v1, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->c:[F

    mul-int/lit8 v2, v14, 0x2

    aget v1, v1, v2

    sub-float v2, v15, v17

    mul-float/2addr v1, v2

    add-float v22, v17, v1

    sget-object v1, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->c:[F

    mul-int/lit8 v2, v14, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    sub-float v2, v15, v17

    mul-float/2addr v1, v2

    add-float v1, v1, v17

    sget-object v2, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->c:[F

    mul-int/lit8 v3, v14, 0x2

    add-int/lit8 v3, v3, 0x2

    aget v2, v2, v3

    sub-float v3, v15, v17

    mul-float/2addr v2, v3

    add-float v23, v17, v2

    sget-object v2, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->b:[F

    mul-int/lit8 v3, v14, 0x2

    aget v24, v2, v3

    sget-object v2, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->b:[F

    mul-int/lit8 v3, v14, 0x2

    add-int/lit8 v3, v3, 0x1

    aget v5, v2, v3

    sget-object v2, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->b:[F

    mul-int/lit8 v3, v14, 0x2

    add-int/lit8 v3, v3, 0x2

    aget v9, v2, v3

    mul-int/lit8 v2, v14, 0x2

    aget v2, v21, v2

    sub-float v3, v19, v17

    mul-float/2addr v2, v3

    add-float v2, v2, v17

    add-float v3, v2, v22

    mul-int/lit8 v2, v14, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v2, v21, v2

    sub-float v4, v19, v17

    mul-float/2addr v2, v4

    add-float v2, v2, v17

    add-float v7, v2, v1

    mul-int/lit8 v1, v14, 0x2

    add-int/lit8 v1, v1, 0x2

    aget v1, v21, v1

    sub-float v2, v19, v17

    mul-float/2addr v1, v2

    add-float v1, v1, v17

    add-float v11, v1, v23

    move/from16 v0, v24

    float-to-double v1, v0

    float-to-double v3, v3

    float-to-double v5, v5

    float-to-double v7, v7

    float-to-double v9, v9

    float-to-double v11, v11

    invoke-static/range {v1 .. v12}, Lcom/nianticproject/ingress/common/w/y;->a(DDDDDD)[D

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->k:Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->a:Lcom/badlogic/gdx/graphics/Color;

    const/high16 v3, 0x3f80

    move-object/from16 v0, v20

    invoke-static {v1, v2, v0, v3}, Lcom/nianticproject/ingress/common/w/i;->a(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;F)Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->k:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->k:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->k:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v4, 0x3f80

    invoke-static {v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits(FFFF)F

    const/4 v1, 0x0

    move v10, v1

    move v11, v13

    :goto_3
    const/16 v1, 0xa

    if-ge v10, v1, :cond_1

    mul-int/lit8 v1, v10, 0x2

    aget-wide v1, v12, v1

    double-to-float v1, v1

    mul-int/lit8 v2, v10, 0x2

    add-int/lit8 v2, v2, 0x2

    aget-wide v2, v12, v2

    double-to-float v2, v2

    mul-int/lit8 v3, v10, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-wide v3, v12, v3

    double-to-float v13, v3

    mul-int/lit8 v3, v10, 0x2

    add-int/lit8 v3, v3, 0x3

    aget-wide v3, v12, v3

    double-to-float v0, v3

    move/from16 v25, v0

    const/high16 v3, 0x40a0

    mul-float/2addr v3, v1

    sub-float v6, v3, v24

    const/high16 v3, 0x40a0

    mul-float/2addr v3, v2

    sub-float v26, v3, v24

    move-object/from16 v0, v18

    iget v3, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->h:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    move-object/from16 v0, v18

    iget v4, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->h:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v1, v5

    add-float v5, v4, v1

    move-object/from16 v0, v18

    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->h:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v4, v2

    add-float v27, v1, v4

    move-object/from16 v0, v18

    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->h:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v2, v4

    add-float v28, v1, v2

    int-to-float v1, v10

    const/high16 v2, 0x3f80

    mul-float/2addr v1, v2

    const/high16 v2, 0x4120

    div-float/2addr v1, v2

    sub-float v2, v23, v22

    mul-float/2addr v1, v2

    add-float v29, v22, v1

    add-int/lit8 v1, v10, 0x1

    int-to-float v1, v1

    const/high16 v2, 0x3f80

    mul-float/2addr v1, v2

    const/high16 v2, 0x4120

    div-float/2addr v1, v2

    sub-float v2, v23, v22

    mul-float/2addr v1, v2

    add-float v30, v22, v1

    add-float v1, v6, v26

    const/high16 v2, 0x4000

    div-float v31, v1, v2

    add-float v1, v3, v27

    const/high16 v2, 0x4000

    div-float v32, v1, v2

    add-float v1, v5, v28

    const/high16 v2, 0x4000

    div-float v33, v1, v2

    add-float v1, v13, v25

    const/high16 v2, 0x4000

    div-float v34, v1, v2

    add-float v1, v29, v30

    const/high16 v2, 0x4000

    div-float v35, v1, v2

    add-int/lit8 v2, v11, 0x0

    const/high16 v1, 0x4316

    add-float v4, v13, v1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->i:Lcom/badlogic/gdx/math/Vector3;

    const/high16 v1, 0x4090

    add-float v9, v29, v1

    move-object/from16 v1, v16

    invoke-static/range {v1 .. v9}, Lcom/nianticproject/ingress/common/scanner/visuals/dc;->a([FIFFFFFLcom/badlogic/gdx/math/Vector3;F)V

    add-int/lit8 v2, v11, 0x1

    const/high16 v7, 0x3f80

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->i:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v1, v16

    move v4, v13

    move/from16 v9, v29

    invoke-static/range {v1 .. v9}, Lcom/nianticproject/ingress/common/scanner/visuals/dc;->a([FIFFFFFLcom/badlogic/gdx/math/Vector3;F)V

    add-int/lit8 v2, v11, 0x2

    const/high16 v1, 0x4316

    add-float v4, v34, v1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->i:Lcom/badlogic/gdx/math/Vector3;

    const/high16 v1, 0x4090

    add-float v9, v35, v1

    move-object/from16 v1, v16

    move/from16 v3, v32

    move/from16 v5, v33

    move/from16 v6, v31

    invoke-static/range {v1 .. v9}, Lcom/nianticproject/ingress/common/scanner/visuals/dc;->a([FIFFFFFLcom/badlogic/gdx/math/Vector3;F)V

    add-int/lit8 v2, v11, 0x3

    const/high16 v7, 0x3f80

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->i:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v1, v16

    move/from16 v3, v32

    move/from16 v4, v34

    move/from16 v5, v33

    move/from16 v6, v31

    move/from16 v9, v35

    invoke-static/range {v1 .. v9}, Lcom/nianticproject/ingress/common/scanner/visuals/dc;->a([FIFFFFFLcom/badlogic/gdx/math/Vector3;F)V

    add-int/lit8 v2, v11, 0x4

    const/high16 v1, 0x4316

    add-float v4, v25, v1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->i:Lcom/badlogic/gdx/math/Vector3;

    const/high16 v1, 0x4090

    add-float v9, v30, v1

    move-object/from16 v1, v16

    move/from16 v3, v27

    move/from16 v5, v28

    move/from16 v6, v26

    invoke-static/range {v1 .. v9}, Lcom/nianticproject/ingress/common/scanner/visuals/dc;->a([FIFFFFFLcom/badlogic/gdx/math/Vector3;F)V

    add-int/lit8 v2, v11, 0x5

    const/high16 v7, 0x3f80

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->i:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v1, v16

    move/from16 v3, v27

    move/from16 v4, v25

    move/from16 v5, v28

    move/from16 v6, v26

    move/from16 v9, v30

    invoke-static/range {v1 .. v9}, Lcom/nianticproject/ingress/common/scanner/visuals/dc;->a([FIFFFFFLcom/badlogic/gdx/math/Vector3;F)V

    add-int/lit8 v2, v11, 0x6

    add-int/lit8 v1, v10, 0x1

    move v10, v1

    move v11, v2

    goto/16 :goto_3

    :cond_1
    add-int/lit8 v1, v14, 0x1

    move v14, v1

    move v13, v11

    goto/16 :goto_2

    .line 199
    :cond_2
    sget-object v7, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 200
    const/16 v1, 0xb44

    invoke-interface {v7, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    .line 201
    const/16 v1, 0xbe2

    invoke-interface {v7, v1}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    .line 202
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDepthMask(Z)V

    .line 204
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->m:Lcom/nianticproject/ingress/common/scanner/visuals/bc;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/scanner/visuals/bc;->c()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    .line 205
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->d:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual/range {p2 .. p2}, Lcom/nianticproject/ingress/common/j/f;->e()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v2

    iget v3, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/4 v4, 0x0

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v2, v3, v4, v1}, Lcom/badlogic/gdx/math/Matrix4;->translate(FFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 209
    invoke-virtual/range {p2 .. p2}, Lcom/nianticproject/ingress/common/j/f;->d()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->e:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->f:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->g:Lcom/badlogic/gdx/math/Vector3;

    invoke-static {v1, v2, v3, v4}, Lcom/nianticproject/ingress/common/w/z;->a(Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    .line 211
    sget-object v1, Lcom/nianticproject/ingress/common/scanner/ag;->aF:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 213
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->begin()V

    .line 214
    const-string/jumbo v2, "u_modelViewProject"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->d:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 215
    const-string/jumbo v2, "u_cameraFwd"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->g:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;Lcom/badlogic/gdx/math/Vector3;)V

    .line 216
    const-string/jumbo v2, "u_elapsedTime"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->s:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->s:F

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->s:F

    mul-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    .line 217
    const-string/jumbo v2, "u_color"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->r:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->r:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->r:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->g:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->r:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v6, 0x3f80

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FFFF)V

    .line 218
    const-string/jumbo v2, "u_alpha"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->s:F

    const v4, 0x3e19999a

    invoke-static {v3, v4}, Lcom/nianticproject/ingress/common/scanner/visuals/dc;->a(FF)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    .line 220
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->n:Lcom/nianticproject/ingress/common/j/t;

    const/4 v3, 0x5

    const/16 v4, 0x12c

    invoke-virtual {v2, v3, v4, v1}, Lcom/nianticproject/ingress/common/j/t;->a(IILcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 221
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->end()V

    .line 223
    const/16 v1, 0xb44

    invoke-interface {v7, v1}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    .line 224
    const/16 v1, 0xbe2

    invoke-interface {v7, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    .line 225
    const/4 v1, 0x1

    invoke-interface {v7, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDepthMask(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v1

    :cond_3
    move v15, v1

    move-object v1, v2

    goto/16 :goto_1
.end method

.method public final a(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/gameentity/f;Lcom/badlogic/gdx/graphics/Color;Lcom/nianticproject/ingress/common/j/ao;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v1, 0x41f0

    const/4 v8, 0x0

    .line 254
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->p:Lcom/nianticproject/ingress/gameentity/f;

    iput-object p2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->q:Lcom/nianticproject/ingress/gameentity/f;

    iput-object p3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->r:Lcom/badlogic/gdx/graphics/Color;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->o:Z

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->s:F

    .line 255
    const-class v0, Lcom/nianticproject/ingress/gameentity/components/LocationE6;

    invoke-interface {p1, v0}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/LocationE6;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/LocationE6;->getLatLng()Lcom/google/a/d/u;

    move-result-object v2

    const-class v0, Lcom/nianticproject/ingress/gameentity/components/LocationE6;

    invoke-interface {p2, v0}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/LocationE6;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/LocationE6;->getLatLng()Lcom/google/a/d/u;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/a/d/u;->a(Lcom/google/a/d/u;)D

    move-result-wide v4

    const-wide/high16 v6, 0x4000

    div-double/2addr v4, v6

    double-to-float v0, v4

    cmpl-float v4, v0, v1

    if-lez v4, :cond_0

    move v0, v1

    :cond_0
    float-to-double v0, v0

    invoke-static {v2, v3, v0, v1}, Lcom/nianticproject/ingress/shared/b/a;->a(Lcom/google/a/d/u;Lcom/google/a/d/u;D)Lcom/google/a/d/u;

    move-result-object v0

    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    new-instance v3, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v3}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->l:Lcom/nianticproject/ingress/common/scanner/fp;

    invoke-virtual {v4, v2, v1}, Lcom/nianticproject/ingress/common/scanner/fp;->a(Lcom/google/a/d/u;Lcom/badlogic/gdx/math/Vector2;)V

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->l:Lcom/nianticproject/ingress/common/scanner/fp;

    invoke-virtual {v2, v0, v3}, Lcom/nianticproject/ingress/common/scanner/fp;->a(Lcom/google/a/d/u;Lcom/badlogic/gdx/math/Vector2;)V

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    iget v2, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-direct {v0, v2, v8, v1}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    new-instance v1, Lcom/badlogic/gdx/math/Vector3;

    iget v2, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-direct {v1, v2, v8, v3}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Vector3;->cpy()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    sget-object v3, Lcom/badlogic/gdx/math/Vector3;->Y:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    const/high16 v3, 0x43c8

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    const/high16 v3, 0x4348

    iput v3, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    new-instance v3, Lcom/nianticproject/ingress/common/j/ap;

    invoke-direct {v3}, Lcom/nianticproject/ingress/common/j/ap;-><init>()V

    const/high16 v4, 0x4220

    iput v4, v3, Lcom/nianticproject/ingress/common/j/ap;->a:F

    const/high16 v4, 0x4170

    iput v4, v3, Lcom/nianticproject/ingress/common/j/ap;->b:F

    const/high16 v4, 0x4500

    iput v4, v3, Lcom/nianticproject/ingress/common/j/ap;->c:F

    iget-object v4, v3, Lcom/nianticproject/ingress/common/j/ap;->f:Lcom/badlogic/gdx/math/Vector3;

    sget-object v5, Lcom/badlogic/gdx/math/Vector3;->Y:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    iget-object v0, v3, Lcom/nianticproject/ingress/common/j/ap;->e:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    iget-object v0, v3, Lcom/nianticproject/ingress/common/j/ap;->d:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/cg;

    invoke-direct {v0, p0, v3}, Lcom/nianticproject/ingress/common/scanner/visuals/cg;-><init>(Lcom/nianticproject/ingress/common/scanner/visuals/ce;Lcom/nianticproject/ingress/common/j/ap;)V

    const/high16 v1, 0x3f40

    invoke-virtual {p4, v0, v1}, Lcom/nianticproject/ingress/common/j/ao;->a(Lcom/nianticproject/ingress/common/j/ar;F)V

    .line 256
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 384
    const/4 v0, 0x0

    return v0
.end method

.method public final a(F)Z
    .locals 2
    .parameter

    .prologue
    .line 180
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->s:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 181
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->s:F

    const/high16 v1, 0x40c0

    div-float v1, p1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->s:F

    .line 183
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final dispose()V
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->n:Lcom/nianticproject/ingress/common/j/t;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/j/t;->dispose()V

    .line 390
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->m:Lcom/nianticproject/ingress/common/scanner/visuals/bc;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/bc;->dispose()V

    .line 391
    return-void
.end method
