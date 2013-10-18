.class final Lcom/nianticproject/ingress/common/ui/elements/p;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/ui/elements/Compass;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/ui/elements/Compass;)V
    .locals 0
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/elements/p;->a:Lcom/nianticproject/ingress/common/ui/elements/Compass;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final tap(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 227
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/p;->a:Lcom/nianticproject/ingress/common/ui/elements/Compass;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/p;->a:Lcom/nianticproject/ingress/common/ui/elements/Compass;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/elements/Compass;->e(Lcom/nianticproject/ingress/common/ui/elements/Compass;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/nianticproject/ingress/common/ui/elements/Compass;->a(Lcom/nianticproject/ingress/common/ui/elements/Compass;Z)Z

    .line 228
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/p;->a:Lcom/nianticproject/ingress/common/ui/elements/Compass;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/elements/Compass;->f(Lcom/nianticproject/ingress/common/ui/elements/Compass;)Lcom/nianticproject/ingress/common/ui/elements/r;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/p;->a:Lcom/nianticproject/ingress/common/ui/elements/Compass;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/elements/Compass;->f(Lcom/nianticproject/ingress/common/ui/elements/Compass;)Lcom/nianticproject/ingress/common/ui/elements/r;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/p;->a:Lcom/nianticproject/ingress/common/ui/elements/Compass;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/ui/elements/Compass;->e(Lcom/nianticproject/ingress/common/ui/elements/Compass;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/ui/elements/r;->a(Z)V

    .line 231
    :cond_0
    return-void

    .line 227
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
