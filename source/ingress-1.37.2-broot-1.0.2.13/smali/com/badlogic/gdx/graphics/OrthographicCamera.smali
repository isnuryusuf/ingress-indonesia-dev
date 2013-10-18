.class public Lcom/badlogic/gdx/graphics/OrthographicCamera;
.super Lcom/badlogic/gdx/graphics/Camera;
.source "SourceFile"


# instance fields
.field private final tmp:Lcom/badlogic/gdx/math/Vector3;

.field public zoom:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/Camera;-><init>()V

    .line 29
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->zoom:F

    .line 108
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->tmp:Lcom/badlogic/gdx/math/Vector3;

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->near:F

    .line 33
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/Camera;-><init>()V

    .line 29
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->zoom:F

    .line 108
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->tmp:Lcom/badlogic/gdx/math/Vector3;

    .line 41
    iput p1, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->viewportWidth:F

    .line 42
    iput p2, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->viewportHeight:F

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->near:F

    .line 44
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->update()V

    .line 45
    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/Camera;-><init>()V

    .line 29
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->zoom:F

    .line 108
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->tmp:Lcom/badlogic/gdx/math/Vector3;

    .line 54
    iput p1, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->viewportWidth:F

    .line 55
    iput p2, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->viewportHeight:F

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->near:F

    .line 57
    const v0, 0x322bcc77

    const/16 v1, 0x14

    invoke-virtual {p0, p3, v0, v1}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->findDirectionForIsoView(FFI)V

    .line 58
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->update()V

    .line 59
    return-void
.end method

.method private calculateAngle(F)F
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 85
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->calculateDirection(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->position:Lcom/badlogic/gdx/math/Vector3;

    const/high16 v2, 0x41f0

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 87
    invoke-virtual {p0, v3, v3, v3}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->lookAt(FFF)V

    .line 88
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->normalizeUp()V

    .line 89
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->update()V

    .line 91
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0, v3, v3, v3}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    .line 92
    new-instance v1, Lcom/badlogic/gdx/math/Vector3;

    const/high16 v2, 0x3f80

    invoke-direct {v1, v2, v3, v3}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    .line 93
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->project(Lcom/badlogic/gdx/math/Vector3;)V

    .line 94
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->project(Lcom/badlogic/gdx/math/Vector3;)V

    .line 95
    new-instance v2, Lcom/badlogic/gdx/math/Vector2;

    iget v3, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v4, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v3, v4

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float v0, v1, v0

    neg-float v0, v0

    invoke-direct {v2, v3, v0}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    .line 96
    invoke-virtual {v2}, Lcom/badlogic/gdx/math/Vector2;->angle()F

    move-result v0

    return v0
.end method

