.class public Lcom/nianticproject/ingress/common/scanner/visuals/cn;
.super Lcom/nianticproject/ingress/common/j/q;
.source "SourceFile"


# static fields
.field private static final g:Lcom/nianticproject/ingress/common/w/aa;

.field private static final h:Lcom/badlogic/gdx/graphics/Color;

.field private static final i:I

.field private static final j:[F

.field private static final k:[F

.field private static final l:[F


# instance fields
.field final e:Lcom/badlogic/gdx/math/Vector3;

.field final f:Lcom/badlogic/gdx/math/Vector3;

.field private final m:Lcom/badlogic/gdx/graphics/Texture;

.field private final n:Lcom/badlogic/gdx/math/Vector3;

.field private final o:Lcom/badlogic/gdx/math/Vector3;

.field private final p:Lcom/badlogic/gdx/math/Vector3;

.field private final q:Lcom/badlogic/gdx/graphics/Color;

.field private final r:Lcom/nianticproject/ingress/common/scanner/k;

.field private final s:Lcom/nianticproject/ingress/common/scanner/visuals/bc;

.field private final t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nianticproject/ingress/common/scanner/visuals/cp;",
            ">;"
        }
    .end annotation
.end field

.field private final u:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nianticproject/ingress/common/scanner/ej;",
            ">;"
        }
    .end annotation
.end field

.field private final v:Lcom/badlogic/gdx/math/Matrix4;

.field private w:F

.field private x:Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/high16 v10, 0x4000

    const/high16 v9, 0x3f00

    const v2, 0x3e9eb852

    const/4 v8, 0x5

    const/high16 v7, 0x3f80

    .line 75
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/common/scanner/visuals/cn;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->g:Lcom/nianticproject/ingress/common/w/aa;

    .line 89
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f47ae14

    invoke-direct {v0, v1, v2, v2, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->h:Lcom/badlogic/gdx/graphics/Color;

    .line 115
    const/16 v0, 0x555

    const/16 v1, 0x666

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    sput v0, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->i:I

    .line 120
    new-array v0, v8, [F

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->j:[F

    .line 121
    new-array v0, v8, [F

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->k:[F

    .line 122
    new-array v0, v8, [F

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->l:[F

    .line 495
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v8, :cond_0

    .line 496
    int-to-float v1, v0

    const/high16 v2, 0x4080

    div-float/2addr v1, v2

    .line 497
    sget-object v2, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->j:[F

    aput v1, v2, v0

    .line 498
    sget-object v2, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->l:[F

    sub-float v3, v1, v9

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v3, v10

    invoke-static {v3}, Lcom/nianticproject/ingress/common/w/y;->a(F)F

    move-result v3

    float-to-double v3, v3

    const-wide/high16 v5, 0x4010

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    sub-float v3, v7, v3

    const v4, 0x3e4ccccd

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v4, 0x4060

    mul-float/2addr v3, v4

    aput v3, v2, v0

    .line 499
    sget-object v2, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->k:[F

    sub-float/2addr v1, v9

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v1, v10

    sub-float v1, v7, v1

    invoke-static {v1}, Lcom/nianticproject/ingress/common/w/y;->a(F)F

    move-result v1

    mul-float/2addr v1, v7

    aput v1, v2, v0

    .line 495
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 501
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/scanner/fp;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/j/q;-><init>()V

    .line 146
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->n:Lcom/badlogic/gdx/math/Vector3;

    .line 147
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->o:Lcom/badlogic/gdx/math/Vector3;

    .line 148
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->p:Lcom/badlogic/gdx/math/Vector3;

    .line 149
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->q:Lcom/badlogic/gdx/graphics/Color;

    .line 153
    invoke-static {}, Lcom/google/a/c/eq;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->t:Ljava/util/ArrayList;

    .line 155
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->v:Lcom/badlogic/gdx/math/Matrix4;

    .line 368
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->e:Lcom/badlogic/gdx/math/Vector3;

    .line 369
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->f:Lcom/badlogic/gdx/math/Vector3;

    .line 162
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->r:Lcom/nianticproject/ingress/common/scanner/k;

    .line 163
    invoke-static {}, Lcom/google/a/c/hc;->b()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->u:Ljava/util/Map;

    .line 165
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ag;->ao:Lcom/badlogic/gdx/graphics/Texture;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->m:Lcom/badlogic/gdx/graphics/Texture;

    .line 167
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/co;

    invoke-direct {v0, p0, p2}, Lcom/nianticproject/ingress/common/scanner/visuals/co;-><init>(Lcom/nianticproject/ingress/common/scanner/visuals/cn;Lcom/nianticproject/ingress/common/scanner/fp;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->s:Lcom/nianticproject/ingress/common/scanner/visuals/bc;

    .line 173
    return-void
.end method

.method private static a([FIFFFFFLcom/badlogic/gdx/math/Vector3;FF)V
    .locals 2
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
    .line 470
    mul-int/lit8 v0, p1, 0x9

    add-int/lit8 v0, v0, 0x0

    aput p2, p0, v0

    .line 471
    mul-int/lit8 v0, p1, 0x9

    add-int/lit8 v0, v0, 0x1

    aput p3, p0, v0

    .line 472
    mul-int/lit8 v0, p1, 0x9

    add-int/lit8 v0, v0, 0x2

    aput p4, p0, v0

    .line 473
    mul-int/lit8 v0, p1, 0x9

    add-int/lit8 v0, v0, 0x3

    aput p8, p0, v0

    .line 474
    mul-int/lit8 v0, p1, 0x9

    add-int/lit8 v0, v0, 0x4

    aput p5, p0, v0

    .line 475
    mul-int/lit8 v0, p1, 0x9

    add-int/lit8 v0, v0, 0x5

    aput p6, p0, v0

    .line 476
    mul-int/lit8 v0, p1, 0x9

    add-int/lit8 v0, v0, 0x6

    iget v1, p7, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v1, p0, v0

    .line 477
    mul-int/lit8 v0, p1, 0x9

    add-int/lit8 v0, v0, 0x7

    iget v1, p7, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v1, p0, v0

    .line 478
    mul-int/lit8 v0, p1, 0x9

    add-int/lit8 v0, v0, 0x8

    aput p9, p0, v0

    .line 479
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/scanner/visuals/cn;)Z
    .locals 1
    .parameter

    .prologue
    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->x:Z

    return v0
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/math/Matrix4;Lcom/nianticproject/ingress/common/j/f;Lcom/nianticproject/ingress/common/j/n;)V
    .locals 47
    .parameter
    .parameter
    .parameter

    .prologue
    .line 234
    :try_start_0
    const-string/jumbo v2, "ResonatorLinkVisuals.draw"

    invoke-static {v2}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 235
    invoke-super/range {p0 .. p3}, Lcom/nianticproject/ingress/common/j/q;->a(Lcom/badlogic/gdx/math/Matrix4;Lcom/nianticproject/ingress/common/j/f;Lcom/nianticproject/ingress/common/j/n;)V

    .line 237
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->x:Z

    if-eqz v2, :cond_a

    .line 238
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->x:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 240
    :try_start_1
    const-string/jumbo v2, "ResonatorLinkVisuals.rebuildVb"

    invoke-static {v2}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 241
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->s:Lcom/nianticproject/ingress/common/scanner/visuals/bc;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/scanner/visuals/bc;->b()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->u:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->u:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    sget v3, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->i:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    sget v3, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->i:I

    div-int v28, v2, v3

    const/4 v2, 0x0

    move/from16 v33, v2

    :goto_0
    move/from16 v0, v33

    move/from16 v1, v28

    if-ge v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->t:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v33

    if-gt v2, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->t:Ljava/util/ArrayList;

    new-instance v3, Lcom/nianticproject/ingress/common/scanner/visuals/cp;

    invoke-direct {v3}, Lcom/nianticproject/ingress/common/scanner/visuals/cp;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->t:Ljava/util/ArrayList;

    move/from16 v0, v33

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/visuals/cp;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->u:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    sget v3, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->i:I

    mul-int v3, v3, v33

    sub-int/2addr v2, v3

    sget v3, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->i:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v35

    mul-int/lit8 v2, v35, 0x8

    mul-int/lit8 v2, v2, 0x14

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/nianticproject/ingress/common/scanner/visuals/cp;->a:Lcom/nianticproject/ingress/common/j/t;

    invoke-virtual {v3, v2}, Lcom/nianticproject/ingress/common/j/t;->a(I)[F

    move-result-object v2

    const/16 v27, 0x0

    const/16 v26, 0x0

    const/4 v3, 0x0

    move/from16 v32, v3

    :goto_1
    move/from16 v0, v32

    move/from16 v1, v35

    if-ge v0, v1, :cond_4

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nianticproject/ingress/common/scanner/ej;

    invoke-interface {v3}, Lcom/nianticproject/ingress/common/scanner/ej;->e()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v4

    const-class v5, Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {v4, v5}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v4

    check-cast v4, Lcom/nianticproject/ingress/gameentity/components/Portal;

    if-eqz v4, :cond_f

    sget-object v5, Lcom/nianticproject/ingress/common/scanner/ag;->a:Lcom/nianticproject/ingress/common/j/ai;

    invoke-virtual {v5}, Lcom/nianticproject/ingress/common/j/ai;->f()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/high16 v6, 0x40c0

    mul-float v36, v5, v6

    sget-object v5, Lcom/nianticproject/ingress/common/scanner/ag;->au:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nianticproject/ingress/common/j/ai;

    invoke-virtual {v5}, Lcom/nianticproject/ingress/common/j/ai;->d()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/high16 v6, 0x40c0

    mul-float v37, v5, v6

    invoke-interface {v4}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getEntity()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v6

    const-class v5, Lcom/nianticproject/ingress/gameentity/components/LocationE6;

    invoke-interface {v6, v5}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/LocationE6;

    move-object/from16 v23, v0

    invoke-static {v6}, Lcom/nianticproject/ingress/gameentity/components/b;->a(Lcom/nianticproject/ingress/gameentity/f;)Lcom/nianticproject/ingress/shared/ai;

    move-result-object v5

    invoke-static {v5}, Lcom/nianticproject/ingress/common/scanner/ea;->a(Lcom/nianticproject/ingress/shared/ai;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v38

    invoke-interface {v3}, Lcom/nianticproject/ingress/common/scanner/ej;->b()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v39

    const/4 v6, 0x0

    invoke-interface {v4}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getLinkedResonatorGuids()Lcom/google/a/c/dh;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v40

    move/from16 v25, v27

    :goto_2
    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->r:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v4, v3}, Lcom/nianticproject/ingress/common/scanner/k;->b(Ljava/lang/String;)Lcom/nianticproject/ingress/common/scanner/ej;

    move-result-object v3

    check-cast v3, Lcom/nianticproject/ingress/common/scanner/fu;

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Lcom/nianticproject/ingress/common/scanner/fu;->p()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {v3}, Lcom/nianticproject/ingress/common/scanner/fu;->e()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v5

    invoke-interface {v5}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nianticproject/ingress/common/h/c;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_e

    invoke-virtual {v3}, Lcom/nianticproject/ingress/common/scanner/fu;->b()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v7

    const-class v3, Lcom/nianticproject/ingress/gameentity/components/Resonator;

    invoke-interface {v5, v3}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v3

    check-cast v3, Lcom/nianticproject/ingress/gameentity/components/Resonator;

    const-class v4, Lcom/nianticproject/ingress/gameentity/components/Energy;

    invoke-interface {v5, v4}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v4

    check-cast v4, Lcom/nianticproject/ingress/gameentity/components/Energy;

    const-class v8, Lcom/nianticproject/ingress/gameentity/components/LocationE6;

    invoke-interface {v5, v8}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v5

    check-cast v5, Lcom/nianticproject/ingress/gameentity/components/LocationE6;

    if-eqz v4, :cond_1

    invoke-interface {v4}, Lcom/nianticproject/ingress/gameentity/components/Energy;->getTotal()I

    move-result v4

    int-to-float v4, v4

    invoke-interface {v3}, Lcom/nianticproject/ingress/gameentity/components/Resonator;->getEnergyCapacity()I

    move-result v3

    int-to-float v3, v3

    div-float v3, v4, v3

    :goto_3
    move-object/from16 v0, v23

    invoke-static {v0, v5}, Lcom/nianticproject/ingress/shared/b/a;->a(Lcom/nianticproject/ingress/gameentity/components/LocationE6;Lcom/nianticproject/ingress/gameentity/components/LocationE6;)D

    move-result-wide v4

    double-to-float v4, v4

    const v5, 0x3d888889

    mul-float v41, v4, v5

    const v4, 0x3f666666

    const v5, 0x3dccccd0

    mul-float/2addr v5, v3

    add-float v42, v4, v5

    const v4, 0x3f266666

    const v5, 0x3eb33334

    mul-float/2addr v5, v3

    add-float v43, v4, v5

    const/high16 v4, 0x3f40

    const/high16 v5, 0x3e80

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    const v5, 0x3dcccccd

    const v8, 0x3e99999a

    mul-float/2addr v8, v3

    add-float v10, v5, v8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->q:Lcom/badlogic/gdx/graphics/Color;

    sget-object v8, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->h:Lcom/badlogic/gdx/graphics/Color;

    const v9, 0x3e199998

    const v11, 0x3f59999a

    mul-float/2addr v3, v11

    add-float/2addr v3, v9

    move-object/from16 v0, v38

    invoke-static {v5, v8, v0, v3}, Lcom/nianticproject/ingress/common/w/i;->a(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;F)Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->q:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v4, v5

    iput v4, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->q:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v11

    add-int/lit8 v24, v6, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->e:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v7, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/4 v5, 0x0

    iget v6, v7, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v3, v4, v5, v6}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    move-object/from16 v0, v39

    iget v4, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/4 v5, 0x0

    move-object/from16 v0, v39

    iget v6, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v3, v4, v5, v6}, Lcom/badlogic/gdx/math/Vector3;->sub(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->f:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->e:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    sget-object v4, Lcom/badlogic/gdx/math/Vector3;->Y:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    add-int/lit8 v4, v25, 0xa

    iget v3, v7, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v5, v7, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v3, v5

    const/high16 v5, 0x40a0

    mul-float/2addr v3, v5

    const/high16 v5, 0x3f80

    rem-float v44, v3, v5

    const/4 v3, 0x0

    move/from16 v29, v3

    move/from16 v30, v4

    move/from16 v12, v25

    :goto_4
    const/4 v3, 0x4

    move/from16 v0, v29

    if-gt v0, v3, :cond_2

    sget-object v3, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->j:[F

    aget v3, v3, v29

    move-object/from16 v0, v39

    iget v4, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->e:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v5, v3

    add-float v14, v4, v5

    move-object/from16 v0, v39

    iget v4, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->e:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v5, v3

    add-float v16, v4, v5

    sub-float v4, v36, v37

    mul-float/2addr v4, v3

    add-float v4, v4, v37

    sget-object v5, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->k:[F

    aget v5, v5, v29

    mul-float v5, v5, v42

    add-float/2addr v5, v4

    sget-object v4, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->l:[F

    aget v4, v4, v29

    mul-float v45, v4, v43

    mul-float v46, v3, v41

    add-int/lit8 v3, v12, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->f:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float v4, v4, v45

    add-float/2addr v4, v14

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->f:Lcom/badlogic/gdx/math/Vector3;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float v6, v6, v45

    add-float v6, v6, v16

    const/4 v7, 0x0

    add-float v8, v46, v44

    sget-object v9, Lcom/badlogic/gdx/math/Vector3;->Y:Lcom/badlogic/gdx/math/Vector3;

    invoke-static/range {v2 .. v11}, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->a([FIFFFFFLcom/badlogic/gdx/math/Vector3;FF)V

    add-int/lit8 v3, v12, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->f:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float v4, v4, v45

    sub-float v4, v14, v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->f:Lcom/badlogic/gdx/math/Vector3;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float v6, v6, v45

    sub-float v6, v16, v6

    const/high16 v7, 0x3f80

    add-float v8, v46, v44

    sget-object v9, Lcom/badlogic/gdx/math/Vector3;->Y:Lcom/badlogic/gdx/math/Vector3;

    invoke-static/range {v2 .. v11}, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->a([FIFFFFFLcom/badlogic/gdx/math/Vector3;FF)V

    add-int/lit8 v31, v12, 0x2

    add-int/lit8 v13, v30, 0x0

    add-float v15, v5, v45

    const/16 v17, 0x0

    add-float v18, v46, v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->f:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v19, v0

    move-object v12, v2

    move/from16 v20, v10

    move/from16 v21, v11

    invoke-static/range {v12 .. v21}, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->a([FIFFFFFLcom/badlogic/gdx/math/Vector3;FF)V

    add-int/lit8 v3, v30, 0x1

    sub-float v5, v5, v45

    const/high16 v7, 0x3f80

    add-float v8, v46, v44

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->f:Lcom/badlogic/gdx/math/Vector3;

    move v4, v14

    move/from16 v6, v16

    invoke-static/range {v2 .. v11}, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->a([FIFFFFFLcom/badlogic/gdx/math/Vector3;FF)V

    add-int/lit8 v4, v30, 0x2

    add-int/lit8 v3, v29, 0x1

    move/from16 v29, v3

    move/from16 v30, v4

    move/from16 v12, v31

    goto/16 :goto_4

    :cond_1
    const/4 v3, 0x0

    goto/16 :goto_3

    :cond_2
    add-int/lit8 v3, v25, 0x14

    move v4, v3

    move/from16 v3, v24

    :goto_5
    move v6, v3

    move/from16 v25, v4

    goto/16 :goto_2

    :cond_3
    add-int v3, v26, v6

    mul-int/lit8 v4, v6, 0x14

    add-int v4, v4, v27

    :goto_6
    add-int/lit8 v5, v32, 0x1

    move/from16 v32, v5

    move/from16 v26, v3

    move/from16 v27, v4

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, v22

    iget v2, v0, Lcom/nianticproject/ingress/common/scanner/visuals/cp;->c:I

    mul-int/lit8 v4, v2, 0x30

    mul-int/lit8 v2, v26, 0x30

    if-le v2, v4, :cond_7

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/nianticproject/ingress/common/scanner/visuals/cp;->b:Lcom/nianticproject/ingress/common/j/s;

    invoke-virtual {v3, v2}, Lcom/nianticproject/ingress/common/j/s;->a(I)[S

    move-result-object v7

    div-int/lit8 v2, v4, 0x30

    move v6, v2

    :goto_7
    move/from16 v0, v26

    if-ge v6, v0, :cond_7

    mul-int/lit8 v3, v6, 0x14

    const/4 v2, 0x0

    move v5, v2

    :goto_8
    const/4 v2, 0x2

    if-ge v5, v2, :cond_6

    const/4 v2, 0x0

    :goto_9
    const/4 v8, 0x4

    if-ge v2, v8, :cond_5

    add-int/lit8 v8, v4, 0x0

    add-int/lit8 v9, v3, 0x1

    int-to-short v9, v9

    aput-short v9, v7, v8

    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v9, v3, 0x0

    int-to-short v9, v9

    aput-short v9, v7, v8

    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v9, v3, 0x2

    int-to-short v9, v9

    aput-short v9, v7, v8

    add-int/lit8 v8, v4, 0x3

    add-int/lit8 v9, v3, 0x1

    int-to-short v9, v9

    aput-short v9, v7, v8

    add-int/lit8 v8, v4, 0x4

    add-int/lit8 v9, v3, 0x2

    int-to-short v9, v9

    aput-short v9, v7, v8

    add-int/lit8 v8, v4, 0x5

    add-int/lit8 v9, v3, 0x3

    int-to-short v9, v9

    aput-short v9, v7, v8

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v4, v4, 0x6

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_5
    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_8

    :cond_6
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_7

    :cond_7
    move/from16 v0, v26

    move-object/from16 v1, v22

    iput v0, v1, Lcom/nianticproject/ingress/common/scanner/visuals/cp;->c:I

    add-int/lit8 v2, v33, 0x1

    move/from16 v33, v2

    goto/16 :goto_0

    :cond_8
    move/from16 v3, v28

    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->t:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->t:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nianticproject/ingress/common/scanner/visuals/cp;

    const/4 v4, 0x0

    iput v4, v2, Lcom/nianticproject/ingress/common/scanner/visuals/cp;->c:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_a

    .line 243
    :cond_9
    :try_start_2
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 247
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->t:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v2

    if-eqz v2, :cond_b

    .line 290
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 291
    :goto_b
    return-void

    .line 243
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 290
    :catchall_1
    move-exception v2

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v2

    .line 251
    :cond_b
    :try_start_4
    sget-object v4, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 252
    const/16 v2, 0xbe2

    invoke-interface {v4, v2}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    .line 253
    const/4 v2, 0x0

    invoke-interface {v4, v2}, Lcom/badlogic/gdx/graphics/GL20;->glDepthMask(Z)V

    .line 254
    const/16 v2, 0xb44

    invoke-interface {v4, v2}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    .line 256
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->s:Lcom/nianticproject/ingress/common/scanner/visuals/bc;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/scanner/visuals/bc;->c()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    .line 257
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->v:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual/range {p2 .. p2}, Lcom/nianticproject/ingress/common/j/f;->e()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v3

    iget v5, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/4 v6, 0x0

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v3, v5, v6, v2}, Lcom/badlogic/gdx/math/Matrix4;->translate(FFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 261
    invoke-virtual/range {p2 .. p2}, Lcom/nianticproject/ingress/common/j/f;->d()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->n:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->o:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->p:Lcom/badlogic/gdx/math/Vector3;

    invoke-static {v2, v3, v5, v6}, Lcom/nianticproject/ingress/common/w/z;->a(Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    .line 263
    sget-object v5, Lcom/nianticproject/ingress/common/scanner/ag;->aE:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 264
    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->begin()V

    .line 265
    const-string/jumbo v2, "u_modelViewProject"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->v:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v5, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 266
    const-string/jumbo v2, "u_cameraFwd"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->p:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v5, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;Lcom/badlogic/gdx/math/Vector3;)V

    .line 272
    const-string/jumbo v2, "u_elapsedTime"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->w:F

    const/high16 v6, 0x4396

    rem-float/2addr v3, v6

    invoke-virtual {v5, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    .line 274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->m:Lcom/badlogic/gdx/graphics/Texture;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 275
    const-string/jumbo v2, "u_texture"

    const/4 v3, 0x0

    invoke-virtual {v5, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    .line 277
    const/4 v2, 0x0

    move v3, v2

    :goto_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->t:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_d

    .line 278
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->t:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nianticproject/ingress/common/scanner/visuals/cp;

    .line 279
    iget v6, v2, Lcom/nianticproject/ingress/common/scanner/visuals/cp;->c:I

    if-lez v6, :cond_c

    .line 280
    iget-object v6, v2, Lcom/nianticproject/ingress/common/scanner/visuals/cp;->b:Lcom/nianticproject/ingress/common/j/s;

    iget v7, v2, Lcom/nianticproject/ingress/common/scanner/visuals/cp;->c:I

    mul-int/lit8 v7, v7, 0x14

    iget v8, v2, Lcom/nianticproject/ingress/common/scanner/visuals/cp;->c:I

    mul-int/lit8 v8, v8, 0x30

    iget-object v2, v2, Lcom/nianticproject/ingress/common/scanner/visuals/cp;->a:Lcom/nianticproject/ingress/common/j/t;

    invoke-virtual {v6, v7, v8, v2, v5}, Lcom/nianticproject/ingress/common/j/s;->a(IILcom/nianticproject/ingress/common/j/t;Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 277
    :cond_c
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_c

    .line 286
    :cond_d
    const/16 v2, 0xbe2

    invoke-interface {v4, v2}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    .line 287
    const/16 v2, 0xb44

    invoke-interface {v4, v2}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    .line 288
    const/4 v2, 0x1

    invoke-interface {v4, v2}, Lcom/badlogic/gdx/graphics/GL20;->glDepthMask(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 290
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto/16 :goto_b

    :cond_e
    move v3, v6

    move/from16 v4, v25

    goto/16 :goto_5

    :cond_f
    move/from16 v3, v26

    move/from16 v4, v27

    goto/16 :goto_6
.end method

.method public final a(Lcom/nianticproject/ingress/common/model/GameState;)V
    .locals 7
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 180
    :try_start_0
    const-string/jumbo v0, "ResonatorLinkVisuals.setGameState"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 184
    iget-object v0, p1, Lcom/nianticproject/ingress/common/model/GameState;->disappeared:Lcom/google/a/c/du;

    invoke-virtual {v0}, Lcom/google/a/c/du;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 185
    iget-boolean v4, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->x:Z

    iget-object v5, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->u:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_1
    or-int/2addr v0, v4

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->x:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 214
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    :cond_0
    move v0, v3

    .line 185
    goto :goto_1

    .line 190
    :cond_1
    :try_start_1
    iget-object v0, p1, Lcom/nianticproject/ingress/common/model/GameState;->changedEntities:Lcom/google/a/c/du;

    invoke-virtual {v0}, Lcom/google/a/c/du;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/f;

    .line 191
    const-class v1, Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/gameentity/components/Portal;

    .line 192
    if-eqz v1, :cond_2

    .line 194
    invoke-interface {v1}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getLinkedResonatorGuids()Lcom/google/a/c/dh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/a/c/dh;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 195
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->r:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/nianticproject/ingress/common/scanner/k;->b(Ljava/lang/String;)Lcom/nianticproject/ingress/common/scanner/ej;

    move-result-object v1

    .line 196
    if-eqz v1, :cond_3

    .line 197
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->x:Z

    .line 198
    iget-object v5, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->u:Ljava/util/Map;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 200
    :cond_3
    sget-object v1, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->g:Lcom/nianticproject/ingress/common/w/aa;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Can not find ScannerEntity for portal: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/String;)V

    goto :goto_2

    .line 204
    :cond_4
    iget-boolean v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->x:Z

    iget-object v5, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->u:Ljava/util/Map;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    move v0, v2

    :goto_3
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->x:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_5
    move v0, v3

    goto :goto_3

    .line 214
    :cond_6
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 215
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 483
    const/4 v0, 0x0

    return v0
.end method

.method public final a(F)Z
    .locals 1
    .parameter

    .prologue
    .line 227
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->w:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->w:F

    .line 228
    invoke-super {p0, p1}, Lcom/nianticproject/ingress/common/j/q;->a(F)Z

    move-result v0

    return v0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->x:Z

    .line 223
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 488
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/visuals/cp;

    .line 489
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/cp;->dispose()V

    goto :goto_0

    .line 491
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->s:Lcom/nianticproject/ingress/common/scanner/visuals/bc;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/bc;->dispose()V

    .line 492
    return-void
.end method
