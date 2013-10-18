.class public Lcom/badlogic/gdx/physics/box2d/Transform;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final COS:I = 0x2

.field public static final POS_X:I = 0x0

.field public static final POS_Y:I = 0x1

.field public static final SIN:I = 0x3


# instance fields
.field private position:Lcom/badlogic/gdx/math/Vector2;

.field public vals:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Transform;->vals:[F

    .line 32
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Transform;->position:Lcom/badlogic/gdx/math/Vector2;

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Vector2;F)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Transform;->vals:[F

    .line 32
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Transform;->position:Lcom/badlogic/gdx/math/Vector2;

    .line 42
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/physics/box2d/Transform;->setPosition(Lcom/badlogic/gdx/math/Vector2;)V

    .line 43
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/physics/box2d/Transform;->setRotation(F)V

    .line 44
    return-void
.end method


# virtual methods
.method public getPosition()Lcom/badlogic/gdx/math/Vector2;
    .locals 4

    .prologue
    .line 59
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Transform;->position:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Transform;->vals:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/Transform;->vals:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public getRotation()F
    .locals 4

    .prologue
    .line 71
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Transform;->vals:[F

    const/4 v1, 0x3

    aget v0, v0, v1

    float-to-double v0, v0

    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/Transform;->vals:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public mul(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x3

    const/4 v4, 0x2

    .line 49
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Transform;->vals:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Transform;->vals:[F

    aget v1, v1, v4

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Transform;->vals:[F

    aget v1, v1, v3

    neg-float v1, v1

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 50
    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Transform;->vals:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/Transform;->vals:[F

    aget v2, v2, v3

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/Transform;->vals:[F

    aget v2, v2, v4

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 52
    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 53
    iput v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 54
    return-object p1
.end method

.method public setPosition(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 3
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Transform;->vals:[F

    const/4 v1, 0x0

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v2, v0, v1

    .line 78
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Transform;->vals:[F

    const/4 v1, 0x1

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v2, v0, v1

    .line 79
    return-void
.end method

.method public setRotation(F)V
    .locals 4
    .parameter

    .prologue
    .line 65
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 66
    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/Transform;->vals:[F

    const/4 v3, 0x2

    aput v0, v2, v3

    .line 67
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Transform;->vals:[F

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 68
    return-void
.end method
