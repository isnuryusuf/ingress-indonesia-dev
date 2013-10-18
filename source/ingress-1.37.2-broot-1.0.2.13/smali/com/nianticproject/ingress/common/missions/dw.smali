.class final Lcom/nianticproject/ingress/common/missions/dw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/scanner/f;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/missions/dl;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/missions/dl;)V
    .locals 0
    .parameter

    .prologue
    .line 486
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/dw;->a:Lcom/nianticproject/ingress/common/missions/dl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/scanner/ej;)V
    .locals 4
    .parameter

    .prologue
    .line 489
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/dw;->a:Lcom/nianticproject/ingress/common/missions/dl;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/dl;->L:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 490
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Lcom/nianticproject/ingress/common/scanner/ej;->e()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v3

    if-ne v1, v3, :cond_0

    .line 491
    iget-object v3, p0, Lcom/nianticproject/ingress/common/missions/dw;->a:Lcom/nianticproject/ingress/common/missions/dl;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/a/d/u;

    iput-object v1, v3, Lcom/nianticproject/ingress/common/missions/dl;->Q:Lcom/google/a/d/u;

    .line 492
    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/dw;->a:Lcom/nianticproject/ingress/common/missions/dl;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/f;

    invoke-static {v1, v0}, Lcom/nianticproject/ingress/common/missions/dl;->a(Lcom/nianticproject/ingress/common/missions/dl;Lcom/nianticproject/ingress/gameentity/f;)Lcom/nianticproject/ingress/gameentity/f;

    .line 493
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/dw;->a:Lcom/nianticproject/ingress/common/missions/dl;

    const-string/jumbo v1, "SelectedThirdPortal"

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/a/a;->a(Lcom/nianticproject/ingress/common/missions/ch;Ljava/lang/String;)V

    .line 494
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/dw;->a:Lcom/nianticproject/ingress/common/missions/dl;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/missions/dl;->t()Lcom/nianticproject/ingress/common/w/b;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/dw;->a:Lcom/nianticproject/ingress/common/missions/dl;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/missions/dl;->z:Lcom/nianticproject/ingress/common/w/d;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/b;->a(Lcom/nianticproject/ingress/common/w/d;)V

    goto :goto_0

    .line 497
    :cond_1
    return-void
.end method
