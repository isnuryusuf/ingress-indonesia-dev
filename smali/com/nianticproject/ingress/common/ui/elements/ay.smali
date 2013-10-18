.class public final Lcom/nianticproject/ingress/common/ui/elements/ay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/ui/ac;


# instance fields
.field private a:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field private b:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/high16 v3, 0x3f80

    .line 27
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    const-string/jumbo v0, "tiny"

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p1, v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    .line 28
    iget-object v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->fontColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v3, v3, v3, v3}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)V

    .line 29
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string/jumbo v2, ""

    invoke-direct {v0, v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/ay;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    .line 30
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/ay;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v1, 0x40a0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setX(F)V

    .line 31
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/ay;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v1

    const v2, 0x3f333333

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setY(F)V

    .line 32
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/ay;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    .line 33
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/ay;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 35
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/nianticproject/ingress/common/t/c;->a(Z)V

    .line 36
    return-void
.end method

.method public final a(F)Z
    .locals 2
    .parameter

    .prologue
    .line 40
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/elements/ay;->b:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/elements/ay;->b:F

    .line 41
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/elements/ay;->b:F

    const/high16 v1, 0x3e80

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/ay;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-static {}, Lcom/nianticproject/ingress/common/t/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/elements/ay;->b:F

    .line 45
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final dispose()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/nianticproject/ingress/common/t/c;->a(Z)V

    .line 51
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/ay;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->remove()Z

    .line 52
    return-void
.end method
