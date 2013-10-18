.class final Lcom/nianticproject/ingress/common/ui/g/r;
.super Lcom/badlogic/gdx/scenes/scene2d/InputListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/ui/g/q;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/ui/g/q;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/g/r;->a:Lcom/nianticproject/ingress/common/ui/g/q;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 113
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/r;->a:Lcom/nianticproject/ingress/common/ui/g/q;

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/ui/g/q;->a(Lcom/nianticproject/ingress/common/ui/g/q;Z)Z

    .line 114
    return v1
.end method

.method public final touchDragged(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/r;->a:Lcom/nianticproject/ingress/common/ui/g/q;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/g/q;->a(Lcom/nianticproject/ingress/common/ui/g/q;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/g/r;->a:Lcom/nianticproject/ingress/common/ui/g/q;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/ui/g/q;->a(Lcom/nianticproject/ingress/common/ui/g/q;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getX()F

    move-result v1

    add-float/2addr v1, p2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setX(F)V

    .line 120
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/r;->a:Lcom/nianticproject/ingress/common/ui/g/q;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/g/q;->b(Lcom/nianticproject/ingress/common/ui/g/q;)V

    .line 121
    return-void
.end method

.method public final touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/r;->a:Lcom/nianticproject/ingress/common/ui/g/q;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/g/q;->c(Lcom/nianticproject/ingress/common/ui/g/q;)V

    .line 126
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/r;->a:Lcom/nianticproject/ingress/common/ui/g/q;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/ui/g/q;->a(Lcom/nianticproject/ingress/common/ui/g/q;Z)Z

    .line 127
    return-void
.end method
