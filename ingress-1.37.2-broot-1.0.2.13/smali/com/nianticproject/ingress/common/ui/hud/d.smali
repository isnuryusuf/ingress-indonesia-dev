.class public final Lcom/nianticproject/ingress/common/ui/hud/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/badlogic/gdx/scenes/scene2d/Stage;Lcom/badlogic/gdx/math/Rectangle;)Lcom/badlogic/gdx/math/Rectangle;
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 32
    iget v0, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    invoke-static {p0, v0, v1}, Lcom/nianticproject/ingress/common/ui/hud/d;->a(Lcom/badlogic/gdx/scenes/scene2d/Stage;FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    .line 33
    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v1, v2

    iget v2, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v3, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v2, v3

    invoke-static {p0, v1, v2}, Lcom/nianticproject/ingress/common/ui/hud/d;->a(Lcom/badlogic/gdx/scenes/scene2d/Stage;FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    .line 35
    new-instance v2, Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v5, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v6, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v5, v6

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v0, v1, v0

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    return-object v2
.end method

.method private static a(Lcom/badlogic/gdx/scenes/scene2d/Stage;FF)Lcom/badlogic/gdx/math/Vector2;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f80

    sub-float/2addr v2, p2

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    .line 24
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->screenToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)V

    .line 25
    return-object v0
.end method
