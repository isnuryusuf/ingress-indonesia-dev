.class public final Lcom/nianticproject/ingress/common/ui/elements/bo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/ui/ac;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Z

.field private final d:Lcom/nianticproject/ingress/common/scanner/k;

.field private e:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field private f:Ljava/lang/String;

.field private final g:D


# direct methods
.method public constructor <init>(IZLcom/nianticproject/ingress/common/scanner/k;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/bo;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    .line 31
    const-wide/high16 v0, 0x4130

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/ui/elements/bo;->g:D

    .line 37
    const/4 v0, 0x1

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/elements/bo;->a:I

    .line 38
    iput p1, p0, Lcom/nianticproject/ingress/common/ui/elements/bo;->b:I

    .line 39
    iput-boolean p2, p0, Lcom/nianticproject/ingress/common/ui/elements/bo;->c:Z

    .line 40
    invoke-static {p3}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/k;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/bo;->d:Lcom/nianticproject/ingress/common/scanner/k;

    .line 41
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/bo;->f:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/elements/bo;->c:Z

    if-eqz v0, :cond_0

    .line 73
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string/jumbo v2, ""

    const-string/jumbo v0, "jarvis-terminal"

    const-class v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p1, v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/bo;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    .line 77
    :goto_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/bo;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget v1, p0, Lcom/nianticproject/ingress/common/ui/elements/bo;->a:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setX(F)V

    .line 78
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/bo;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget v1, p0, Lcom/nianticproject/ingress/common/ui/elements/bo;->b:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/elements/bo;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getPrefHeight()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setY(F)V

    .line 79
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/bo;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 80
    return-void

    .line 75
    :cond_0
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string/jumbo v2, ""

    const-string/jumbo v0, "small"

    const-class v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p1, v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/bo;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/elements/bo;->f:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public final a(F)Z
    .locals 9
    .parameter

    .prologue
    const/4 v1, 0x0

    const-wide/high16 v7, 0x4130

    const/4 v2, 0x1

    .line 47
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/elements/bo;->c:Z

    if-eqz v0, :cond_2

    .line 48
    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->u()Lcom/nianticproject/ingress/common/ui/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/e;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v3}, Lcom/badlogic/gdx/Graphics;->getFramesPerSecond()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "fps "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/elements/bo;->f:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    :goto_0
    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/elements/bo;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/elements/bo;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/elements/bo;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/bo;->d:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/k;->v()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    move v0, v2

    :goto_1
    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setVisible(Z)V

    .line 67
    return v2

    .line 53
    :cond_1
    const-string/jumbo v0, "%2dfps %s\n%3.1fJMb %3.1fNMb %s"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v4}, Lcom/badlogic/gdx/Graphics;->getFramesPerSecond()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    iget-object v4, p0, Lcom/nianticproject/ingress/common/ui/elements/bo;->f:Ljava/lang/String;

    aput-object v4, v3, v2

    const/4 v4, 0x2

    sget-object v5, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v5}, Lcom/badlogic/gdx/Application;->getJavaHeap()J

    move-result-wide v5

    long-to-double v5, v5

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    sget-object v5, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v5}, Lcom/badlogic/gdx/Application;->getNativeHeap()J

    move-result-wide v5

    long-to-double v5, v5

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static {}, Lcom/nianticproject/ingress/common/f/a;->b()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 61
    :cond_2
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/bo;->f:Ljava/lang/String;

    goto :goto_0

    :cond_3
    move v0, v1

    .line 66
    goto :goto_1
.end method

.method public final dispose()V
    .locals 0

    .prologue
    .line 84
    return-void
.end method
