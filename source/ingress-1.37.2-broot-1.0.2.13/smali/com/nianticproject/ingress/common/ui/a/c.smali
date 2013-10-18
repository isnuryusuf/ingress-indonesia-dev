.class public final Lcom/nianticproject/ingress/common/ui/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field private final b:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

.field private c:Lcom/badlogic/gdx/scenes/scene2d/Action;


# direct methods
.method private constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 1
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/a/c;->a:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 37
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getTouchable()Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/a/c;->b:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    .line 38
    return-void
.end method

.method public static a(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/nianticproject/ingress/common/ui/a/c;
    .locals 1
    .parameter

    .prologue
    .line 32
    new-instance v0, Lcom/nianticproject/ingress/common/ui/a/c;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/ui/a/c;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/a/c;->c:Lcom/badlogic/gdx/scenes/scene2d/Action;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/a/c;->a:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/a/c;->c:Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->removeAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/a/c;->c:Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 66
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/a/c;->a()V

    .line 42
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/a/c;->a:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    iput v0, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 43
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/a/c;->a:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    .line 44
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/a/c;->a:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/a/c;->b:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    :goto_1
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    .line 45
    return-void

    .line 42
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 44
    :cond_1
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    goto :goto_1
.end method

.method public final b(Z)V
    .locals 3
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/a/c;->a()V

    .line 49
    if-eqz p1, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    const/high16 v1, 0x3f00

    sget-object v2, Lcom/badlogic/gdx/math/Interpolation;->fade:Lcom/badlogic/gdx/math/Interpolation;

    invoke-static {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(FFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v0

    .line 51
    if-eqz p1, :cond_1

    .line 52
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->visible(Z)Lcom/badlogic/gdx/scenes/scene2d/actions/VisibleAction;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/a/c;->b:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-static {v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->touchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)Lcom/badlogic/gdx/scenes/scene2d/actions/TouchableAction;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/a/c;->c:Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 58
    :goto_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/a/c;->a:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/a/c;->c:Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 59
    return-void

    .line 49
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 55
    :cond_1
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->touchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)Lcom/badlogic/gdx/scenes/scene2d/actions/TouchableAction;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->visible(Z)Lcom/badlogic/gdx/scenes/scene2d/actions/VisibleAction;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/a/c;->c:Lcom/badlogic/gdx/scenes/scene2d/Action;

    goto :goto_1
.end method
