.class final Lcom/nianticproject/ingress/common/scanner/modes/bo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/ui/widget/z;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/scanner/modes/bn;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/scanner/modes/bn;)V
    .locals 0
    .parameter

    .prologue
    .line 348
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/modes/bo;->a:Lcom/nianticproject/ingress/common/scanner/modes/bn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(FF)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 351
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bo;->a:Lcom/nianticproject/ingress/common/scanner/modes/bn;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/scanner/modes/bn;->a:Lcom/nianticproject/ingress/common/scanner/modes/bj;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/modes/bj;->a(Lcom/nianticproject/ingress/common/scanner/modes/bj;)Lcom/nianticproject/ingress/common/scanner/ej;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 353
    invoke-static {}, Lcom/google/a/c/jc;->a()Ljava/util/HashSet;

    move-result-object v4

    .line 354
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bo;->a:Lcom/nianticproject/ingress/common/scanner/modes/bn;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/scanner/modes/bn;->a:Lcom/nianticproject/ingress/common/scanner/modes/bj;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/modes/bj;->b(Lcom/nianticproject/ingress/common/scanner/modes/bj;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/f;

    .line 355
    const-class v2, Lcom/nianticproject/ingress/gameentity/components/Resonator;

    invoke-interface {v0, v2}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/Resonator;

    .line 356
    if-eqz v0, :cond_0

    .line 357
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 361
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bo;->a:Lcom/nianticproject/ingress/common/scanner/modes/bn;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/scanner/modes/bn;->a:Lcom/nianticproject/ingress/common/scanner/modes/bj;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/modes/bj;->f(Lcom/nianticproject/ingress/common/scanner/modes/bj;)Lcom/nianticproject/ingress/common/scanner/modes/bl;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/bo;->a:Lcom/nianticproject/ingress/common/scanner/modes/bn;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/scanner/modes/bn;->a:Lcom/nianticproject/ingress/common/scanner/modes/bj;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/scanner/modes/bj;->a(Lcom/nianticproject/ingress/common/scanner/modes/bj;)Lcom/nianticproject/ingress/common/scanner/ej;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/bo;->a:Lcom/nianticproject/ingress/common/scanner/modes/bn;

    iget-object v2, v2, Lcom/nianticproject/ingress/common/scanner/modes/bn;->a:Lcom/nianticproject/ingress/common/scanner/modes/bj;

    invoke-static {v2}, Lcom/nianticproject/ingress/common/scanner/modes/bj;->c(Lcom/nianticproject/ingress/common/scanner/modes/bj;)Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v2

    const-class v3, Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {v2, v3}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v2

    check-cast v2, Lcom/nianticproject/ingress/gameentity/components/Portal;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/modes/bo;->a:Lcom/nianticproject/ingress/common/scanner/modes/bn;

    iget-object v3, v3, Lcom/nianticproject/ingress/common/scanner/modes/bn;->a:Lcom/nianticproject/ingress/common/scanner/modes/bj;

    invoke-static {v3}, Lcom/nianticproject/ingress/common/scanner/modes/bj;->d(Lcom/nianticproject/ingress/common/scanner/modes/bj;)Lcom/nianticproject/ingress/common/model/ab;

    move-result-object v3

    iget-object v5, p0, Lcom/nianticproject/ingress/common/scanner/modes/bo;->a:Lcom/nianticproject/ingress/common/scanner/modes/bn;

    iget-object v5, v5, Lcom/nianticproject/ingress/common/scanner/modes/bn;->a:Lcom/nianticproject/ingress/common/scanner/modes/bj;

    invoke-static {v5}, Lcom/nianticproject/ingress/common/scanner/modes/bj;->e(Lcom/nianticproject/ingress/common/scanner/modes/bj;)Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/nianticproject/ingress/common/scanner/modes/bl;->a(Lcom/nianticproject/ingress/common/scanner/ej;Lcom/nianticproject/ingress/gameentity/components/Portal;Lcom/nianticproject/ingress/common/model/ab;Ljava/util/Set;Lcom/nianticproject/ingress/gameentity/f;)V

    .line 365
    :cond_2
    return-void
.end method
