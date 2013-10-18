.class final Lcom/nianticproject/ingress/common/missions/d;
.super Lcom/nianticproject/ingress/common/w/g;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/missions/a;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/missions/a;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 448
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/d;->a:Lcom/nianticproject/ingress/common/missions/a;

    invoke-direct {p0, p2}, Lcom/nianticproject/ingress/common/w/g;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    .prologue
    .line 454
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/d;->a:Lcom/nianticproject/ingress/common/missions/a;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/a;->i:Lcom/nianticproject/ingress/common/missions/cq;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/d;->a:Lcom/nianticproject/ingress/common/missions/a;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/missions/a;->i(Lcom/nianticproject/ingress/common/missions/a;)Lcom/nianticproject/ingress/common/missions/cs;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/d;->a:Lcom/nianticproject/ingress/common/missions/a;

    invoke-static {v2}, Lcom/nianticproject/ingress/common/missions/a;->j(Lcom/nianticproject/ingress/common/missions/a;)Ljava/util/List;

    move-result-object v2

    const-string/jumbo v3, "Place a Portal"

    iget-object v4, p0, Lcom/nianticproject/ingress/common/missions/d;->a:Lcom/nianticproject/ingress/common/missions/a;

    invoke-static {v4}, Lcom/nianticproject/ingress/common/missions/a;->h(Lcom/nianticproject/ingress/common/missions/a;)Lcom/nianticproject/ingress/common/missions/aa;

    move-result-object v4

    iget-object v4, v4, Lcom/nianticproject/ingress/common/missions/aa;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/nianticproject/ingress/common/missions/d;->a:Lcom/nianticproject/ingress/common/missions/a;

    invoke-static {v5}, Lcom/nianticproject/ingress/common/missions/a;->h(Lcom/nianticproject/ingress/common/missions/a;)Lcom/nianticproject/ingress/common/missions/aa;

    move-result-object v5

    iget-object v5, v5, Lcom/nianticproject/ingress/common/missions/aa;->c:Lcom/nianticproject/ingress/common/c/bs;

    invoke-virtual {v5}, Lcom/nianticproject/ingress/common/c/bs;->c()F

    move-result v5

    iget-object v6, p0, Lcom/nianticproject/ingress/common/missions/d;->a:Lcom/nianticproject/ingress/common/missions/a;

    invoke-static {v6}, Lcom/nianticproject/ingress/common/missions/a;->k(Lcom/nianticproject/ingress/common/missions/a;)Lcom/nianticproject/ingress/common/ui/widget/z;

    move-result-object v6

    iget-object v7, p0, Lcom/nianticproject/ingress/common/missions/d;->a:Lcom/nianticproject/ingress/common/missions/a;

    invoke-static {v7}, Lcom/nianticproject/ingress/common/missions/a;->l(Lcom/nianticproject/ingress/common/missions/a;)Lcom/nianticproject/ingress/common/ui/widget/z;

    move-result-object v7

    iget-object v8, p0, Lcom/nianticproject/ingress/common/missions/d;->a:Lcom/nianticproject/ingress/common/missions/a;

    iget-boolean v8, v8, Lcom/nianticproject/ingress/common/missions/a;->v:Z

    invoke-interface/range {v0 .. v8}, Lcom/nianticproject/ingress/common/missions/cq;->a(Lcom/nianticproject/ingress/common/missions/cs;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;FLcom/nianticproject/ingress/common/ui/widget/z;Lcom/nianticproject/ingress/common/ui/widget/z;Z)V

    .line 464
    return-void
.end method

.method public final u_()V
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/d;->a:Lcom/nianticproject/ingress/common/missions/a;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/a;->i:Lcom/nianticproject/ingress/common/missions/cq;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/missions/cq;->c()V

    .line 471
    return-void
.end method
