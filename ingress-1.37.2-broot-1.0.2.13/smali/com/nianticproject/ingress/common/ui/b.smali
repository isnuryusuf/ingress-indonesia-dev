.class public final Lcom/nianticproject/ingress/common/ui/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/math/Vector2;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 19
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v2

    .line 20
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getX()F

    move-result v0

    add-float v1, v0, v3

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY()F

    move-result v0

    add-float/2addr v0, v3

    .line 21
    :goto_0
    if-eqz v2, :cond_1

    .line 22
    instance-of v3, v2, Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v3, :cond_0

    .line 23
    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getX()F

    move-result v3

    add-float/2addr v1, v3

    .line 24
    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY()F

    move-result v3

    add-float/2addr v0, v3

    .line 26
    :cond_0
    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v2

    goto :goto_0

    .line 28
    :cond_1
    new-instance v2, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v2, v1, v0}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    return-object v2
.end method
