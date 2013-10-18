.class public final Lcom/nianticproject/ingress/common/ui/widget/bd;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static varargs a([Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;
    .locals 4
    .parameter

    .prologue
    .line 18
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;-><init>()V

    .line 19
    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p0, v0

    .line 20
    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 19
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 22
    :cond_0
    return-object v1
.end method
