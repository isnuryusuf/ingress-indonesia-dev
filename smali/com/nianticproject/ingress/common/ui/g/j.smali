.class final Lcom/nianticproject/ingress/common/ui/g/j;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/nianticproject/ingress/shared/n;)Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 25
    if-nez p1, :cond_0

    const-string/jumbo v0, "inventory-card"

    .line 26
    :goto_0
    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    return-object v0

    .line 25
    :cond_0
    const-string/jumbo v0, "inventory-card-disabled"

    goto :goto_0
.end method
