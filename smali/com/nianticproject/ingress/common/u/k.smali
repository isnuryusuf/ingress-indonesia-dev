.class final Lcom/nianticproject/ingress/common/u/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/x/f;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/shared/model/e;

.field final synthetic b:Lcom/nianticproject/ingress/shared/rpc/GameBasket;

.field final synthetic c:Lcom/nianticproject/ingress/common/u/j;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/u/j;Lcom/nianticproject/ingress/shared/model/e;Lcom/nianticproject/ingress/shared/rpc/GameBasket;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/nianticproject/ingress/common/u/k;->c:Lcom/nianticproject/ingress/common/u/j;

    iput-object p2, p0, Lcom/nianticproject/ingress/common/u/k;->a:Lcom/nianticproject/ingress/shared/model/e;

    iput-object p3, p0, Lcom/nianticproject/ingress/common/u/k;->b:Lcom/nianticproject/ingress/shared/rpc/GameBasket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/x/p;)Lcom/nianticproject/ingress/common/x/f;
    .locals 2
    .parameter

    .prologue
    .line 229
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/k;->a:Lcom/nianticproject/ingress/shared/model/e;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/k;->c:Lcom/nianticproject/ingress/common/u/j;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/u/j;->e(Lcom/nianticproject/ingress/common/u/j;)Lcom/nianticproject/ingress/common/g/e;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/u/k;->a:Lcom/nianticproject/ingress/shared/model/e;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/g/e;->a(Lcom/nianticproject/ingress/shared/model/e;)V

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/k;->c:Lcom/nianticproject/ingress/common/u/j;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/u/j;->a(Lcom/nianticproject/ingress/common/u/j;)Lcom/nianticproject/ingress/common/model/k;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/u/k;->b:Lcom/nianticproject/ingress/shared/rpc/GameBasket;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->b()Lcom/nianticproject/ingress/shared/rpc/e;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/model/k;->a(Lcom/nianticproject/ingress/shared/rpc/e;)V

    .line 233
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/k;->b:Lcom/nianticproject/ingress/shared/rpc/GameBasket;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->d()Lcom/nianticproject/ingress/knobs/KnobBundleUpdate;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/common/q;->a(Lcom/nianticproject/ingress/knobs/KnobBundleUpdate;)V

    .line 234
    const/4 v0, 0x0

    return-object v0
.end method

.method public final n_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    const-string/jumbo v0, "gameBasketHandler.onGameBasket"

    return-object v0
.end method
