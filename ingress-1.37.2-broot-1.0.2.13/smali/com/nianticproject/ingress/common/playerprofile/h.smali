.class final Lcom/nianticproject/ingress/common/playerprofile/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/ui/widget/bb;


# instance fields
.field private final a:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

.field private final b:Lcom/nianticproject/ingress/common/j/av;

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nianticproject/ingress/common/playerprofile/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/nianticproject/ingress/common/j/av;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Lcom/google/a/c/eq;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/h;->c:Ljava/util/ArrayList;

    .line 31
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/h;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .line 32
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/j/av;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/h;->b:Lcom/nianticproject/ingress/common/j/av;

    .line 33
    return-void
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/scenes/scene2d/Actor;)I
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/h;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final a(I)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/h;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public final a(Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 63
    if-nez p1, :cond_0

    move-object v0, v1

    .line 73
    :goto_0
    return-object v0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/h;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/playerprofile/g;

    .line 68
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/playerprofile/g;->a()Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 73
    goto :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/h;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 37
    if-nez p1, :cond_1

    .line 45
    :cond_0
    return-void

    .line 41
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;

    .line 42
    new-instance v2, Lcom/nianticproject/ingress/common/playerprofile/g;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/playerprofile/h;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/playerprofile/h;->b:Lcom/nianticproject/ingress/common/j/av;

    invoke-direct {v2, v3, v4, v0}, Lcom/nianticproject/ingress/common/playerprofile/g;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/nianticproject/ingress/common/j/av;Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;)V

    .line 43
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/h;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/h;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