.method private calculateDirection(F)Lcom/badlogic/gdx/math/Vector3;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x3f80

    .line 100
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    .line 101
    new-instance v1, Lcom/badlogic/gdx/math/Vector3;

    const/high16 v2, -0x4080

    invoke-direct {v1, v2, v5, v4}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    .line 102
    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    .line 103
    new-instance v2, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v2, v4, v5, v4}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    invoke-virtual {v2}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lcom/badlogic/gdx/math/Matrix4;->setToRotation(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Matrix4;

    .line 104
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 105
    return-object v1
.end method


# virtual methods
.method public findDirectionForIsoView(FFI)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v0, 0x40a0

    const/4 v1, 0x0

    .line 62
    sub-float v3, p1, v0

    .line 63
    add-float v2, p1, v0

    .line 66
    const/4 v0, 0x0

    move v4, p1

    move v5, v2

    move v6, v3

    move v2, v0

    move v0, v1

    .line 68
    :goto_0
    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, p2

    if-lez v0, :cond_1

    add-int/lit8 v3, v2, 0x1

    if-ge v2, p3, :cond_1

    .line 69
    invoke-direct {p0, v4}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->calculateAngle(F)F

    move-result v0

    .line 71
    cmpg-float v2, p1, v0

    if-gez v2, :cond_0

    move v5, v6

    .line 76
    :goto_1
    sub-float v2, v4, v5

    const/high16 v6, 0x4000

    div-float/2addr v2, v6

    add-float/2addr v2, v5

    move v6, v5

    move v5, v4

    move v4, v2

    move v2, v3

    goto :goto_0

    :cond_0
    move v7, v5

    move v5, v4

    move v4, v7

    .line 74
    goto :goto_1

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {p0, v4}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->calculateDirection(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 79
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    neg-float v2, v2

    iput v2, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 80
    invoke-virtual {p0, v1, v1, v1}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->lookAt(FFF)V

    .line 81
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->normalizeUp()V

    .line 82
    return-void
.end method

.method public rotate(F)V
    .locals 1
    .parameter

    .prologue
    .line 165
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, v0, p1}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->rotate(Lcom/badlogic/gdx/math/Vector3;F)V

    .line 166
    return-void
.end method

.method public setToOrtho(Z)V
    .locals 2
    .parameter

    .prologue
    .line 141
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->setToOrtho(ZFF)V

    .line 142
    return-void
.end method

.method public setToOrtho(ZFF)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v4, 0x4000

    const/4 v3, 0x0

    .line 150
    if-eqz p1, :cond_0

    .line 151
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->up:Lcom/badlogic/gdx/math/Vector3;

    const/high16 v1, -0x4080

    invoke-virtual {v0, v3, v1, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 152
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->direction:Lcom/badlogic/gdx/math/Vector3;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v3, v3, v1}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v1, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->zoom:F

    mul-float/2addr v1, p2

    div-float/2addr v1, v4

    iget v2, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->zoom:F

    mul-float/2addr v2, p3

    div-float/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 155
    iput p2, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->viewportWidth:F

    .line 156
    iput p3, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->viewportHeight:F

    .line 157
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->update()V

    .line 158
    return-void
.end method

.method public translate(FF)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 172
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->translate(FFF)V

    .line 173
    return-void
.end method

.method public translate(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 3
    .parameter

    .prologue
    .line 178
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->translate(FFF)V

    .line 179
    return-void
.end method

.method public update()V
    .locals 7

    .prologue
    const/high16 v6, 0x4000

    .line 112
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->projection:Lcom/badlogic/gdx/math/Matrix4;

    iget v1, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->zoom:F

    iget v2, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->viewportWidth:F

    neg-float v2, v2

    mul-float/2addr v1, v2

    div-float/2addr v1, v6

    iget v2, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->zoom:F

    iget v3, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->viewportWidth:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v6

    iget v3, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->zoom:F

    iget v4, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->viewportHeight:F

    neg-float v4, v4

    mul-float/2addr v3, v4

    div-float/2addr v3, v6

    iget v4, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->zoom:F

    iget v5, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->viewportHeight:F

    mul-float/2addr v4, v5

    div-float/2addr v4, v6

    iget v5, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->near:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->far:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/math/Matrix4;->setToOrtho(FFFFFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 114
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->view:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->up:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Matrix4;->setToLookAt(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;

    .line 115
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->projection:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 116
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v0, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->view:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, v1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    invoke-static {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->mul([F[F)V

    .line 117
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->invProjectionView:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 118
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->invProjectionView:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v0, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    invoke-static {v0}, Lcom/badlogic/gdx/math/Matrix4;->inv([F)Z

    .line 119
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->frustum:Lcom/badlogic/gdx/math/Frustum;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->invProjectionView:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Frustum;->update(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 120
    return-void
.end method

.method public update(Z)V
    .locals 7
    .parameter

    .prologue
    const/high16 v6, 0x4000

    .line 124
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->projection:Lcom/badlogic/gdx/math/Matrix4;

    iget v1, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->zoom:F

    iget v2, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->viewportWidth:F

    neg-float v2, v2

    mul-float/2addr v1, v2

    div-float/2addr v1, v6

    iget v2, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->zoom:F

    iget v3, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->viewportWidth:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v6

    iget v3, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->zoom:F

    iget v4, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->viewportHeight:F

    neg-float v4, v4

    mul-float/2addr v3, v4

    div-float/2addr v3, v6

    iget v4, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->zoom:F

    iget v5, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->viewportHeight:F

    mul-float/2addr v4, v5

    div-float/2addr v4, v6

    iget v5, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->near:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->far:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/math/Matrix4;->setToOrtho(FFFFFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 126
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->view:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->up:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Matrix4;->setToLookAt(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;

    .line 127
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->projection:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 128
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v0, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->view:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, v1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    invoke-static {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->mul([F[F)V

    .line 130
    if-eqz p1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->invProjectionView:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 132
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->invProjectionView:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v0, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    invoke-static {v0}, Lcom/badlogic/gdx/math/Matrix4;->inv([F)Z

    .line 133
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->frustum:Lcom/badlogic/gdx/math/Frustum;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->invProjectionView:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Frustum;->update(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 135
    :cond_0
    return-void
.end method
