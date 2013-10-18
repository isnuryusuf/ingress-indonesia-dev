.class final Lcom/nianticproject/ingress/common/scanner/modes/be;
.super Lcom/badlogic/gdx/scenes/scene2d/InputListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/scanner/modes/bd;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/scanner/modes/bd;)V
    .locals 0
    .parameter

    .prologue
    .line 464
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/modes/be;->a:Lcom/nianticproject/ingress/common/scanner/modes/bd;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 467
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/be;->a:Lcom/nianticproject/ingress/common/scanner/modes/bd;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/scanner/modes/bd;->c:Lcom/nianticproject/ingress/common/ui/widget/ActionButton;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/be;->a:Lcom/nianticproject/ingress/common/scanner/modes/bd;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/scanner/modes/bd;->a:Lcom/nianticproject/ingress/common/scanner/modes/ba;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/modes/ba;->f(Lcom/nianticproject/ingress/common/scanner/modes/ba;)V

    .line 470
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
