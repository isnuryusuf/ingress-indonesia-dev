.class public Lcom/nianticproject/ingress/common/ui/widget/m;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Button;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/ui/widget/p;


# instance fields
.field protected final a:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field protected final b:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field private final c:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

.field private final d:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 60
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_0

    move-object v0, p1

    :goto_0
    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    .line 40
    iput-boolean v1, p0, Lcom/nianticproject/ingress/common/ui/widget/m;->e:Z

    .line 61
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/m;->b:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 62
    iput-object p2, p0, Lcom/nianticproject/ingress/common/ui/widget/m;->a:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 63
    invoke-static {p3}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/m;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    .line 64
    if-eqz p4, :cond_1

    :goto_1
    iput-object p4, p0, Lcom/nianticproject/ingress/common/ui/widget/m;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    .line 65
    new-instance v0, Lcom/nianticproject/ingress/common/ui/widget/n;

    invoke-direct {v0, p0, p0}, Lcom/nianticproject/ingress/common/ui/widget/n;-><init>(Lcom/nianticproject/ingress/common/ui/widget/m;Lcom/nianticproject/ingress/common/ui/widget/p;)V

    invoke-super {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 68
    iput-boolean v2, p0, Lcom/nianticproject/ingress/common/ui/widget/m;->e:Z

    .line 69
    return-void

    .line 60
    :cond_0
    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    aput-object p2, v0, v1

    aput-object p1, v0, v2

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/widget/bd;->a([Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object p4, p3

    .line 64
    goto :goto_1
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/m;->isDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z
    .locals 2
    .parameter

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/widget/m;->e:Z

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/nianticproject/ingress/common/ui/widget/o;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "must use a DisabledClickListener for handling button clicks"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    move-result v0

    return v0
.end method

.method public final b(Z)V
    .locals 1
    .parameter

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/m;->a()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 90
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/ui/widget/m;->setDisabled(Z)V

    .line 91
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/m;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    :goto_1
    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/ui/widget/m;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    .line 93
    :cond_0
    return-void

    .line 90
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/m;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    goto :goto_1
.end method

.method protected final c()V
    .locals 5

    .prologue
    const/high16 v4, 0x4000

    const/high16 v3, 0x3f80

    .line 106
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/m;->b:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    .line 107
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/m;->b:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v3, v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    .line 108
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/m;->a:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    .line 109
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/m;->a:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v3, v3, v3, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    .line 110
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/m;->a:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    .line 112
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/m;->a:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-static {v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->fadeOut(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->visible(Z)Lcom/badlogic/gdx/scenes/scene2d/actions/VisibleAction;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->delay(FLcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 113
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/m;->b:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-static {v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->fadeIn(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->delay(FLcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 114
    return-void
.end method
