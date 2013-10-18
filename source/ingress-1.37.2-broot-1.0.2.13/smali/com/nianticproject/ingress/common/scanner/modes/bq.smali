.class final Lcom/nianticproject/ingress/common/scanner/modes/bq;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/scanner/modes/bn;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/scanner/modes/bn;)V
    .locals 0
    .parameter

    .prologue
    .line 386
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/modes/bq;->a:Lcom/nianticproject/ingress/common/scanner/modes/bn;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 390
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bq;->a:Lcom/nianticproject/ingress/common/scanner/modes/bn;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/scanner/modes/bn;->a:Lcom/nianticproject/ingress/common/scanner/modes/bj;

    new-instance v1, Lcom/nianticproject/ingress/common/scanner/modes/bk;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/bq;->a:Lcom/nianticproject/ingress/common/scanner/modes/bn;

    iget-object v2, v2, Lcom/nianticproject/ingress/common/scanner/modes/bn;->a:Lcom/nianticproject/ingress/common/scanner/modes/bj;

    invoke-static {v2}, Lcom/nianticproject/ingress/common/scanner/modes/bj;->e(Lcom/nianticproject/ingress/common/scanner/modes/bj;)Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v2

    invoke-interface {v2}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/modes/bq;->a:Lcom/nianticproject/ingress/common/scanner/modes/bn;

    iget-object v3, v3, Lcom/nianticproject/ingress/common/scanner/modes/bn;->a:Lcom/nianticproject/ingress/common/scanner/modes/bj;

    invoke-static {v3}, Lcom/nianticproject/ingress/common/scanner/modes/bj;->h(Lcom/nianticproject/ingress/common/scanner/modes/bj;)Lcom/nianticproject/ingress/common/h/l;

    move-result-object v3

    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/modes/bq;->a:Lcom/nianticproject/ingress/common/scanner/modes/bn;

    iget-object v4, v4, Lcom/nianticproject/ingress/common/scanner/modes/bn;->a:Lcom/nianticproject/ingress/common/scanner/modes/bj;

    invoke-static {v4}, Lcom/nianticproject/ingress/common/scanner/modes/bj;->i(Lcom/nianticproject/ingress/common/scanner/modes/bj;)Lcom/nianticproject/ingress/common/ui/t;

    move-result-object v4

    iget-object v5, p0, Lcom/nianticproject/ingress/common/scanner/modes/bq;->a:Lcom/nianticproject/ingress/common/scanner/modes/bn;

    invoke-static {v5}, Lcom/nianticproject/ingress/common/scanner/modes/bn;->c(Lcom/nianticproject/ingress/common/scanner/modes/bn;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/nianticproject/ingress/common/scanner/modes/bk;-><init>(Ljava/lang/String;Lcom/nianticproject/ingress/common/h/l;Lcom/nianticproject/ingress/common/ui/t;Lcom/badlogic/gdx/scenes/scene2d/ui/Table;)V

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/scanner/modes/bj;->a(Lcom/nianticproject/ingress/common/scanner/modes/bj;Lcom/nianticproject/ingress/common/scanner/modes/bk;)Lcom/nianticproject/ingress/common/scanner/modes/bk;

    .line 392
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bq;->a:Lcom/nianticproject/ingress/common/scanner/modes/bn;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/scanner/modes/bn;->a:Lcom/nianticproject/ingress/common/scanner/modes/bj;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/modes/bj;->j(Lcom/nianticproject/ingress/common/scanner/modes/bj;)Lcom/nianticproject/ingress/common/scanner/modes/bk;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/common/scanner/modes/br;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/common/scanner/modes/br;-><init>(Lcom/nianticproject/ingress/common/scanner/modes/bq;)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/modes/bk;->a(Lcom/nianticproject/ingress/common/ui/elements/aa;)V

    .line 402
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bq;->a:Lcom/nianticproject/ingress/common/scanner/modes/bn;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/scanner/modes/bn;->a:Lcom/nianticproject/ingress/common/scanner/modes/bj;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->a:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/k;->K()Lcom/nianticproject/ingress/common/ui/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/bq;->a:Lcom/nianticproject/ingress/common/scanner/modes/bn;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/scanner/modes/bn;->a:Lcom/nianticproject/ingress/common/scanner/modes/bj;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/scanner/modes/bj;->j(Lcom/nianticproject/ingress/common/scanner/modes/bj;)Lcom/nianticproject/ingress/common/scanner/modes/bk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/ad;->a(Lcom/nianticproject/ingress/common/ui/ac;)V

    .line 403
    return-void
.end method
