.class final Lcom/nianticproject/ingress/common/missions/dn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/missions/eg;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/missions/dl;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/missions/dl;)V
    .locals 0
    .parameter

    .prologue
    .line 506
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/dn;->a:Lcom/nianticproject/ingress/common/missions/dl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/gameentity/components/Portal;Lcom/nianticproject/ingress/gameentity/components/Portal;Ljava/lang/String;)Ljava/util/Set;
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/gameentity/components/Portal;",
            "Lcom/nianticproject/ingress/gameentity/components/Portal;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x3

    .line 513
    invoke-static {}, Lcom/google/a/c/jc;->a()Ljava/util/HashSet;

    move-result-object v0

    .line 520
    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/dn;->a:Lcom/nianticproject/ingress/common/missions/dl;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/missions/dl;->b(Lcom/nianticproject/ingress/common/missions/dl;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 521
    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/dn;->a:Lcom/nianticproject/ingress/common/missions/dl;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/missions/dl;->b(Lcom/nianticproject/ingress/common/missions/dl;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 522
    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/dn;->a:Lcom/nianticproject/ingress/common/missions/dl;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/missions/dl;->c(Lcom/nianticproject/ingress/common/missions/dl;)I

    .line 524
    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/dn;->a:Lcom/nianticproject/ingress/common/missions/dl;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/missions/dl;->b(Lcom/nianticproject/ingress/common/missions/dl;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/dn;->a:Lcom/nianticproject/ingress/common/missions/dl;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/missions/dl;->j(Lcom/nianticproject/ingress/common/missions/dl;)I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 526
    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/dn;->a:Lcom/nianticproject/ingress/common/missions/dl;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/missions/dl;->j:Lcom/nianticproject/ingress/common/g/ad;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/dn;->a:Lcom/nianticproject/ingress/common/missions/dl;

    iget-object v2, v2, Lcom/nianticproject/ingress/common/missions/dl;->k:Lcom/nianticproject/ingress/common/model/m;

    invoke-interface {v2}, Lcom/nianticproject/ingress/common/model/m;->h()Lcom/nianticproject/ingress/shared/ai;

    move-result-object v2

    iget-object v3, p0, Lcom/nianticproject/ingress/common/missions/dn;->a:Lcom/nianticproject/ingress/common/missions/dl;

    invoke-static {v3}, Lcom/nianticproject/ingress/common/missions/dl;->b(Lcom/nianticproject/ingress/common/missions/dl;)Ljava/util/Set;

    move-result-object v3

    const-wide/16 v4, 0x1f4

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/nianticproject/ingress/common/g/ad;->a(Lcom/nianticproject/ingress/shared/ai;Ljava/util/Collection;J)Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v1

    .line 528
    invoke-interface {v1}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 529
    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/dn;->a:Lcom/nianticproject/ingress/common/missions/dl;

    const-string/jumbo v2, "FormedRegion"

    invoke-static {v1, v2}, Lcom/nianticproject/ingress/common/a/a;->a(Lcom/nianticproject/ingress/common/missions/ch;Ljava/lang/String;)V

    .line 532
    :cond_0
    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/dn;->a:Lcom/nianticproject/ingress/common/missions/dl;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/missions/dl;->c:Lcom/nianticproject/ingress/gameentity/f;

    if-eqz v1, :cond_2

    invoke-interface {p2}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getEntityGuid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/dn;->a:Lcom/nianticproject/ingress/common/missions/dl;

    iget-object v2, v2, Lcom/nianticproject/ingress/common/missions/dl;->c:Lcom/nianticproject/ingress/gameentity/f;

    invoke-interface {v2}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 534
    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/dn;->a:Lcom/nianticproject/ingress/common/missions/dl;

    const-string/jumbo v2, "MadeFirstLink"

    invoke-static {v1, v2}, Lcom/nianticproject/ingress/common/a/a;->a(Lcom/nianticproject/ingress/common/missions/ch;Ljava/lang/String;)V

    .line 541
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/dn;->a:Lcom/nianticproject/ingress/common/missions/dl;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/dn;->a:Lcom/nianticproject/ingress/common/missions/dl;

    iget-object v2, v2, Lcom/nianticproject/ingress/common/missions/dl;->D:Lcom/nianticproject/ingress/common/w/d;

    const/4 v3, 0x6

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Lcom/nianticproject/ingress/common/missions/dl;->a(Lcom/nianticproject/ingress/common/w/d;ILjava/util/concurrent/TimeUnit;)V

    .line 543
    return-object v0

    .line 535
    :cond_2
    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/dn;->a:Lcom/nianticproject/ingress/common/missions/dl;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/missions/dl;->O:Lcom/nianticproject/ingress/gameentity/f;

    if-eqz v1, :cond_1

    invoke-interface {p2}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getEntityGuid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/dn;->a:Lcom/nianticproject/ingress/common/missions/dl;

    iget-object v2, v2, Lcom/nianticproject/ingress/common/missions/dl;->O:Lcom/nianticproject/ingress/gameentity/f;

    invoke-interface {v2}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 537
    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/dn;->a:Lcom/nianticproject/ingress/common/missions/dl;

    const-string/jumbo v2, "MadeSecondLink"

    invoke-static {v1, v2}, Lcom/nianticproject/ingress/common/a/a;->a(Lcom/nianticproject/ingress/common/missions/ch;Ljava/lang/String;)V

    goto :goto_0
.end method
