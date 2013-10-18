.class final Lcom/nianticproject/ingress/common/missions/a/h;
.super Lcom/nianticproject/ingress/common/ui/elements/a;
.source "SourceFile"


# instance fields
.field a:Lcom/nianticproject/ingress/common/ui/widget/ActionButton;

.field private b:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/elements/a;-><init>()V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 4

    .prologue
    .line 47
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/h;->a:Lcom/nianticproject/ingress/common/ui/widget/ActionButton;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;->b()Lcom/nianticproject/ingress/common/ui/widget/c;

    move-result-object v0

    const/4 v1, 0x1

    const-string/jumbo v2, "CHOOSE"

    const-string/jumbo v3, ""

    invoke-interface {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/ui/widget/c;->a(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method final a(Lcom/nianticproject/ingress/common/ui/widget/z;)V
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/h;->a:Lcom/nianticproject/ingress/common/ui/widget/ActionButton;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;->a(Lcom/nianticproject/ingress/common/ui/widget/z;)V

    .line 60
    return-void
.end method

.method final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/nianticproject/ingress/common/missions/a/h;->b:Z

    .line 56
    return-void
.end method

.method public final a(F)Z
    .locals 2
    .parameter

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/missions/a/h;->b:Z

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/a/h;->a:Lcom/nianticproject/ingress/common/ui/widget/ActionButton;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;->isVisible()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 41
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/h;->a:Lcom/nianticproject/ingress/common/ui/widget/ActionButton;

    iget-boolean v1, p0, Lcom/nianticproject/ingress/common/missions/a/h;->b:Z

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;->setVisible(Z)V

    .line 43
    :cond_0
    invoke-super {p0, p1}, Lcom/nianticproject/ingress/common/ui/elements/a;->a(F)Z

    move-result v0

    return v0
.end method

.method protected final b(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 25
    new-instance v0, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;

    const-string/jumbo v1, "CHOOSE"

    const-string/jumbo v2, ""

    invoke-direct {v0, v1, v2, p1}, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/h;->a:Lcom/nianticproject/ingress/common/ui/widget/ActionButton;

    .line 26
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/h;->a:Lcom/nianticproject/ingress/common/ui/widget/ActionButton;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;->b()Lcom/nianticproject/ingress/common/ui/widget/c;

    move-result-object v0

    const-string/jumbo v1, "Tag Portal\nlocation"

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/c;->a(Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/h;->a:Lcom/nianticproject/ingress/common/ui/widget/ActionButton;

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v1

    const/high16 v2, 0x3e80

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;->setWidth(F)V

    .line 29
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/h;->a:Lcom/nianticproject/ingress/common/ui/widget/ActionButton;

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v1

    const v2, 0x3dcccccd

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;->setHeight(F)V

    .line 30
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/h;->a:Lcom/nianticproject/ingress/common/ui/widget/ActionButton;

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v1

    const v2, 0x3d4ccccd

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;->setX(F)V

    .line 31
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/h;->a:Lcom/nianticproject/ingress/common/ui/widget/ActionButton;

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v1

    const v2, 0x3f333333

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;->setY(F)V

    .line 33
    iput-boolean v3, p0, Lcom/nianticproject/ingress/common/missions/a/h;->b:Z

    .line 34
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/h;->a:Lcom/nianticproject/ingress/common/ui/widget/ActionButton;

    invoke-virtual {v0, v3}, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;->setVisible(Z)V

    .line 35
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/h;->a:Lcom/nianticproject/ingress/common/ui/widget/ActionButton;

    return-object v0
.end method
