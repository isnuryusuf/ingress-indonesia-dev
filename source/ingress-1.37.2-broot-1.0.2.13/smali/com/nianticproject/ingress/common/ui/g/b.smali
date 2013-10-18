.class final Lcom/nianticproject/ingress/common/ui/g/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/ui/g/a;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/ui/g/h;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator;

    invoke-direct {v0, p2}, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    .line 25
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator;->a(Z)V

    .line 27
    invoke-virtual {p1, v0}, Lcom/nianticproject/ingress/common/ui/g/h;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->i()Lcom/a/a/c;

    .line 29
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/ui/g/h;->row()Lcom/a/a/c;

    .line 30
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string/jumbo v1, "Loading..."

    invoke-direct {v0, v1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    invoke-virtual {p1, v0}, Lcom/nianticproject/ingress/common/ui/g/h;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    .line 31
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 47
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method public final d()V
    .locals 0

    .prologue
    .line 43
    return-void
.end method
