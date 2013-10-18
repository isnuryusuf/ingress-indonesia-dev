.class final Lcom/nianticproject/ingress/common/scanner/modes/bp;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/scanner/modes/bn;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/scanner/modes/bn;)V
    .locals 0
    .parameter

    .prologue
    .line 374
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/modes/bp;->a:Lcom/nianticproject/ingress/common/scanner/modes/bn;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 377
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bp;->a:Lcom/nianticproject/ingress/common/scanner/modes/bn;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/scanner/modes/bn;->a:Lcom/nianticproject/ingress/common/scanner/modes/bj;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/modes/bj;->h(Lcom/nianticproject/ingress/common/scanner/modes/bj;)Lcom/nianticproject/ingress/common/h/l;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/bp;->a:Lcom/nianticproject/ingress/common/scanner/modes/bn;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/scanner/modes/bn;->a:Lcom/nianticproject/ingress/common/scanner/modes/bj;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/scanner/modes/bj;->e(Lcom/nianticproject/ingress/common/scanner/modes/bj;)Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v1

    invoke-interface {v1}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/h/l;->b(Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bp;->a:Lcom/nianticproject/ingress/common/scanner/modes/bn;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/scanner/modes/bn;->a:Lcom/nianticproject/ingress/common/scanner/modes/bj;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/modes/bj;->i(Lcom/nianticproject/ingress/common/scanner/modes/bj;)Lcom/nianticproject/ingress/common/ui/t;

    move-result-object v0

    const-class v1, Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/t;->b(Ljava/lang/Class;)Lcom/nianticproject/ingress/common/ui/m;

    .line 379
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bp;->a:Lcom/nianticproject/ingress/common/scanner/modes/bn;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/scanner/modes/bn;->a:Lcom/nianticproject/ingress/common/scanner/modes/bj;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/modes/bj;->i(Lcom/nianticproject/ingress/common/scanner/modes/bj;)Lcom/nianticproject/ingress/common/ui/t;

    move-result-object v0

    const-class v1, Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/t;->a(Ljava/lang/Class;)Lcom/nianticproject/ingress/common/ui/m;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/k;->r()V

    .line 380
    return-void
.end method
