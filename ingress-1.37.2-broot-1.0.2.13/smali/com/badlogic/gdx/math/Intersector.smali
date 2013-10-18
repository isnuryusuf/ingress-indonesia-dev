.class public final Lcom/badlogic/gdx/math/Intersector;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static best:Lcom/badlogic/gdx/math/Vector3;

.field private static final dir:Lcom/badlogic/gdx/math/Vector3;

.field private static final i:Lcom/badlogic/gdx/math/Vector3;

.field static intersection:Lcom/badlogic/gdx/math/Vector3;

.field private static final p:Lcom/badlogic/gdx/math/Plane;

.field private static final start:Lcom/badlogic/gdx/math/Vector3;

.field static tmp:Lcom/badlogic/gdx/math/Vector3;

.field static tmp1:Lcom/badlogic/gdx/math/Vector3;

.field static tmp2:Lcom/badlogic/gdx/math/Vector3;

.field static tmp3:Lcom/badlogic/gdx/math/Vector3;

.field private static final v0:Lcom/badlogic/gdx/math/Vector3;

.field private static final v1:Lcom/badlogic/gdx/math/Vector3;

.field private static final v2:Lcom/badlogic/gdx/math/Vector3;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 60
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->v0:Lcom/badlogic/gdx/math/Vector3;

    .line 61
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->v1:Lcom/badlogic/gdx/math/Vector3;

    .line 62
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    .line 269
    new-instance v0, Lcom/badlogic/gdx/math/Plane;

    new-instance v1, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/math/Plane;-><init>(Lcom/badlogic/gdx/math/Vector3;F)V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->p:Lcom/badlogic/gdx/math/Plane;

    .line 270
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->i:Lcom/badlogic/gdx/math/Vector3;

    .line 309
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->dir:Lcom/badlogic/gdx/math/Vector3;

    .line 310
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->start:Lcom/badlogic/gdx/math/Vector3;

    .line 411
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    .line 412
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->best:Lcom/badlogic/gdx/math/Vector3;

    .line 413
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp1:Lcom/badlogic/gdx/math/Vector3;

    .line 414
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    .line 415
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp3:Lcom/badlogic/gdx/math/Vector3;

    .line 924
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->intersection:Lcom/badlogic/gdx/math/Vector3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1007
    return-void
.end method

.method static det(FFFF)F
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 585
    mul-float v0, p0, p3

    mul-float v1, p1, p2

    sub-float/2addr v0, v1

    return v0
.end method

.method static detd(DDDD)D
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 589
    mul-double v0, p0, p6

    mul-double v2, p2, p4

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public static distanceLinePoint(FFFFFF)F
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 162
    sub-float v0, p2, p0

    sub-float v1, p2, p0

    mul-float/2addr v0, v1

    sub-float v1, p3, p1

    sub-float v2, p3, p1

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 163
    sub-float v1, p4, p0

    sub-float v2, p3, p1

    mul-float/2addr v1, v2

    sub-float v2, p5, p1

    sub-float v3, p2, p0

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float v0, v1, v0

    return v0
.end method

