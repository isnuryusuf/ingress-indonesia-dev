.class final Lcom/nianticproject/ingress/common/missions/e;
.super Lcom/nianticproject/ingress/common/w/g;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/missions/a;

.field private final b:Lcom/nianticproject/ingress/common/ui/widget/z;

.field private final c:Lcom/nianticproject/ingress/common/missions/cn;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/missions/a;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 535
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/e;->a:Lcom/nianticproject/ingress/common/missions/a;

    invoke-direct {p0, p2}, Lcom/nianticproject/ingress/common/w/g;-><init>(Ljava/lang/String;)V

    .line 538
    new-instance v0, Lcom/nianticproject/ingress/common/missions/f;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/missions/f;-><init>(Lcom/nianticproject/ingress/common/missions/e;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/e;->b:Lcom/nianticproject/ingress/common/ui/widget/z;

    .line 547
    new-instance v0, Lcom/nianticproject/ingress/common/missions/g;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/missions/g;-><init>(Lcom/nianticproject/ingress/common/missions/e;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/e;->c:Lcom/nianticproject/ingress/common/missions/cn;

    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/missions/e;Lcom/google/a/d/u;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 535
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/e;->a:Lcom/nianticproject/ingress/common/missions/a;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/a;->c:Lcom/nianticproject/ingress/gameentity/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/e;->a:Lcom/nianticproject/ingress/common/missions/a;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/a;->j:Lcom/nianticproject/ingress/common/g/ad;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/e;->a:Lcom/nianticproject/ingress/common/missions/a;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/missions/a;->c:Lcom/nianticproject/ingress/gameentity/f;

    invoke-interface {v1}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/a/c/du;->b(Ljava/lang/Object;)Lcom/google/a/c/du;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/g/ad;->c(Ljava/util/Set;)V

    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/e;->a:Lcom/nianticproject/ingress/common/missions/a;

    new-instance v1, Lcom/nianticproject/ingress/common/missions/ac;

    const-string/jumbo v2, "Simulation Portal"

    const-string/jumbo v4, ""

    invoke-direct {v1, p1, v2, v4}, Lcom/nianticproject/ingress/common/missions/ac;-><init>(Lcom/google/a/d/u;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/nianticproject/ingress/common/missions/a;->b:Lcom/nianticproject/ingress/common/missions/ac;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/e;->a:Lcom/nianticproject/ingress/common/missions/a;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/a;->i:Lcom/nianticproject/ingress/common/missions/cq;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/missions/cq;->s_()Lcom/nianticproject/ingress/common/missions/cl;

    move-result-object v0

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/missions/cl;->b()V

    iget-object v9, p0, Lcom/nianticproject/ingress/common/missions/e;->a:Lcom/nianticproject/ingress/common/missions/a;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/e;->a:Lcom/nianticproject/ingress/common/missions/a;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/a;->j:Lcom/nianticproject/ingress/common/g/ad;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/e;->a:Lcom/nianticproject/ingress/common/missions/a;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/missions/a;->b:Lcom/nianticproject/ingress/common/missions/ac;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/missions/ac;->a:Lcom/google/a/d/u;

    sget-object v2, Lcom/nianticproject/ingress/shared/ai;->c:Lcom/nianticproject/ingress/shared/ai;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/missions/e;->a:Lcom/nianticproject/ingress/common/missions/a;

    iget-object v4, v4, Lcom/nianticproject/ingress/common/missions/a;->k:Lcom/nianticproject/ingress/common/model/m;

    invoke-interface {v4}, Lcom/nianticproject/ingress/common/model/m;->k()Ljava/lang/String;

    move-result-object v6

    iget-object v4, p0, Lcom/nianticproject/ingress/common/missions/e;->a:Lcom/nianticproject/ingress/common/missions/a;

    iget-object v4, v4, Lcom/nianticproject/ingress/common/missions/a;->b:Lcom/nianticproject/ingress/common/missions/ac;

    iget-object v7, v4, Lcom/nianticproject/ingress/common/missions/ac;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/missions/e;->a:Lcom/nianticproject/ingress/common/missions/a;

    iget-object v4, v4, Lcom/nianticproject/ingress/common/missions/a;->b:Lcom/nianticproject/ingress/common/missions/ac;

    iget-object v8, v4, Lcom/nianticproject/ingress/common/missions/ac;->c:Ljava/lang/String;

    move v4, v3

    move v5, v3

    invoke-interface/range {v0 .. v8}, Lcom/nianticproject/ingress/common/g/ad;->a(Lcom/google/a/d/u;Lcom/nianticproject/ingress/shared/ai;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    iput-object v0, v9, Lcom/nianticproject/ingress/common/missions/a;->c:Lcom/nianticproject/ingress/gameentity/f;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    const v4, 0x7fffffff

    .line 567
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/e;->a:Lcom/nianticproject/ingress/common/missions/a;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/a;->c:Lcom/nianticproject/ingress/gameentity/f;

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/e;->a:Lcom/nianticproject/ingress/common/missions/a;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/a;->j:Lcom/nianticproject/ingress/common/g/ad;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/e;->a:Lcom/nianticproject/ingress/common/missions/a;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/missions/a;->c:Lcom/nianticproject/ingress/gameentity/f;

    invoke-interface {v1}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/a/c/du;->b(Ljava/lang/Object;)Lcom/google/a/c/du;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/g/ad;->c(Ljava/util/Set;)V

    .line 592
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/e;->a:Lcom/nianticproject/ingress/common/missions/a;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/a;->i:Lcom/nianticproject/ingress/common/missions/cq;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/missions/cq;->s_()Lcom/nianticproject/ingress/common/missions/cl;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/e;->c:Lcom/nianticproject/ingress/common/missions/cn;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/missions/cl;->a(Lcom/nianticproject/ingress/common/missions/cn;)V

    .line 593
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/e;->a:Lcom/nianticproject/ingress/common/missions/a;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/a;->i:Lcom/nianticproject/ingress/common/missions/cq;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/missions/cq;->s_()Lcom/nianticproject/ingress/common/missions/cl;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/e;->b:Lcom/nianticproject/ingress/common/ui/widget/z;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/missions/cl;->a(Lcom/nianticproject/ingress/common/ui/widget/z;)V

    .line 594
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/e;->a:Lcom/nianticproject/ingress/common/missions/a;

    const-string/jumbo v1, "Identify a potential Portal. Use your Scanner map to tag a Portal."

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/missions/a;->a_(Ljava/lang/String;)V

    .line 595
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/e;->a:Lcom/nianticproject/ingress/common/missions/a;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/a;->n:Lcom/nianticproject/ingress/common/c/e;

    sget-object v1, Lcom/nianticproject/ingress/common/c/bs;->K:Lcom/nianticproject/ingress/common/c/bs;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/c/e;->a(Lcom/nianticproject/ingress/common/c/bs;)V

    .line 597
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/e;->a:Lcom/nianticproject/ingress/common/missions/a;

    const-string/jumbo v1, "Place Portal"

    const-string/jumbo v2, "Tap the Scanner map"

    const-string/jumbo v3, "Touch CHOOSE"

    invoke-static {v2, v3}, Lcom/google/a/c/du;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/du;

    move-result-object v2

    invoke-static {}, Lcom/google/a/c/du;->g()Lcom/google/a/c/du;

    move-result-object v3

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/nianticproject/ingress/common/missions/a;->a(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;II)V

    .line 602
    return-void
.end method

.method public final u_()V
    .locals 2

    .prologue
    .line 606
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/e;->a:Lcom/nianticproject/ingress/common/missions/a;

    invoke-static {}, Lcom/google/a/c/du;->g()Lcom/google/a/c/du;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/missions/a;->a(Ljava/util/Collection;)V

    .line 608
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/e;->a:Lcom/nianticproject/ingress/common/missions/a;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/a;->c:Lcom/nianticproject/ingress/gameentity/f;

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/e;->a:Lcom/nianticproject/ingress/common/missions/a;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/a;->j:Lcom/nianticproject/ingress/common/g/ad;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/e;->a:Lcom/nianticproject/ingress/common/missions/a;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/missions/a;->c:Lcom/nianticproject/ingress/gameentity/f;

    invoke-interface {v1}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/a/c/du;->b(Ljava/lang/Object;)Lcom/google/a/c/du;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/g/ad;->c(Ljava/util/Set;)V

    .line 611
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/e;->a:Lcom/nianticproject/ingress/common/missions/a;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/a;->i:Lcom/nianticproject/ingress/common/missions/cq;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/missions/cq;->s_()Lcom/nianticproject/ingress/common/missions/cl;

    move-result-object v0

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/missions/cl;->t_()V

    .line 612
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/e;->a:Lcom/nianticproject/ingress/common/missions/a;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/a;->i:Lcom/nianticproject/ingress/common/missions/cq;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/missions/cq;->s_()Lcom/nianticproject/ingress/common/missions/cl;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/e;->c:Lcom/nianticproject/ingress/common/missions/cn;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/missions/cl;->b(Lcom/nianticproject/ingress/common/missions/cn;)V

    .line 613
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/e;->a:Lcom/nianticproject/ingress/common/missions/a;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/a;->i:Lcom/nianticproject/ingress/common/missions/cq;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/missions/cq;->c()V

    .line 614
    return-void
.end method
