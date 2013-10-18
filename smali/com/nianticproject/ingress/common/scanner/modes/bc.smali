.class final Lcom/nianticproject/ingress/common/scanner/modes/bc;
.super Lcom/nianticproject/ingress/common/x/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nianticproject/ingress/common/x/b",
        "<",
        "Lcom/nianticproject/ingress/shared/rpc/RpcResult",
        "<",
        "Ljava/lang/Void;",
        "Lcom/nianticproject/ingress/shared/ad;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/scanner/modes/ba;

.field private b:Lcom/nianticproject/ingress/common/scanner/visuals/c;


# direct methods
.method private constructor <init>(Lcom/nianticproject/ingress/common/scanner/modes/ba;)V
    .locals 6
    .parameter

    .prologue
    .line 628
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/modes/bc;->a:Lcom/nianticproject/ingress/common/scanner/modes/ba;

    .line 629
    const-string/jumbo v0, "SelectedResonatorUi.recharge"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/x/b;-><init>(Ljava/lang/String;)V

    .line 630
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/c;

    sget-object v1, Lcom/nianticproject/ingress/common/scanner/ag;->L:Lcom/nianticproject/ingress/common/j/ai;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/bc;->a:Lcom/nianticproject/ingress/common/scanner/modes/ba;

    invoke-static {v2}, Lcom/nianticproject/ingress/common/scanner/modes/ba;->d(Lcom/nianticproject/ingress/common/scanner/modes/ba;)Lcom/nianticproject/ingress/common/model/k;

    move-result-object v2

    invoke-interface {v2}, Lcom/nianticproject/ingress/common/model/k;->h()Lcom/nianticproject/ingress/shared/ai;

    move-result-object v2

    invoke-static {v2}, Lcom/nianticproject/ingress/common/scanner/ea;->a(Lcom/nianticproject/ingress/shared/ai;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/common/scanner/visuals/c;-><init>(Lcom/nianticproject/ingress/common/j/ai;Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bc;->b:Lcom/nianticproject/ingress/common/scanner/visuals/c;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bc;->a:Lcom/nianticproject/ingress/common/scanner/modes/ba;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->c:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/k;->l()Lcom/nianticproject/ingress/common/scanner/visuals/bt;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/bc;->b:Lcom/nianticproject/ingress/common/scanner/visuals/c;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->b(Lcom/nianticproject/ingress/common/j/o;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bc;->a:Lcom/nianticproject/ingress/common/scanner/modes/ba;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->h:Lcom/nianticproject/ingress/shared/r;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bc;->a:Lcom/nianticproject/ingress/common/scanner/modes/ba;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/modes/ba;->i(Lcom/nianticproject/ingress/common/scanner/modes/ba;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/bc;->a:Lcom/nianticproject/ingress/common/scanner/modes/ba;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/scanner/modes/ba;->h:Lcom/nianticproject/ingress/shared/r;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/Resonator;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/bc;->a:Lcom/nianticproject/ingress/common/scanner/modes/ba;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/Resonator;->getEntityGuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/nianticproject/ingress/common/scanner/modes/ba;->a(Lcom/nianticproject/ingress/common/scanner/modes/ba;Ljava/lang/String;)V

    .line 631
    :cond_0
    return-void

    .line 630
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bc;->a:Lcom/nianticproject/ingress/common/scanner/modes/ba;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/modes/ba;->i(Lcom/nianticproject/ingress/common/scanner/modes/ba;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/Resonator;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/bc;->a:Lcom/nianticproject/ingress/common/scanner/modes/ba;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/modes/ba;->a(Lcom/nianticproject/ingress/gameentity/components/Resonator;)Ljava/lang/Double;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/high16 v4, 0x4059

    cmpg-double v2, v2, v4

    if-gez v2, :cond_2

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/bc;->a:Lcom/nianticproject/ingress/common/scanner/modes/ba;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/Resonator;->getEntityGuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/nianticproject/ingress/common/scanner/modes/ba;->a(Lcom/nianticproject/ingress/common/scanner/modes/ba;Ljava/lang/String;)V

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/nianticproject/ingress/common/scanner/modes/ba;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 624
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/scanner/modes/bc;-><init>(Lcom/nianticproject/ingress/common/scanner/modes/ba;)V

    return-void
.end method


# virtual methods
.method public final synthetic b(Ljava/lang/Object;)Lcom/nianticproject/ingress/common/x/f;
    .locals 14
    .parameter

    .prologue
    const/4 v13, 0x0

    const/high16 v12, 0x3f80

    const/4 v11, 0x0

    .line 624
    check-cast p1, Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bc;->b:Lcom/nianticproject/ingress/common/scanner/visuals/c;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/c;->d()V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bc;->a:Lcom/nianticproject/ingress/common/scanner/modes/ba;

    iget-boolean v0, v0, Lcom/nianticproject/ingress/common/scanner/modes/ba;->a:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bc;->a:Lcom/nianticproject/ingress/common/scanner/modes/ba;

    invoke-static {v0, v12}, Lcom/nianticproject/ingress/common/scanner/modes/ba;->a(Lcom/nianticproject/ingress/common/scanner/modes/ba;F)F

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bc;->a:Lcom/nianticproject/ingress/common/scanner/modes/ba;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/modes/ba;->j(Lcom/nianticproject/ingress/common/scanner/modes/ba;)F

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bc;->a:Lcom/nianticproject/ingress/common/scanner/modes/ba;

    invoke-static {v0, v11}, Lcom/nianticproject/ingress/common/scanner/modes/ba;->a(Lcom/nianticproject/ingress/common/scanner/modes/ba;Z)Z

    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->e()Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "Resonator recharge failure!"

    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->b()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/nianticproject/ingress/common/ui/c;->a()Lcom/nianticproject/ingress/common/ui/c;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/ui/c;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/bc;->a:Lcom/nianticproject/ingress/common/scanner/modes/ba;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/scanner/modes/ba;->k(Lcom/nianticproject/ingress/common/scanner/modes/ba;)Lcom/nianticproject/ingress/common/scanner/modes/af;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/bc;->a:Lcom/nianticproject/ingress/common/scanner/modes/ba;

    new-instance v2, Lcom/nianticproject/ingress/common/scanner/modes/af;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/modes/bc;->a:Lcom/nianticproject/ingress/common/scanner/modes/ba;

    invoke-static {v3}, Lcom/nianticproject/ingress/common/scanner/modes/ba;->l(Lcom/nianticproject/ingress/common/scanner/modes/ba;)Lcom/nianticproject/ingress/common/j/as;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/nianticproject/ingress/common/scanner/modes/af;-><init>(Lcom/nianticproject/ingress/common/j/as;)V

    invoke-static {v1, v2}, Lcom/nianticproject/ingress/common/scanner/modes/ba;->a(Lcom/nianticproject/ingress/common/scanner/modes/ba;Lcom/nianticproject/ingress/common/scanner/modes/af;)Lcom/nianticproject/ingress/common/scanner/modes/af;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/bc;->a:Lcom/nianticproject/ingress/common/scanner/modes/ba;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/scanner/modes/ba;->c:Lcom/nianticproject/ingress/common/scanner/k;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/bc;->a:Lcom/nianticproject/ingress/common/scanner/modes/ba;

    invoke-static {v2}, Lcom/nianticproject/ingress/common/scanner/modes/ba;->k(Lcom/nianticproject/ingress/common/scanner/modes/ba;)Lcom/nianticproject/ingress/common/scanner/modes/af;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nianticproject/ingress/common/scanner/k;->a(Lcom/nianticproject/ingress/common/ui/ac;)V

    :cond_1
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/bc;->a:Lcom/nianticproject/ingress/common/scanner/modes/ba;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/scanner/modes/ba;->k(Lcom/nianticproject/ingress/common/scanner/modes/ba;)Lcom/nianticproject/ingress/common/scanner/modes/af;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/scanner/modes/af;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bc;->a:Lcom/nianticproject/ingress/common/scanner/modes/ba;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/modes/ba;->m(Lcom/nianticproject/ingress/common/scanner/modes/ba;)Lcom/nianticproject/ingress/common/scanner/modes/bd;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bc;->a:Lcom/nianticproject/ingress/common/scanner/modes/ba;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/modes/ba;->m(Lcom/nianticproject/ingress/common/scanner/modes/ba;)Lcom/nianticproject/ingress/common/scanner/modes/bd;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/bc;->a:Lcom/nianticproject/ingress/common/scanner/modes/ba;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/scanner/modes/ba;->b(Lcom/nianticproject/ingress/common/scanner/modes/ba;)Lcom/nianticproject/ingress/gameentity/components/Portal;

    move-result-object v1

    invoke-interface {v1}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getEntity()Lcom/nianticproject/ingress/gameentity/f;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/bc;->a:Lcom/nianticproject/ingress/common/scanner/modes/ba;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/scanner/modes/ba;->c(Lcom/nianticproject/ingress/common/scanner/modes/ba;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/bc;->a:Lcom/nianticproject/ingress/common/scanner/modes/ba;

    invoke-static {v2}, Lcom/nianticproject/ingress/common/scanner/modes/ba;->d(Lcom/nianticproject/ingress/common/scanner/modes/ba;)Lcom/nianticproject/ingress/common/model/k;

    move-result-object v2

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/modes/bc;->a:Lcom/nianticproject/ingress/common/scanner/modes/ba;

    invoke-static {v3}, Lcom/nianticproject/ingress/common/scanner/modes/ba;->e(Lcom/nianticproject/ingress/common/scanner/modes/ba;)Lcom/nianticproject/ingress/gameentity/f;

    invoke-static {v0, v1, v2}, Lcom/nianticproject/ingress/common/scanner/modes/bd;->a(Lcom/nianticproject/ingress/common/scanner/modes/bd;Ljava/util/Set;Lcom/nianticproject/ingress/common/model/k;)V

    :cond_2
    :goto_0
    return-object v13

    :cond_3
    invoke-static {}, Lcom/google/a/c/hc;->b()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->d()Lcom/nianticproject/ingress/shared/rpc/GameBasket;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->c()Lcom/nianticproject/ingress/shared/rpc/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/rpc/f;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/f;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/google/a/c/eq;->a()Ljava/util/ArrayList;

    move-result-object v4

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bc;->a:Lcom/nianticproject/ingress/common/scanner/modes/ba;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/modes/ba;->n(Lcom/nianticproject/ingress/common/scanner/modes/ba;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nianticproject/ingress/gameentity/f;

    if-eqz v2, :cond_5

    iget-object v6, p0, Lcom/nianticproject/ingress/common/scanner/modes/bc;->a:Lcom/nianticproject/ingress/common/scanner/modes/ba;

    invoke-static {v2}, Lcom/nianticproject/ingress/common/scanner/modes/ba;->b(Lcom/nianticproject/ingress/gameentity/f;)Ljava/lang/Double;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    cmpg-double v2, v7, v9

    if-lez v2, :cond_5

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/bc;->a:Lcom/nianticproject/ingress/common/scanner/modes/ba;

    invoke-static {v2}, Lcom/nianticproject/ingress/common/scanner/modes/ba;->o(Lcom/nianticproject/ingress/common/scanner/modes/ba;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/bc;->a:Lcom/nianticproject/ingress/common/scanner/modes/ba;

    invoke-static {v2}, Lcom/nianticproject/ingress/common/scanner/modes/ba;->o(Lcom/nianticproject/ingress/common/scanner/modes/ba;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nianticproject/ingress/common/ui/hud/e;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/ui/hud/e;->a()V

    :cond_6
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/bc;->a:Lcom/nianticproject/ingress/common/scanner/modes/ba;

    iget-object v2, v2, Lcom/nianticproject/ingress/common/scanner/modes/ba;->c:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v2, v1}, Lcom/nianticproject/ingress/common/scanner/k;->b(Ljava/lang/String;)Lcom/nianticproject/ingress/common/scanner/ej;

    move-result-object v2

    check-cast v2, Lcom/nianticproject/ingress/common/scanner/fu;

    if-eqz v2, :cond_5

    iget-object v7, p0, Lcom/nianticproject/ingress/common/scanner/modes/bc;->a:Lcom/nianticproject/ingress/common/scanner/modes/ba;

    invoke-static {v7}, Lcom/nianticproject/ingress/common/scanner/modes/ba;->n(Lcom/nianticproject/ingress/common/scanner/modes/ba;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v7, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bc;->a:Lcom/nianticproject/ingress/common/scanner/modes/ba;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/modes/ba;->p(Lcom/nianticproject/ingress/common/scanner/modes/ba;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/r;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/r;->ordinal()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v12

    const/high16 v1, 0x4100

    div-float/2addr v0, v1

    invoke-virtual {v2, v0}, Lcom/nianticproject/ingress/common/scanner/fu;->c(F)V

    goto/16 :goto_2

    :cond_7
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_8

    const-string/jumbo v0, "Resonator recharged!"

    invoke-interface {v4, v11, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_3
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bc;->a:Lcom/nianticproject/ingress/common/scanner/modes/ba;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/modes/ba;->m(Lcom/nianticproject/ingress/common/scanner/modes/ba;)Lcom/nianticproject/ingress/common/scanner/modes/bd;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bc;->a:Lcom/nianticproject/ingress/common/scanner/modes/ba;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/modes/ba;->m(Lcom/nianticproject/ingress/common/scanner/modes/ba;)Lcom/nianticproject/ingress/common/scanner/modes/bd;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/bc;->a:Lcom/nianticproject/ingress/common/scanner/modes/ba;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/scanner/modes/ba;->b(Lcom/nianticproject/ingress/common/scanner/modes/ba;)Lcom/nianticproject/ingress/gameentity/components/Portal;

    move-result-object v1

    invoke-interface {v1}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getEntity()Lcom/nianticproject/ingress/gameentity/f;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/bc;->a:Lcom/nianticproject/ingress/common/scanner/modes/ba;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/scanner/modes/ba;->c(Lcom/nianticproject/ingress/common/scanner/modes/ba;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/bc;->a:Lcom/nianticproject/ingress/common/scanner/modes/ba;

    invoke-static {v2}, Lcom/nianticproject/ingress/common/scanner/modes/ba;->d(Lcom/nianticproject/ingress/common/scanner/modes/ba;)Lcom/nianticproject/ingress/common/model/k;

    move-result-object v2

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/modes/bc;->a:Lcom/nianticproject/ingress/common/scanner/modes/ba;

    invoke-static {v3}, Lcom/nianticproject/ingress/common/scanner/modes/ba;->e(Lcom/nianticproject/ingress/common/scanner/modes/ba;)Lcom/nianticproject/ingress/gameentity/f;

    invoke-static {v0, v1, v2}, Lcom/nianticproject/ingress/common/scanner/modes/bd;->a(Lcom/nianticproject/ingress/common/scanner/modes/bd;Ljava/util/Set;Lcom/nianticproject/ingress/common/model/k;)V

    goto/16 :goto_0

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  recharged!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v11, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_3
.end method