.method public static distanceLinePoint(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)F
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 140
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v1, v2, v4}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 141
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v1, v2, v4}, Lcom/badlogic/gdx/math/Vector3;->sub(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->len2()F

    move-result v0

    .line 142
    cmpl-float v1, v0, v4

    if-nez v1, :cond_0

    .line 143
    invoke-virtual {p2, p0}, Lcom/badlogic/gdx/math/Vector2;->dst(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v0

    .line 157
    :goto_0
    return v0

    .line 145
    :cond_0
    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v2, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 146
    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/badlogic/gdx/math/Vector3;->sub(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 147
    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 148
    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/badlogic/gdx/math/Vector3;->sub(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 150
    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v1

    div-float v0, v1, v0

    .line 151
    cmpg-float v1, v0, v4

    if-gez v1, :cond_1

    .line 152
    invoke-virtual {p2, p0}, Lcom/badlogic/gdx/math/Vector2;->dst(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v0

    goto :goto_0

    .line 153
    :cond_1
    const/high16 v1, 0x3f80

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/math/Vector2;->dst(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v0

    goto :goto_0

    .line 155
    :cond_2
    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 156
    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/badlogic/gdx/math/Vector3;->sub(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v1, v2, v4}, Lcom/badlogic/gdx/math/Vector3;->add(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 157
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget v1, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v1, v2, v4}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->dst(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v0

    goto :goto_0
.end method

.method public static getLowestPositiveRoot(FFF)F
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v0, 0x7fc0

    const/4 v5, 0x0

    .line 39
    mul-float v1, p1, p1

    const/high16 v2, 0x4080

    mul-float/2addr v2, p0

    mul-float/2addr v2, p2

    sub-float/2addr v1, v2

    .line 40
    cmpg-float v2, v1, v5

    if-gez v2, :cond_1

    .line 57
    :cond_0
    :goto_0
    return v0

    .line 42
    :cond_1
    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 43
    const/high16 v2, 0x3f80

    const/high16 v3, 0x4000

    mul-float/2addr v3, p0

    div-float v3, v2, v3

    .line 44
    neg-float v2, p1

    sub-float/2addr v2, v1

    mul-float/2addr v2, v3

    .line 45
    neg-float v4, p1

    add-float/2addr v1, v4

    mul-float/2addr v1, v3

    .line 47
    cmpl-float v3, v2, v1

    if-lez v3, :cond_3

    .line 53
    :goto_1
    cmpl-float v3, v1, v5

    if-lez v3, :cond_2

    move v0, v1

    goto :goto_0

    .line 55
    :cond_2
    cmpl-float v1, v2, v5

    if-lez v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_3
    move v6, v1

    move v1, v2

    move v2, v6

    goto :goto_1
.end method

.method public static intersectLinePlane(FFFFFFLcom/badlogic/gdx/math/Plane;Lcom/badlogic/gdx/math/Vector3;)F
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 254
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p3, p4, p5}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/badlogic/gdx/math/Vector3;->sub(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    .line 255
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p0, p1, p2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    .line 256
    invoke-virtual {p6}, Lcom/badlogic/gdx/math/Plane;->getNormal()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v0

    .line 257
    cmpl-float v4, v0, v1

    if-eqz v4, :cond_1

    .line 258
    invoke-virtual {p6}, Lcom/badlogic/gdx/math/Plane;->getNormal()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v4

    invoke-virtual {p6}, Lcom/badlogic/gdx/math/Plane;->getD()F

    move-result v5

    add-float/2addr v4, v5

    neg-float v4, v4

    div-float v0, v4, v0

    .line 259
    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    const/high16 v1, 0x3f80

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    if-eqz p7, :cond_0

    invoke-virtual {p7, v3}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 266
    :cond_0
    :goto_0
    return v0

    .line 261
    :cond_1
    invoke-virtual {p6, v3}, Lcom/badlogic/gdx/math/Plane;->testPoint(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Plane$PlaneSide;

    move-result-object v0

    sget-object v2, Lcom/badlogic/gdx/math/Plane$PlaneSide;->OnPlane:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    if-ne v0, v2, :cond_3

    .line 262
    if-eqz p7, :cond_2

    invoke-virtual {p7, v3}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    :cond_2
    move v0, v1

    .line 263
    goto :goto_0

    .line 266
    :cond_3
    const/high16 v0, -0x4080

    goto :goto_0
.end method

.method public static intersectLines(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 545
    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object/from16 v0, p1

    iget v3, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    move-object/from16 v0, p1

    iget v4, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object/from16 v0, p2

    iget v5, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    move-object/from16 v0, p2

    iget v6, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object/from16 v0, p3

    iget v7, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    move-object/from16 v0, p3

    iget v8, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 547
    invoke-static {v1, v2, v3, v4}, Lcom/badlogic/gdx/math/Intersector;->det(FFFF)F

    move-result v9

    .line 548
    invoke-static {v5, v6, v7, v8}, Lcom/badlogic/gdx/math/Intersector;->det(FFFF)F

    move-result v10

    .line 549
    sub-float v11, v1, v3

    sub-float v12, v2, v4

    sub-float v13, v5, v7

    sub-float v14, v6, v8

    invoke-static {v11, v12, v13, v14}, Lcom/badlogic/gdx/math/Intersector;->det(FFFF)F

    move-result v11

    .line 551
    sub-float/2addr v1, v3

    sub-float v3, v5, v7

    invoke-static {v9, v1, v10, v3}, Lcom/badlogic/gdx/math/Intersector;->det(FFFF)F

    move-result v1

    div-float/2addr v1, v11

    .line 552
    sub-float/2addr v2, v4

    sub-float v3, v6, v8

    invoke-static {v9, v2, v10, v3}, Lcom/badlogic/gdx/math/Intersector;->det(FFFF)F

    move-result v2

    div-float/2addr v2, v11

    .line 554
    move-object/from16 v0, p4

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 555
    move-object/from16 v0, p4

    iput v2, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 557
    const/4 v1, 0x1

    return v1
.end method

.method public static intersectRayBoundsFast(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/collision/BoundingBox;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x3f80

    .line 372
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    div-float v0, v2, v0

    .line 373
    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    div-float v3, v2, v1

    .line 374
    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->z:F

    div-float v4, v2, v1

    .line 376
    iget-object v1, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v0

    .line 377
    iget-object v2, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v5, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v2, v5

    mul-float/2addr v0, v2

    .line 378
    cmpg-float v2, v1, v0

    if-gez v2, :cond_2

    .line 386
    :goto_0
    iget-object v2, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v5, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v2, v5

    mul-float/2addr v2, v3

    .line 387
    iget-object v5, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v6, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v5, v6

    mul-float/2addr v3, v5

    .line 388
    cmpl-float v5, v2, v3

    if-lez v5, :cond_7

    .line 394
    :goto_1
    cmpl-float v5, v3, v1

    if-lez v5, :cond_6

    .line 395
    :goto_2
    cmpg-float v1, v2, v0

    if-gez v1, :cond_0

    move v0, v2

    .line 397
    :cond_0
    iget-object v1, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v4

    .line 398
    iget-object v2, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v5, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr v2, v5

    mul-float/2addr v2, v4

    .line 399
    cmpl-float v4, v1, v2

    if-lez v4, :cond_5

    .line 405
    :goto_3
    cmpl-float v4, v2, v3

    if-lez v4, :cond_4

    .line 406
    :goto_4
    cmpg-float v3, v1, v0

    if-gez v3, :cond_1

    move v0, v1

    .line 408
    :cond_1
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_3

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_3

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_2
    move v7, v1

    move v1, v0

    move v0, v7

    .line 383
    goto :goto_0

    .line 408
    :cond_3
    const/4 v0, 0x0

    goto :goto_5

    :cond_4
    move v2, v3

    goto :goto_4

    :cond_5
    move v7, v2

    move v2, v1

    move v1, v7

    goto :goto_3

    :cond_6
    move v3, v1

    goto :goto_2

    :cond_7
    move v7, v3

    move v3, v2

    move v2, v7

    goto :goto_1
.end method

.method public static intersectRayPlane(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/Plane;Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 226
    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Plane;->getNormal()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v2

    .line 227
    cmpl-float v3, v2, v5

    if-eqz v3, :cond_3

    .line 228
    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Plane;->getNormal()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v3

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Plane;->getD()F

    move-result v4

    add-float/2addr v3, v4

    neg-float v3, v3

    div-float v2, v3, v2

    .line 229
    cmpg-float v3, v2, v5

    if-gez v3, :cond_1

    .line 237
    :cond_0
    :goto_0
    return v0

    .line 231
    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3}, Lcom/badlogic/gdx/math/Vector3;->tmp()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    :cond_2
    move v0, v1

    .line 232
    goto :goto_0

    .line 233
    :cond_3
    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/math/Plane;->testPoint(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Plane$PlaneSide;

    move-result-object v2

    sget-object v3, Lcom/badlogic/gdx/math/Plane$PlaneSide;->OnPlane:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    if-ne v2, v3, :cond_0

    .line 234
    if-eqz p2, :cond_4

    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    :cond_4
    move v0, v1

    .line 235
    goto :goto_0
.end method

.method public static intersectRaySphere(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/Vector3;FLcom/badlogic/gdx/math/Vector3;)Z
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/high16 v8, 0x4000

    const/4 v7, 0x0

    .line 320
    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->dir:Lcom/badlogic/gdx/math/Vector3;

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 321
    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->start:Lcom/badlogic/gdx/math/Vector3;

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 322
    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->dir:Lcom/badlogic/gdx/math/Vector3;

    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->start:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3}, Lcom/badlogic/gdx/math/Vector3;->tmp()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v2

    mul-float/2addr v2, v8

    .line 323
    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->start:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, p1}, Lcom/badlogic/gdx/math/Vector3;->dst2(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v3

    mul-float v4, p2, p2

    sub-float v4, v3, v4

    .line 324
    mul-float v3, v2, v2

    const/high16 v5, 0x4080

    mul-float/2addr v5, v4

    sub-float/2addr v3, v5

    .line 325
    cmpg-float v5, v3, v7

    if-gez v5, :cond_1

    .line 360
    :cond_0
    :goto_0
    return v0

    .line 328
    :cond_1
    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v3, v5

    .line 330
    cmpg-float v5, v2, v7

    if-gez v5, :cond_3

    .line 331
    neg-float v2, v2

    sub-float/2addr v2, v3

    div-float/2addr v2, v8

    move v3, v2

    .line 336
    :goto_1
    const/high16 v2, 0x3f80

    div-float v2, v3, v2

    .line 337
    div-float v3, v4, v3

    .line 340
    cmpl-float v4, v2, v3

    if-lez v4, :cond_6

    .line 350
    :goto_2
    cmpg-float v4, v2, v7

    if-ltz v4, :cond_0

    .line 353
    cmpg-float v0, v3, v7

    if-gez v0, :cond_4

    .line 354
    if-eqz p3, :cond_2

    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->start:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p3, v0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->dir:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3}, Lcom/badlogic/gdx/math/Vector3;->tmp()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    :cond_2
    move v0, v1

    .line 355
    goto :goto_0

    .line 333
    :cond_3
    neg-float v2, v2

    add-float/2addr v2, v3

    div-float/2addr v2, v8

    move v3, v2

    goto :goto_1

    .line 359
    :cond_4
    if-eqz p3, :cond_5

    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->start:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p3, v0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->dir:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2}, Lcom/badlogic/gdx/math/Vector3;->tmp()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    :cond_5
    move v0, v1

    .line 360
    goto :goto_0

    :cond_6
    move v9, v3

    move v3, v2

    move v2, v9

    goto :goto_2
.end method

.method public static intersectRayTriangle(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x0

    .line 281
    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->p:Lcom/badlogic/gdx/math/Plane;

    invoke-virtual {v1, p1, p2, p3}, Lcom/badlogic/gdx/math/Plane;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    .line 282
    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->p:Lcom/badlogic/gdx/math/Plane;

    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->i:Lcom/badlogic/gdx/math/Vector3;

    invoke-static {p0, v1, v2}, Lcom/badlogic/gdx/math/Intersector;->intersectRayPlane(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/Plane;Lcom/badlogic/gdx/math/Vector3;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 304
    :cond_0
    :goto_0
    return v0

    .line 284
    :cond_1
    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->v0:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, p3}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 285
    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->v1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, p2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 286
    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->i:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 288
    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->v0:Lcom/badlogic/gdx/math/Vector3;

    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->v0:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v1

    .line 289
    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->v0:Lcom/badlogic/gdx/math/Vector3;

    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->v1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v2

    .line 290
    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->v0:Lcom/badlogic/gdx/math/Vector3;

    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v3

    .line 291
    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->v1:Lcom/badlogic/gdx/math/Vector3;

    sget-object v5, Lcom/badlogic/gdx/math/Intersector;->v1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v4

    .line 292
    sget-object v5, Lcom/badlogic/gdx/math/Intersector;->v1:Lcom/badlogic/gdx/math/Vector3;

    sget-object v6, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v5

    .line 294
    mul-float v6, v1, v4

    mul-float v7, v2, v2

    sub-float/2addr v6, v7

    .line 295
    cmpl-float v7, v6, v8

    if-eqz v7, :cond_0

    .line 297
    mul-float/2addr v4, v3

    mul-float v7, v2, v5

    sub-float/2addr v4, v7

    div-float/2addr v4, v6

    .line 298
    mul-float/2addr v1, v5

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    div-float/2addr v1, v6

    .line 300
    cmpl-float v2, v4, v8

    if-ltz v2, :cond_0

    cmpl-float v2, v1, v8

    if-ltz v2, :cond_0

    add-float/2addr v1, v4

    const/high16 v2, 0x3f80

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 301
    if-eqz p4, :cond_2

    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->i:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p4, v0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 302
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static intersectRayTriangles(Lcom/badlogic/gdx/math/collision/Ray;Ljava/util/List;Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 9
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/math/collision/Ray;",
            "Ljava/util/List",
            "<",
            "Lcom/badlogic/gdx/math/Vector3;",
            ">;",
            "Lcom/badlogic/gdx/math/Vector3;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 500
    const v0, 0x7f7fffff

    .line 503
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/lit8 v1, v1, 0x3

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "triangle list size is not a multiple of 3"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v3, v4

    move v5, v4

    move v6, v0

    .line 505
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    if-ge v3, v0, :cond_1

    .line 506
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector3;

    add-int/lit8 v1, v3, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/math/Vector3;

    add-int/lit8 v2, v3, 0x2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/math/Vector3;

    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-static {p0, v0, v1, v2, v8}, Lcom/badlogic/gdx/math/Intersector;->intersectRayTriangle(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Z

    move-result v0

    .line 508
    if-ne v0, v7, :cond_4

    .line 509
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->tmp()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->len2()F

    move-result v2

    .line 510
    cmpg-float v0, v2, v6

    if-gez v0, :cond_4

    .line 512
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->best:Lcom/badlogic/gdx/math/Vector3;

    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move v1, v7

    .line 505
    :goto_1
    add-int/lit8 v0, v3, 0x3

    move v3, v0

    move v5, v1

    move v6, v2

    goto :goto_0

    .line 518
    :cond_1
    if-nez v5, :cond_2

    .line 522
    :goto_2
    return v4

    .line 521
    :cond_2
    if-eqz p2, :cond_3

    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->best:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    :cond_3
    move v4, v7

    .line 522
    goto :goto_2

    :cond_4
    move v1, v5

    move v2, v6

    goto :goto_1
.end method

.method public static intersectRayTriangles(Lcom/badlogic/gdx/math/collision/Ray;[FLcom/badlogic/gdx/math/Vector3;)Z
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 424
    const v0, 0x7f7fffff

    .line 427
    array-length v2, p1

    div-int/lit8 v2, v2, 0x3

    rem-int/lit8 v2, v2, 0x3

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "triangle list size is not a multiple of 3"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v2, v1

    move v3, v0

    move v0, v1

    .line 429
    :goto_0
    array-length v5, p1

    add-int/lit8 v5, v5, -0x6

    if-ge v0, v5, :cond_2

    .line 430
    sget-object v5, Lcom/badlogic/gdx/math/Intersector;->tmp1:Lcom/badlogic/gdx/math/Vector3;

    aget v6, p1, v0

    add-int/lit8 v7, v0, 0x1

    aget v7, p1, v7

    add-int/lit8 v8, v0, 0x2

    aget v8, p1, v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    sget-object v6, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    add-int/lit8 v7, v0, 0x3

    aget v7, p1, v7

    add-int/lit8 v8, v0, 0x4

    aget v8, p1, v8

    add-int/lit8 v9, v0, 0x5

    aget v9, p1, v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    sget-object v7, Lcom/badlogic/gdx/math/Intersector;->tmp3:Lcom/badlogic/gdx/math/Vector3;

    add-int/lit8 v8, v0, 0x6

    aget v8, p1, v8

    add-int/lit8 v9, v0, 0x7

    aget v9, p1, v9

    add-int/lit8 v10, v0, 0x8

    aget v10, p1, v10

    invoke-virtual {v7, v8, v9, v10}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v7

    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-static {p0, v5, v6, v7, v8}, Lcom/badlogic/gdx/math/Intersector;->intersectRayTriangle(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Z

    move-result v5

    .line 434
    if-ne v5, v4, :cond_1

    .line 435
    iget-object v5, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v5}, Lcom/badlogic/gdx/math/Vector3;->tmp()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    sget-object v6, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/math/Vector3;->len2()F

    move-result v5

    .line 436
    cmpg-float v6, v5, v3

    if-gez v6, :cond_1

    .line 438
    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->best:Lcom/badlogic/gdx/math/Vector3;

    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move v2, v4

    move v3, v5

    .line 429
    :cond_1
    add-int/lit8 v0, v0, 0x9

    goto :goto_0

    .line 444
    :cond_2
    if-nez v2, :cond_3

    .line 448
    :goto_1
    return v1

    .line 447
    :cond_3
    if-eqz p2, :cond_4

    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->best:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    :cond_4
    move v1, v4

    .line 448
    goto :goto_1
.end method

.method public static intersectRayTriangles(Lcom/badlogic/gdx/math/collision/Ray;[F[SILcom/badlogic/gdx/math/Vector3;)Z
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 461
    const v0, 0x7f7fffff

    .line 464
    array-length v2, p2

    rem-int/lit8 v2, v2, 0x3

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "triangle list size is not a multiple of 3"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v2, v1

    move v3, v0

    move v0, v1

    .line 466
    :goto_0
    array-length v5, p2

    if-ge v0, v5, :cond_2

    .line 467
    aget-short v5, p2, v0

    mul-int/2addr v5, p3

    .line 468
    add-int/lit8 v6, v0, 0x1

    aget-short v6, p2, v6

    mul-int/2addr v6, p3

    .line 469
    add-int/lit8 v7, v0, 0x2

    aget-short v7, p2, v7

    mul-int/2addr v7, p3

    .line 471
    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->tmp1:Lcom/badlogic/gdx/math/Vector3;

    aget v9, p1, v5

    add-int/lit8 v10, v5, 0x1

    aget v10, p1, v10

    add-int/lit8 v5, v5, 0x2

    aget v5, p1, v5

    invoke-virtual {v8, v9, v10, v5}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    aget v9, p1, v6

    add-int/lit8 v10, v6, 0x1

    aget v10, p1, v10

    add-int/lit8 v6, v6, 0x2

    aget v6, p1, v6

    invoke-virtual {v8, v9, v10, v6}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->tmp3:Lcom/badlogic/gdx/math/Vector3;

    aget v9, p1, v7

    add-int/lit8 v10, v7, 0x1

    aget v10, p1, v10

    add-int/lit8 v7, v7, 0x2

    aget v7, p1, v7

    invoke-virtual {v8, v9, v10, v7}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v7

    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-static {p0, v5, v6, v7, v8}, Lcom/badlogic/gdx/math/Intersector;->intersectRayTriangle(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Z

    move-result v5

    .line 475
    if-ne v5, v4, :cond_1

    .line 476
    iget-object v5, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v5}, Lcom/badlogic/gdx/math/Vector3;->tmp()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    sget-object v6, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/math/Vector3;->len2()F

    move-result v5

    .line 477
    cmpg-float v6, v5, v3

    if-gez v6, :cond_1

    .line 479
    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->best:Lcom/badlogic/gdx/math/Vector3;

    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move v2, v4

    move v3, v5

    .line 466
    :cond_1
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 485
    :cond_2
    if-nez v2, :cond_3

    .line 489
    :goto_1
    return v1

    .line 488
    :cond_3
    if-eqz p4, :cond_4

    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->best:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p4, v0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    :cond_4
    move v1, v4

    .line 489
    goto :goto_1
.end method

.method public static intersectRectangles(Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/math/Rectangle;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 532
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Rectangle;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Rectangle;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Rectangle;->getWidth()F

    move-result v2

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Rectangle;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Rectangle;->getWidth()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Rectangle;->getX()F

    move-result v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Rectangle;->getY()F

    move-result v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Rectangle;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Rectangle;->getHeight()F

    move-result v2

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Rectangle;->getY()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Rectangle;->getHeight()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Rectangle;->getY()F

    move-result v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static intersectSegmentCircle(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;F)Z
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 174
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v1, v2

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v3, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2, v4}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 175
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp1:Lcom/badlogic/gdx/math/Vector3;

    iget v1, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v1, v2

    iget v2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v3, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2, v4}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 176
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->len()F

    move-result v0

    .line 177
    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->tmp1:Lcom/badlogic/gdx/math/Vector3;

    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v1

    .line 178
    cmpg-float v2, v1, v4

    if-gtz v2, :cond_0

    .line 179
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v1, v2, v4}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 187
    :goto_0
    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v0, v1

    .line 188
    iget v1, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v1, v2

    .line 190
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    cmpg-float v0, v0, p3

    if-gtz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 180
    :cond_0
    cmpl-float v0, v1, v0

    if-ltz v0, :cond_1

    .line 181
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v1, v2, v4}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    goto :goto_0

    .line 183
    :cond_1
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp3:Lcom/badlogic/gdx/math/Vector3;

    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 184
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->tmp3:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v1, v2

    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->tmp3:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v3, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2, v4}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    goto :goto_0

    .line 190
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static intersectSegmentCircleDisplace(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;FLcom/badlogic/gdx/math/Vector2;)F
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v1, 0x7f80

    const/4 v5, 0x0

    .line 204
    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v0, v2

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v2, v3

    mul-float/2addr v0, v2

    iget v2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v3, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v2, v3

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v4, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    .line 205
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->dst(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v2

    .line 206
    mul-float/2addr v2, v2

    div-float/2addr v0, v2

    .line 207
    cmpg-float v2, v0, v5

    if-ltz v2, :cond_0

    const/high16 v2, 0x3f80

    cmpl-float v2, v0, v2

    if-lez v2, :cond_1

    :cond_0
    move v0, v1

    .line 215
    :goto_0
    return v0

    .line 208
    :cond_1
    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    iget v3, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/badlogic/gdx/math/Vector3;->sub(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 209
    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget v3, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 210
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget v2, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v2, v3, v5}, Lcom/badlogic/gdx/math/Vector3;->dst(FFF)F

    move-result v0

    .line 211
    cmpg-float v2, v0, p3

    if-gez v2, :cond_2

    .line 212
    invoke-virtual {p4, p2}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/math/Vector2;->sub(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Vector2;->nor()Lcom/badlogic/gdx/math/Vector2;

    goto :goto_0

    :cond_2
    move v0, v1

    .line 215
    goto :goto_0
.end method

.method public static intersectSegmentPlane(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Plane;Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Vector3;->tmp()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    .line 90
    invoke-virtual {p2}, Lcom/badlogic/gdx/math/Plane;->getNormal()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v1

    .line 91
    invoke-virtual {p2}, Lcom/badlogic/gdx/math/Plane;->getNormal()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v2

    invoke-virtual {p2}, Lcom/badlogic/gdx/math/Plane;->getD()F

    move-result v3

    add-float/2addr v2, v3

    neg-float v2, v2

    div-float v1, v2, v1

    .line 92
    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-ltz v2, :cond_0

    const/high16 v2, 0x3f80

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 95
    :goto_0
    return v0

    .line 94
    :cond_1
    invoke-virtual {p3, p0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 95
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static intersectSegments(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 569
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v4, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v5, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v6, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v7, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 571
    sub-float v8, v7, v5

    sub-float v9, v2, v0

    mul-float/2addr v8, v9

    sub-float v9, v6, v4

    sub-float v10, v3, v1

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    .line 572
    const/4 v9, 0x0

    cmpl-float v9, v8, v9

    if-nez v9, :cond_0

    const/4 v0, 0x0

    .line 581
    :goto_0
    return v0

    .line 574
    :cond_0
    sub-float/2addr v6, v4

    sub-float v9, v1, v5

    mul-float/2addr v6, v9

    sub-float/2addr v7, v5

    sub-float v9, v0, v4

    mul-float/2addr v7, v9

    sub-float/2addr v6, v7

    div-float/2addr v6, v8

    .line 575
    sub-float v7, v2, v0

    sub-float v5, v1, v5

    mul-float/2addr v5, v7

    sub-float v7, v3, v1

    sub-float v4, v0, v4

    mul-float/2addr v4, v7

    sub-float v4, v5, v4

    div-float/2addr v4, v8

    .line 577
    const/4 v5, 0x0

    cmpg-float v5, v6, v5

    if-ltz v5, :cond_1

    const/high16 v5, 0x3f80

    cmpl-float v5, v6, v5

    if-lez v5, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 578
    :cond_2
    const/4 v5, 0x0

    cmpg-float v5, v4, v5

    if-ltz v5, :cond_3

    const/high16 v5, 0x3f80

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 580
    :cond_4
    if-eqz p4, :cond_5

    sub-float/2addr v2, v0

    mul-float/2addr v2, v6

    add-float/2addr v0, v2

    sub-float v2, v3, v1

    mul-float/2addr v2, v6

    add-float/2addr v1, v2

    invoke-virtual {p4, v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 581
    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isPointInPolygon(Ljava/util/List;Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/badlogic/gdx/math/Vector2;",
            ">;",
            "Lcom/badlogic/gdx/math/Vector2;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 117
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    move v3, v2

    move v4, v1

    move v1, v2

    .line 119
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 120
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v5, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpg-float v0, v0, v5

    if-gez v0, :cond_0

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v5, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpl-float v0, v0, v5

    if-gez v0, :cond_1

    :cond_0
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v5, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpg-float v0, v0, v5

    if-gez v0, :cond_2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v5, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpl-float v0, v0, v5

    if-ltz v0, :cond_2

    .line 122
    :cond_1
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector2;

    iget v5, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v6, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v6, v0

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector2;

    iget v7, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v0, v7, v0

    div-float/2addr v6, v0

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector2;

    iget v4, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float v0, v4, v0

    mul-float/2addr v0, v6

    add-float/2addr v0, v5

    iget v4, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_2

    .line 124
    if-nez v3, :cond_3

    const/4 v0, 0x1

    :goto_1
    move v3, v0

    .line 119
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v4, v1

    move v1, v0

    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 124
    goto :goto_1

    .line 129
    :cond_4
    return v3
.end method

.method public static isPointInTriangle(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 73
    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->v0:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 74
    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->v1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, p2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 75
    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, p3}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 77
    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->v0:Lcom/badlogic/gdx/math/Vector3;

    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->v1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v1

    .line 78
    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->v0:Lcom/badlogic/gdx/math/Vector3;

    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v2

    .line 79
    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->v1:Lcom/badlogic/gdx/math/Vector3;

    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v3

    .line 80
    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    sget-object v5, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v4

    .line 82
    mul-float v5, v3, v2

    mul-float/2addr v4, v1

    sub-float v4, v5, v4

    cmpg-float v4, v4, v6

    if-gez v4, :cond_1

    .line 85
    :cond_0
    :goto_0
    return v0

    .line 83
    :cond_1
    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->v1:Lcom/badlogic/gdx/math/Vector3;

    sget-object v5, Lcom/badlogic/gdx/math/Intersector;->v1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v4

    .line 84
    mul-float/2addr v1, v3

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    cmpg-float v1, v1, v6

    if-ltz v1, :cond_0

    .line 85
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x9

    const/4 v3, 0x0

    .line 940
    new-instance v0, Lcom/badlogic/gdx/math/Plane;

    new-instance v1, Lcom/badlogic/gdx/math/Vector3;

    const/high16 v2, 0x3f80

    invoke-direct {v1, v2, v3, v3}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    invoke-direct {v0, v1, v3}, Lcom/badlogic/gdx/math/Plane;-><init>(Lcom/badlogic/gdx/math/Vector3;F)V

    .line 941
    new-instance v1, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;-><init>(I)V

    .line 942
    new-array v2, v4, [F

    fill-array-data v2, :array_0

    .line 943
    invoke-static {v2, v0, v1}, Lcom/badlogic/gdx/math/Intersector;->splitTriangle([FLcom/badlogic/gdx/math/Plane;Lcom/badlogic/gdx/math/Intersector$SplitTriangle;)V

    .line 944
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 946
    new-array v2, v4, [F

    fill-array-data v2, :array_1

    .line 947
    invoke-static {v2, v0, v1}, Lcom/badlogic/gdx/math/Intersector;->splitTriangle([FLcom/badlogic/gdx/math/Plane;Lcom/badlogic/gdx/math/Intersector$SplitTriangle;)V

    .line 948
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 949
    return-void

    .line 942
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x20t 0xc1t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x20t 0x41t
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x20t 0xc1t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x20t 0x41t
    .end array-data

    .line 946
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x20t 0xc1t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x20t 0x41t
        0x0t 0x0t 0x20t 0x41t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x20t 0xc1t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x20t 0xc1t
    .end array-data
.end method

.method public static overlapCircleRectangle(Lcom/badlogic/gdx/math/Circle;Lcom/badlogic/gdx/math/Rectangle;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 608
    iget v0, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    .line 609
    iget v1, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    .line 611
    iget v2, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 612
    iget v0, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 617
    :cond_0
    :goto_0
    iget v2, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    iget v3, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    .line 618
    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 623
    :cond_1
    :goto_1
    iget v2, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    sub-float/2addr v0, v2

    .line 624
    mul-float/2addr v0, v0

    .line 625
    iget v2, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    sub-float/2addr v1, v2

    .line 626
    mul-float/2addr v1, v1

    .line 628
    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    iget v2, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    const/4 v0, 0x1

    :goto_2
    return v0

    .line 613
    :cond_2
    iget v2, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v4, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 614
    iget v0, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v0, v2

    goto :goto_0

    .line 619
    :cond_3
    iget v2, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    iget v3, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v4, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 620
    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v1, v2

    goto :goto_1

    .line 628
    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public static overlapCircles(Lcom/badlogic/gdx/math/Circle;Lcom/badlogic/gdx/math/Circle;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 593
    iget v0, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Circle;->x:F

    sub-float/2addr v0, v1

    .line 594
    iget v1, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Circle;->y:F

    sub-float/2addr v1, v2

    .line 595
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    .line 596
    iget v1, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    iget v2, p1, Lcom/badlogic/gdx/math/Circle;->radius:F

    add-float/2addr v1, v2

    .line 597
    mul-float/2addr v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static overlapConvexPolygons(Lcom/badlogic/gdx/math/Polygon;Lcom/badlogic/gdx/math/Polygon;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 637
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/badlogic/gdx/math/Intersector;->overlapConvexPolygons(Lcom/badlogic/gdx/math/Polygon;Lcom/badlogic/gdx/math/Polygon;Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;)Z

    move-result v0

    return v0
.end method

.method public static overlapConvexPolygons(Lcom/badlogic/gdx/math/Polygon;Lcom/badlogic/gdx/math/Polygon;Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 649
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Polygon;->getTransformedVertices()[F

    move-result-object v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Polygon;->getTransformedVertices()[F

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/badlogic/gdx/math/Intersector;->overlapConvexPolygons([F[FLcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;)Z

    move-result v0

    return v0
.end method

.method public static overlapConvexPolygons([F[FLcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;)Z
    .locals 15
    .parameter
    .parameter
    .parameter

    .prologue
    .line 661
    const v9, 0x7f7fffff

    .line 662
    const/4 v8, 0x0

    .line 663
    const/4 v7, 0x0

    .line 666
    array-length v13, p0

    .line 667
    const/4 v1, 0x0

    move v12, v1

    :goto_0
    if-ge v12, v13, :cond_c

    .line 668
    aget v1, p0, v12

    .line 669
    add-int/lit8 v2, v12, 0x1

    aget v2, p0, v2

    .line 670
    add-int/lit8 v3, v12, 0x2

    rem-int/2addr v3, v13

    aget v3, p0, v3

    .line 671
    add-int/lit8 v4, v12, 0x3

    rem-int/2addr v4, v13

    aget v4, p0, v4

    .line 673
    sub-float/2addr v2, v4

    .line 674
    sub-float/2addr v1, v3

    neg-float v1, v1

    .line 676
    mul-float v3, v2, v2

    mul-float v4, v1, v1

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 677
    div-float v11, v2, v3

    .line 678
    div-float v10, v1, v3

    .line 683
    const/4 v1, 0x0

    aget v1, p0, v1

    mul-float/2addr v1, v11

    const/4 v2, 0x1

    aget v2, p0, v2

    mul-float/2addr v2, v10

    add-float/2addr v2, v1

    .line 685
    const/4 v1, 0x2

    move v3, v2

    :goto_1
    array-length v4, p0

    if-ge v1, v4, :cond_2

    .line 686
    aget v4, p0, v1

    mul-float/2addr v4, v11

    add-int/lit8 v5, v1, 0x1

    aget v5, p0, v5

    mul-float/2addr v5, v10

    add-float/2addr v4, v5

    .line 687
    cmpg-float v5, v4, v3

    if-gez v5, :cond_1

    move v3, v4

    .line 685
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 689
    :cond_1
    cmpl-float v5, v4, v2

    if-lez v5, :cond_0

    move v2, v4

    .line 690
    goto :goto_2

    .line 695
    :cond_2
    const/4 v1, 0x0

    aget v1, p1, v1

    mul-float/2addr v1, v11

    const/4 v4, 0x1

    aget v4, p1, v4

    mul-float/2addr v4, v10

    add-float/2addr v4, v1

    .line 697
    const/4 v1, 0x2

    move v5, v4

    :goto_3
    move-object/from16 v0, p1

    array-length v6, v0

    if-ge v1, v6, :cond_5

    .line 698
    aget v6, p1, v1

    mul-float/2addr v6, v11

    add-int/lit8 v14, v1, 0x1

    aget v14, p1, v14

    mul-float/2addr v14, v10

    add-float/2addr v6, v14

    .line 699
    cmpg-float v14, v6, v5

    if-gez v14, :cond_4

    move v5, v6

    .line 697
    :cond_3
    :goto_4
    add-int/lit8 v1, v1, 0x2

    goto :goto_3

    .line 701
    :cond_4
    cmpl-float v14, v6, v4

    if-lez v14, :cond_3

    move v4, v6

    .line 702
    goto :goto_4

    .line 706
    :cond_5
    cmpg-float v1, v3, v5

    if-gez v1, :cond_6

    cmpl-float v1, v2, v5

    if-gtz v1, :cond_8

    :cond_6
    cmpg-float v1, v5, v3

    if-gez v1, :cond_7

    cmpl-float v1, v4, v3

    if-gtz v1, :cond_8

    .line 707
    :cond_7
    const/4 v1, 0x0

    .line 800
    :goto_5
    return v1

    .line 709
    :cond_8
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v6

    sub-float/2addr v1, v6

    .line 710
    cmpg-float v6, v3, v5

    if-gez v6, :cond_9

    cmpl-float v6, v2, v4

    if-gtz v6, :cond_a

    :cond_9
    cmpg-float v6, v5, v3

    if-gez v6, :cond_1e

    cmpl-float v6, v4, v2

    if-lez v6, :cond_1e

    .line 711
    :cond_a
    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 712
    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 713
    cmpg-float v4, v3, v2

    if-gez v4, :cond_b

    .line 714
    neg-float v4, v11

    .line 715
    neg-float v2, v10

    .line 716
    add-float/2addr v3, v1

    move v1, v2

    move v2, v4

    .line 721
    :goto_6
    cmpg-float v4, v3, v9

    if-gez v4, :cond_1d

    .line 667
    :goto_7
    add-int/lit8 v4, v12, 0x2

    move v12, v4

    move v7, v1

    move v8, v2

    move v9, v3

    goto/16 :goto_0

    .line 718
    :cond_b
    add-float v3, v1, v2

    move v1, v10

    move v2, v11

    goto :goto_6

    .line 731
    :cond_c
    move-object/from16 v0, p1

    array-length v13, v0

    .line 732
    const/4 v1, 0x0

    move v12, v1

    :goto_8
    if-ge v12, v13, :cond_19

    .line 733
    aget v1, p1, v12

    .line 734
    add-int/lit8 v2, v12, 0x1

    aget v2, p1, v2

    .line 735
    add-int/lit8 v3, v12, 0x2

    rem-int/2addr v3, v13

    aget v3, p1, v3

    .line 736
    add-int/lit8 v4, v12, 0x3

    rem-int/2addr v4, v13

    aget v4, p1, v4

    .line 738
    sub-float/2addr v2, v4

    .line 739
    sub-float/2addr v1, v3

    neg-float v1, v1

    .line 741
    mul-float v3, v2, v2

    mul-float v4, v1, v1

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 742
    div-float v11, v2, v3

    .line 743
    div-float v10, v1, v3

    .line 748
    const/4 v1, 0x0

    aget v1, p0, v1

    mul-float/2addr v1, v11

    const/4 v2, 0x1

    aget v2, p0, v2

    mul-float/2addr v2, v10

    add-float/2addr v2, v1

    .line 750
    const/4 v1, 0x2

    move v3, v2

    :goto_9
    array-length v4, p0

    if-ge v1, v4, :cond_f

    .line 751
    aget v4, p0, v1

    mul-float/2addr v4, v11

    add-int/lit8 v5, v1, 0x1

    aget v5, p0, v5

    mul-float/2addr v5, v10

    add-float/2addr v4, v5

    .line 752
    cmpg-float v5, v4, v3

    if-gez v5, :cond_e

    move v3, v4

    .line 750
    :cond_d
    :goto_a
    add-int/lit8 v1, v1, 0x2

    goto :goto_9

    .line 754
    :cond_e
    cmpl-float v5, v4, v2

    if-lez v5, :cond_d

    move v2, v4

    .line 755
    goto :goto_a

    .line 760
    :cond_f
    const/4 v1, 0x0

    aget v1, p1, v1

    mul-float/2addr v1, v11

    const/4 v4, 0x1

    aget v4, p1, v4

    mul-float/2addr v4, v10

    add-float/2addr v4, v1

    .line 762
    const/4 v1, 0x2

    move v5, v4

    :goto_b
    move-object/from16 v0, p1

    array-length v6, v0

    if-ge v1, v6, :cond_12

    .line 763
    aget v6, p1, v1

    mul-float/2addr v6, v11

    add-int/lit8 v14, v1, 0x1

    aget v14, p1, v14

    mul-float/2addr v14, v10

    add-float/2addr v6, v14

    .line 764
    cmpg-float v14, v6, v5

    if-gez v14, :cond_11

    move v5, v6

    .line 762
    :cond_10
    :goto_c
    add-int/lit8 v1, v1, 0x2

    goto :goto_b

    .line 766
    :cond_11
    cmpl-float v14, v6, v4

    if-lez v14, :cond_10

    move v4, v6

    .line 767
    goto :goto_c

    .line 771
    :cond_12
    cmpg-float v1, v3, v5

    if-gez v1, :cond_13

    cmpl-float v1, v2, v5

    if-gtz v1, :cond_15

    :cond_13
    cmpg-float v1, v5, v3

    if-gez v1, :cond_14

    cmpl-float v1, v4, v3

    if-gtz v1, :cond_15

    .line 772
    :cond_14
    const/4 v1, 0x0

    goto/16 :goto_5

    .line 774
    :cond_15
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v6

    sub-float/2addr v1, v6

    .line 776
    cmpg-float v6, v3, v5

    if-gez v6, :cond_16

    cmpl-float v6, v2, v4

    if-gtz v6, :cond_17

    :cond_16
    cmpg-float v6, v5, v3

    if-gez v6, :cond_1c

    cmpl-float v6, v4, v2

    if-lez v6, :cond_1c

    .line 777
    :cond_17
    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 778
    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 779
    cmpg-float v4, v3, v2

    if-gez v4, :cond_18

    .line 780
    neg-float v4, v11

    .line 781
    neg-float v2, v10

    .line 782
    add-float/2addr v3, v1

    move v1, v2

    move v2, v4

    .line 788
    :goto_d
    cmpg-float v4, v3, v9

    if-gez v4, :cond_1b

    .line 732
    :goto_e
    add-int/lit8 v4, v12, 0x2

    move v12, v4

    move v7, v1

    move v8, v2

    move v9, v3

    goto/16 :goto_8

    .line 784
    :cond_18
    add-float v3, v1, v2

    move v1, v10

    move v2, v11

    goto :goto_d

    .line 796
    :cond_19
    if-eqz p2, :cond_1a

    .line 797
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;->normal:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, v8, v7}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 798
    move-object/from16 v0, p2

    iput v9, v0, Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;->depth:F

    .line 800
    :cond_1a
    const/4 v1, 0x1

    goto/16 :goto_5

    :cond_1b
    move v1, v7

    move v2, v8

    move v3, v9

    goto :goto_e

    :cond_1c
    move v3, v1

    move v2, v11

    move v1, v10

    goto :goto_d

    :cond_1d
    move v1, v7

    move v2, v8

    move v3, v9

    goto/16 :goto_7

    :cond_1e
    move v3, v1

    move v2, v11

    move v1, v10

    goto/16 :goto_6
.end method

.method public static overlapRectangles(Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/math/Rectangle;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 601
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v0, v1

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v0, v1

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 602
    const/4 v0, 0x1

    .line 604
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static pointLineSide(FFFFFF)I
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 108
    sub-float v0, p2, p0

    sub-float v1, p5, p1

    mul-float/2addr v0, v1

    sub-float v1, p3, p1

    sub-float v2, p4, p0

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public static pointLineSide(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)I
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 102
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v0, v1

    iget v1, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v1, v2

    iget v2, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private static splitEdge([FIIILcom/badlogic/gdx/math/Plane;[FI)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 926
    aget v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    aget v1, p0, v1

    add-int/lit8 v2, p1, 0x2

    aget v2, p0, v2

    aget v3, p0, p2

    add-int/lit8 v4, p2, 0x1

    aget v4, p0, v4

    add-int/lit8 v5, p2, 0x2

    aget v5, p0, v5

    sget-object v7, Lcom/badlogic/gdx/math/Intersector;->intersection:Lcom/badlogic/gdx/math/Vector3;

    move-object v6, p4

    invoke-static/range {v0 .. v7}, Lcom/badlogic/gdx/math/Intersector;->intersectLinePlane(FFFFFFLcom/badlogic/gdx/math/Plane;Lcom/badlogic/gdx/math/Vector3;)F

    move-result v1

    .line 929
    add-int/lit8 v0, p6, 0x0

    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->intersection:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v2, p5, v0

    .line 930
    add-int/lit8 v0, p6, 0x1

    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->intersection:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v2, p5, v0

    .line 931
    add-int/lit8 v0, p6, 0x2

    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->intersection:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v2, p5, v0

    .line 932
    const/4 v0, 0x3

    :goto_0
    if-ge v0, p3, :cond_0

    .line 933
    add-int v2, p1, v0

    aget v2, p0, v2

    .line 934
    add-int v3, p2, v0

    aget v3, p0, v3

    .line 935
    add-int v4, p6, v0

    sub-float/2addr v3, v2

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    aput v2, p5, v4

    .line 932
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 937
    :cond_0
    return-void
.end method

.method public static splitTriangle([FLcom/badlogic/gdx/math/Plane;Lcom/badlogic/gdx/math/Intersector$SplitTriangle;)V
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 827
    array-length v0, p0

    div-int/lit8 v2, v0, 0x3

    .line 828
    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x1

    aget v1, p0, v1

    const/4 v3, 0x2

    aget v3, p0, v3

    invoke-virtual {p1, v0, v1, v3}, Lcom/badlogic/gdx/math/Plane;->testPoint(FFF)Lcom/badlogic/gdx/math/Plane$PlaneSide;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/math/Plane$PlaneSide;->Back:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    move v8, v0

    .line 829
    :goto_0
    add-int/lit8 v0, v2, 0x0

    aget v0, p0, v0

    add-int/lit8 v1, v2, 0x1

    aget v1, p0, v1

    add-int/lit8 v3, v2, 0x2

    aget v3, p0, v3

    invoke-virtual {p1, v0, v1, v3}, Lcom/badlogic/gdx/math/Plane;->testPoint(FFF)Lcom/badlogic/gdx/math/Plane$PlaneSide;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/math/Plane$PlaneSide;->Back:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    move v7, v0

    .line 830
    :goto_1
    mul-int/lit8 v0, v2, 0x2

    add-int/lit8 v0, v0, 0x0

    aget v0, p0, v0

    mul-int/lit8 v1, v2, 0x2

    add-int/lit8 v1, v1, 0x1

    aget v1, p0, v1

    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v3, v3, 0x2

    aget v3, p0, v3

    invoke-virtual {p1, v0, v1, v3}, Lcom/badlogic/gdx/math/Plane;->testPoint(FFF)Lcom/badlogic/gdx/math/Plane$PlaneSide;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/math/Plane$PlaneSide;->Back:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    move v9, v0

    .line 832
    :goto_2
    invoke-virtual {p2}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->reset()V

    .line 835
    if-ne v8, v7, :cond_4

    if-ne v7, v9, :cond_4

    .line 836
    const/4 v0, 0x1

    iput v0, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->total:I

    .line 837
    if-eqz v8, :cond_3

    .line 838
    const/4 v0, 0x1

    iput v0, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->numBack:I

    .line 839
    const/4 v0, 0x0

    iget-object v1, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->back:[F

    const/4 v2, 0x0

    array-length v3, p0

    invoke-static {p0, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 922
    :goto_3
    return-void

    .line 828
    :cond_0
    const/4 v0, 0x0

    move v8, v0

    goto :goto_0

    .line 829
    :cond_1
    const/4 v0, 0x0

    move v7, v0

    goto :goto_1

    .line 830
    :cond_2
    const/4 v0, 0x0

    move v9, v0

    goto :goto_2

    .line 841
    :cond_3
    const/4 v0, 0x1

    iput v0, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->numFront:I

    .line 842
    const/4 v0, 0x0

    iget-object v1, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->front:[F

    const/4 v2, 0x0

    array-length v3, p0

    invoke-static {p0, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    .line 848
    :cond_4
    const/4 v0, 0x3

    iput v0, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->total:I

    .line 849
    if-eqz v8, :cond_5

    const/4 v0, 0x1

    move v1, v0

    :goto_4
    if-eqz v7, :cond_6

    const/4 v0, 0x1

    :goto_5
    add-int/2addr v1, v0

    if-eqz v9, :cond_7

    const/4 v0, 0x1

    :goto_6
    add-int/2addr v0, v1

    iput v0, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->numFront:I

    .line 850
    iget v0, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->total:I

    iget v1, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->numFront:I

    sub-int/2addr v0, v1

    iput v0, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->numBack:I

    .line 855
    invoke-virtual {p2, v8}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->setSide(Z)V

    .line 858
    if-eq v8, v7, :cond_9

    .line 862
    const/4 v1, 0x0

    iget-object v5, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->edgeSplit:[F

    const/4 v6, 0x0

    move-object v0, p0

    move v3, v2

    move-object v4, p1

    invoke-static/range {v0 .. v6}, Lcom/badlogic/gdx/math/Intersector;->splitEdge([FIIILcom/badlogic/gdx/math/Plane;[FI)V

    .line 865
    const/4 v0, 0x0

    invoke-virtual {p2, p0, v0, v2}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    .line 866
    iget-object v0, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->edgeSplit:[F

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, v2}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    .line 869
    invoke-virtual {p2}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->getSide()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->setSide(Z)V

    .line 870
    iget-object v0, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->edgeSplit:[F

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, v2}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    .line 877
    :goto_8
    add-int v3, v2, v2

    .line 879
    if-eq v7, v9, :cond_b

    .line 881
    iget-object v6, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->edgeSplit:[F

    const/4 v7, 0x0

    move-object v1, p0

    move v4, v2

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Lcom/badlogic/gdx/math/Intersector;->splitEdge([FIIILcom/badlogic/gdx/math/Plane;[FI)V

    .line 884
    invoke-virtual {p2, p0, v2, v2}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    .line 885
    iget-object v0, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->edgeSplit:[F

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, v2}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    .line 888
    invoke-virtual {p2}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->getSide()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->setSide(Z)V

    .line 889
    iget-object v0, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->edgeSplit:[F

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, v2}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    .line 897
    :goto_a
    if-eq v9, v8, :cond_d

    .line 900
    const/4 v6, 0x0

    iget-object v9, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->edgeSplit:[F

    const/4 v10, 0x0

    move-object v4, p0

    move v5, v3

    move v7, v2

    move-object v8, p1

    invoke-static/range {v4 .. v10}, Lcom/badlogic/gdx/math/Intersector;->splitEdge([FIIILcom/badlogic/gdx/math/Plane;[FI)V

    .line 903
    invoke-virtual {p2, p0, v3, v2}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    .line 904
    iget-object v0, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->edgeSplit:[F

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, v2}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    .line 907
    invoke-virtual {p2}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->getSide()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->setSide(Z)V

    .line 908
    iget-object v0, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->edgeSplit:[F

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, v2}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    .line 915
    :goto_c
    iget v0, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->numFront:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    .line 916
    iget-object v0, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->front:[F

    mul-int/lit8 v1, v2, 0x2

    iget-object v3, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->front:[F

    mul-int/lit8 v4, v2, 0x3

    mul-int/lit8 v5, v2, 0x2

    invoke-static {v0, v1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 917
    iget-object v0, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->front:[F

    const/4 v1, 0x0

    iget-object v3, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->front:[F

    mul-int/lit8 v4, v2, 0x5

    invoke-static {v0, v1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_3

    .line 849
    :cond_5
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_4

    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_5

    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 869
    :cond_8
    const/4 v0, 0x0

    goto :goto_7

    .line 873
    :cond_9
    const/4 v0, 0x0

    invoke-virtual {p2, p0, v0, v2}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    goto :goto_8

    .line 888
    :cond_a
    const/4 v0, 0x0

    goto :goto_9

    .line 892
    :cond_b
    invoke-virtual {p2, p0, v2, v2}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    goto :goto_a

    .line 907
    :cond_c
    const/4 v0, 0x0

    goto :goto_b

    .line 911
    :cond_d
    invoke-virtual {p2, p0, v3, v2}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    goto :goto_c

    .line 919
    :cond_e
    iget-object v0, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->back:[F

    mul-int/lit8 v1, v2, 0x2

    iget-object v3, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->back:[F

    mul-int/lit8 v4, v2, 0x3

    mul-int/lit8 v5, v2, 0x2

    invoke-static {v0, v1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 920
    iget-object v0, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->back:[F

    const/4 v1, 0x0

    iget-object v3, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->back:[F

    mul-int/lit8 v4, v2, 0x5

    invoke-static {v0, v1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_3
.end method
