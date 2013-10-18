.class final Lcom/nianticproject/ingress/common/playerprofile/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/ui/widget/bc;


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/playerprofile/f;

.field private b:Lcom/nianticproject/ingress/common/playerprofile/g;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/playerprofile/f;)V
    .locals 1
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/e;->b:Lcom/nianticproject/ingress/common/playerprofile/g;

    .line 37
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/playerprofile/f;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/e;->a:Lcom/nianticproject/ingress/common/playerprofile/f;

    .line 38
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public final a(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 43
    check-cast p1, Lcom/nianticproject/ingress/common/playerprofile/g;

    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/playerprofile/g;->b()V

    .line 45
    :cond_0
    return-void
.end method

.method public final b(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 3
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/e;->b:Lcom/nianticproject/ingress/common/playerprofile/g;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/e;->b:Lcom/nianticproject/ingress/common/playerprofile/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/playerprofile/g;->a(Z)V

    .line 53
    :cond_0
    check-cast p1, Lcom/nianticproject/ingress/common/playerprofile/g;

    iput-object p1, p0, Lcom/nianticproject/ingress/common/playerprofile/e;->b:Lcom/nianticproject/ingress/common/playerprofile/g;

    .line 54
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/e;->b:Lcom/nianticproject/ingress/common/playerprofile/g;

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/e;->b:Lcom/nianticproject/ingress/common/playerprofile/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/playerprofile/g;->a(Z)V

    .line 56
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/e;->b:Lcom/nianticproject/ingress/common/playerprofile/g;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/playerprofile/g;->a()Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/e;->a:Lcom/nianticproject/ingress/common/playerprofile/f;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;->c()Lcom/nianticproject/ingress/shared/playerprofile/a;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/nianticproject/ingress/common/playerprofile/f;->a(Lcom/nianticproject/ingress/shared/playerprofile/a;Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;)V

    .line 59
    :cond_1
    return-void
.end method

.method public final c(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    return-void
.end method
