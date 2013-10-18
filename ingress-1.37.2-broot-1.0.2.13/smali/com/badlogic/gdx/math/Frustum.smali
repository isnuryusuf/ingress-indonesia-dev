.class public Lcom/badlogic/gdx/math/Frustum;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final clipSpacePlanePoints:[Lcom/badlogic/gdx/math/Vector3;

.field protected static final clipSpacePlanePointsArray:[F


# instance fields
.field public final planePoints:[Lcom/badlogic/gdx/math/Vector3;

.field protected final planePointsArray:[F

.field public final planes:[Lcom/badlogic/gdx/math/Plane;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/high16 v5, 0x3f80

    const/high16 v4, -0x4080

    .line 25
    const/16 v1, 0x8

    new-array v1, v1, [Lcom/badlogic/gdx/math/Vector3;

    new-instance v2, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v2, v4, v4, v4}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    aput-object v2, v1, v0

    const/4 v2, 0x1

    new-instance v3, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v3, v5, v4, v4}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v3, v5, v5, v4}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v3, v4, v5, v4}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v3, v4, v4, v5}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-instance v3, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v3, v5, v4, v5}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-instance v3, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v3, v5, v5, v5}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-instance v3, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v3, v4, v5, v5}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    aput-object v3, v1, v2

    sput-object v1, Lcom/badlogic/gdx/math/Frustum;->clipSpacePlanePoints:[Lcom/badlogic/gdx/math/Vector3;

    .line 28
    const/16 v1, 0x18

    new-array v1, v1, [F

    sput-object v1, Lcom/badlogic/gdx/math/Frustum;->clipSpacePlanePointsArray:[F

    .line 32
    sget-object v2, Lcom/badlogic/gdx/math/Frustum;->clipSpacePlanePoints:[Lcom/badlogic/gdx/math/Vector3;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 33
    sget-object v5, Lcom/badlogic/gdx/math/Frustum;->clipSpacePlanePointsArray:[F

    add-int/lit8 v6, v1, 0x1

    iget v7, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v7, v5, v1

    .line 34
    sget-object v1, Lcom/badlogic/gdx/math/Frustum;->clipSpacePlanePointsArray:[F

    add-int/lit8 v5, v6, 0x1

    iget v7, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v7, v1, v6

    .line 35
    sget-object v6, Lcom/badlogic/gdx/math/Frustum;->clipSpacePlanePointsArray:[F

    add-int/lit8 v1, v5, 0x1

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v4, v6, v5

    .line 32
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 37
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x6

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-array v1, v5, [Lcom/badlogic/gdx/math/Plane;

    iput-object v1, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    .line 43
    const/16 v1, 0x8

    new-array v1, v1, [Lcom/badlogic/gdx/math/Vector3;

    new-instance v2, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    aput-object v2, v1, v0

    const/4 v2, 0x1

    new-instance v3, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v3}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v3}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v3}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v3}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-instance v3, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v3}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    aput-object v3, v1, v2

    new-instance v2, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    aput-object v2, v1, v5

    const/4 v2, 0x7

    new-instance v3, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v3}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/badlogic/gdx/math/Frustum;->planePoints:[Lcom/badlogic/gdx/math/Vector3;

    .line 45
    const/16 v1, 0x18

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/badlogic/gdx/math/Frustum;->planePointsArray:[F

    .line 48
    :goto_0
    if-ge v0, v5, :cond_0

    .line 49
    iget-object v1, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    new-instance v2, Lcom/badlogic/gdx/math/Plane;

    new-instance v3, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v3}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/badlogic/gdx/math/Plane;-><init>(Lcom/badlogic/gdx/math/Vector3;F)V

    aput-object v2, v1, v0

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_0
    return-void
.end method


# virtual methods
.method public boundsInFrustum(Lcom/badlogic/gdx/math/collision/BoundingBox;)Z
    .locals 9
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 126
    invoke-virtual {p1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getCorners()[Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    .line 127
    array-length v5, v4

    .line 129
    iget-object v0, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    array-length v6, v0

    move v3, v1

    :goto_0
    if-ge v3, v6, :cond_3

    move v2, v1

    move v0, v1

    .line 132
    :goto_1
    if-ge v2, v5, :cond_1

    .line 133
    iget-object v7, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    aget-object v7, v7, v3

    aget-object v8, v4, v2

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/math/Plane;->testPoint(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Plane$PlaneSide;

    move-result-object v7

    sget-object v8, Lcom/badlogic/gdx/math/Plane$PlaneSide;->Back:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    if-ne v7, v8, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 132
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 135
    :cond_1
    const/16 v2, 0x8

    if-ne v0, v2, :cond_2

    move v0, v1

    .line 138
    :goto_2
    return v0

    .line 129
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 138
    :cond_3
    const/4 v0, 0x1

    goto :goto_2
.end method

.method public pointInFrustum(Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 79
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 80
    iget-object v2, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/math/Plane;->testPoint(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Plane$PlaneSide;

    move-result-object v2

    .line 81
    sget-object v3, Lcom/badlogic/gdx/math/Plane$PlaneSide;->Back:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    if-ne v2, v3, :cond_0

    .line 83
    :goto_1
    return v1

    .line 79
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public sphereInFrustum(Lcom/badlogic/gdx/math/Vector3;F)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 96
    move v1, v0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    .line 97
    iget-object v2, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v4, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v4, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    neg-float v3, p2

    iget-object v4, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/badlogic/gdx/math/Plane;->d:F

    sub-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 100
    :goto_1
    return v0

    .line 96
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 100
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public sphereInFrustumWithoutNearFar(Lcom/badlogic/gdx/math/Vector3;F)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 114
    const/4 v0, 0x2

    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    .line 115
    iget-object v1, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    neg-float v2, p2

    iget-object v3, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/badlogic/gdx/math/Plane;->d:F

    sub-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 117
    const/4 v0, 0x0

    .line 118
    :goto_1
    return v0

    .line 114
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public update(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 57
    sget-object v0, Lcom/badlogic/gdx/math/Frustum;->clipSpacePlanePointsArray:[F

    iget-object v2, p0, Lcom/badlogic/gdx/math/Frustum;->planePointsArray:[F

    sget-object v3, Lcom/badlogic/gdx/math/Frustum;->clipSpacePlanePointsArray:[F

    array-length v3, v3

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    iget-object v0, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v2, p0, Lcom/badlogic/gdx/math/Frustum;->planePointsArray:[F

    const/16 v3, 0x8

    invoke-static {v0, v2, v1, v3, v7}, Lcom/badlogic/gdx/math/Matrix4;->prj([F[FIII)V

    move v0, v1

    move v2, v1

    .line 59
    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    .line 60
    iget-object v3, p0, Lcom/badlogic/gdx/math/Frustum;->planePoints:[Lcom/badlogic/gdx/math/Vector3;

    aget-object v3, v3, v2

    .line 61
    iget-object v4, p0, Lcom/badlogic/gdx/math/Frustum;->planePointsArray:[F

    add-int/lit8 v5, v0, 0x1

    aget v0, v4, v0

    iput v0, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 62
    iget-object v0, p0, Lcom/badlogic/gdx/math/Frustum;->planePointsArray:[F

    add-int/lit8 v4, v5, 0x1

    aget v0, v0, v5

    iput v0, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 63
    iget-object v5, p0, Lcom/badlogic/gdx/math/Frustum;->planePointsArray:[F

    add-int/lit8 v0, v4, 0x1

    aget v4, v5, v4

    iput v4, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    .line 59
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/badlogic/gdx/math/Frustum;->planePoints:[Lcom/badlogic/gdx/math/Vector3;

    aget-object v2, v2, v6

    iget-object v3, p0, Lcom/badlogic/gdx/math/Frustum;->planePoints:[Lcom/badlogic/gdx/math/Vector3;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/badlogic/gdx/math/Frustum;->planePoints:[Lcom/badlogic/gdx/math/Vector3;

    aget-object v4, v4, v9

    invoke-virtual {v0, v2, v3, v4}, Lcom/badlogic/gdx/math/Plane;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    .line 67
    iget-object v0, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    aget-object v0, v0, v6

    iget-object v2, p0, Lcom/badlogic/gdx/math/Frustum;->planePoints:[Lcom/badlogic/gdx/math/Vector3;

    aget-object v2, v2, v8

    iget-object v3, p0, Lcom/badlogic/gdx/math/Frustum;->planePoints:[Lcom/badlogic/gdx/math/Vector3;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Frustum;->planePoints:[Lcom/badlogic/gdx/math/Vector3;

    const/4 v5, 0x7

    aget-object v4, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Lcom/badlogic/gdx/math/Plane;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    .line 68
    iget-object v0, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    aget-object v0, v0, v9

    iget-object v2, p0, Lcom/badlogic/gdx/math/Frustum;->planePoints:[Lcom/badlogic/gdx/math/Vector3;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/badlogic/gdx/math/Frustum;->planePoints:[Lcom/badlogic/gdx/math/Vector3;

    aget-object v3, v3, v8

    iget-object v4, p0, Lcom/badlogic/gdx/math/Frustum;->planePoints:[Lcom/badlogic/gdx/math/Vector3;

    aget-object v4, v4, v7

    invoke-virtual {v0, v2, v3, v4}, Lcom/badlogic/gdx/math/Plane;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    .line 69
    iget-object v0, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    aget-object v0, v0, v7

    iget-object v2, p0, Lcom/badlogic/gdx/math/Frustum;->planePoints:[Lcom/badlogic/gdx/math/Vector3;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Frustum;->planePoints:[Lcom/badlogic/gdx/math/Vector3;

    aget-object v3, v3, v6

    iget-object v4, p0, Lcom/badlogic/gdx/math/Frustum;->planePoints:[Lcom/badlogic/gdx/math/Vector3;

    const/4 v5, 0x6

    aget-object v4, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Lcom/badlogic/gdx/math/Plane;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    .line 70
    iget-object v0, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    aget-object v0, v0, v8

    iget-object v2, p0, Lcom/badlogic/gdx/math/Frustum;->planePoints:[Lcom/badlogic/gdx/math/Vector3;

    aget-object v2, v2, v9

    iget-object v3, p0, Lcom/badlogic/gdx/math/Frustum;->planePoints:[Lcom/badlogic/gdx/math/Vector3;

    aget-object v3, v3, v7

    iget-object v4, p0, Lcom/badlogic/gdx/math/Frustum;->planePoints:[Lcom/badlogic/gdx/math/Vector3;

    const/4 v5, 0x6

    aget-object v4, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Lcom/badlogic/gdx/math/Plane;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    .line 71
    iget-object v0, p0, Lcom/badlogic/gdx/math/Frustum;->planes:[Lcom/badlogic/gdx/math/Plane;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Frustum;->planePoints:[Lcom/badlogic/gdx/math/Vector3;

    aget-object v2, v2, v8

    iget-object v3, p0, Lcom/badlogic/gdx/math/Frustum;->planePoints:[Lcom/badlogic/gdx/math/Vector3;

    aget-object v1, v3, v1

    iget-object v3, p0, Lcom/badlogic/gdx/math/Frustum;->planePoints:[Lcom/badlogic/gdx/math/Vector3;

    aget-object v3, v3, v6

    invoke-virtual {v0, v2, v1, v3}, Lcom/badlogic/gdx/math/Plane;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    .line 72
    return-void
.end method
