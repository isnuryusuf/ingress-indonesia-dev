.class final Lcom/nianticproject/ingress/common/missions/bv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/missions/cj;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/missions/bp;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/missions/bp;)V
    .locals 0
    .parameter

    .prologue
    .line 410
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/bv;->a:Lcom/nianticproject/ingress/common/missions/bp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/missions/ck;)V
    .locals 3
    .parameter

    .prologue
    .line 413
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bv;->a:Lcom/nianticproject/ingress/common/missions/bp;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/missions/bp;->a(Lcom/nianticproject/ingress/common/missions/bp;)Lcom/nianticproject/ingress/common/missions/bo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/missions/bo;->b()Lcom/nianticproject/ingress/common/missions/ch;

    move-result-object v0

    .line 416
    invoke-interface {v0, p0}, Lcom/nianticproject/ingress/common/missions/ch;->b(Lcom/nianticproject/ingress/common/missions/cj;)V

    .line 418
    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/bv;->a:Lcom/nianticproject/ingress/common/missions/bp;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/missions/bp;->a(Lcom/nianticproject/ingress/common/missions/bp;)Lcom/nianticproject/ingress/common/missions/bo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/missions/bo;->a()Lcom/nianticproject/ingress/common/model/a/i;

    move-result-object v1

    .line 419
    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/bv;->a:Lcom/nianticproject/ingress/common/missions/bp;

    invoke-static {v2, v1, p1}, Lcom/nianticproject/ingress/common/missions/bp;->a(Lcom/nianticproject/ingress/common/missions/bp;Lcom/nianticproject/ingress/common/model/a/i;Lcom/nianticproject/ingress/common/missions/ck;)V

    .line 422
    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/bv;->a:Lcom/nianticproject/ingress/common/missions/bp;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/missions/bp;->d(Lcom/nianticproject/ingress/common/missions/bp;)Lcom/nianticproject/ingress/common/a;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-interface {v1, v2}, Lcom/nianticproject/ingress/common/a;->c(Ljava/lang/String;)V

    .line 424
    invoke-interface {v0}, Lcom/nianticproject/ingress/common/missions/ch;->h()V

    .line 425
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bv;->a:Lcom/nianticproject/ingress/common/missions/bp;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/missions/bp;->e(Lcom/nianticproject/ingress/common/missions/bp;)Lcom/nianticproject/ingress/common/missions/bo;

    .line 428
    sget-object v0, Lcom/nianticproject/ingress/common/missions/ck;->c:Lcom/nianticproject/ingress/common/missions/ck;

    if-ne p1, v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bv;->a:Lcom/nianticproject/ingress/common/missions/bp;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/missions/bp;->f(Lcom/nianticproject/ingress/common/missions/bp;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/missions/ca;

    .line 430
    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/bv;->a:Lcom/nianticproject/ingress/common/missions/bp;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/missions/co;->a(Lcom/nianticproject/ingress/common/missions/ca;)Lcom/nianticproject/ingress/common/model/a/i;

    move-result-object v0

    invoke-static {v2, v0, p1}, Lcom/nianticproject/ingress/common/missions/bp;->a(Lcom/nianticproject/ingress/common/missions/bp;Lcom/nianticproject/ingress/common/model/a/i;Lcom/nianticproject/ingress/common/missions/ck;)V

    goto :goto_0

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bv;->a:Lcom/nianticproject/ingress/common/missions/bp;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/missions/bp;->g(Lcom/nianticproject/ingress/common/missions/bp;)Lcom/nianticproject/ingress/common/missions/ca;

    move-result-object v0

    .line 435
    if-eqz v0, :cond_1

    .line 437
    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/bv;->a:Lcom/nianticproject/ingress/common/missions/bp;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/missions/bp;->b(Lcom/nianticproject/ingress/common/missions/bp;)Lcom/nianticproject/ingress/common/g/p;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/nianticproject/ingress/common/g/p;->a(Z)V

    .line 438
    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/bv;->a:Lcom/nianticproject/ingress/common/missions/bp;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/missions/bp;->b(Lcom/nianticproject/ingress/common/missions/bp;)Lcom/nianticproject/ingress/common/g/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/g/p;->j()Lcom/nianticproject/ingress/common/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/r;->b()V

    .line 439
    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/bv;->a:Lcom/nianticproject/ingress/common/missions/bp;

    invoke-static {v1, v0}, Lcom/nianticproject/ingress/common/missions/bp;->a(Lcom/nianticproject/ingress/common/missions/bp;Lcom/nianticproject/ingress/common/missions/ca;)V

    .line 443
    :goto_1
    return-void

    .line 441
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bv;->a:Lcom/nianticproject/ingress/common/missions/bp;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/missions/bp;->h(Lcom/nianticproject/ingress/common/missions/bp;)V

    goto :goto_1
.end method
