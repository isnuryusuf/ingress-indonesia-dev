.class final Lcom/nianticproject/ingress/common/u/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/u/ad;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/u/j;

.field private final b:Lcom/nianticproject/ingress/common/model/e;

.field private final c:J


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/u/j;Lcom/nianticproject/ingress/shared/rpc/l;JLcom/google/a/d/u;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/nianticproject/ingress/common/u/l;->a:Lcom/nianticproject/ingress/common/u/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-wide p3, p0, Lcom/nianticproject/ingress/common/u/l;->c:J

    .line 64
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-eqz v0, :cond_0

    .line 65
    invoke-static {p1}, Lcom/nianticproject/ingress/common/u/j;->b(Lcom/nianticproject/ingress/common/u/j;)Lcom/nianticproject/ingress/common/x/i;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/common/u/m;

    invoke-direct {v1, p0, p1, p3, p4}, Lcom/nianticproject/ingress/common/u/m;-><init>(Lcom/nianticproject/ingress/common/u/l;Lcom/nianticproject/ingress/common/u/j;J)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/x/i;->a(Lcom/nianticproject/ingress/common/x/f;)V

    .line 83
    :cond_0
    invoke-static {p5}, Lcom/nianticproject/ingress/shared/b/a;->a(Lcom/google/a/d/u;)Lcom/google/a/d/u;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/nianticproject/ingress/shared/rpc/l;->a(Lcom/google/a/d/u;)V

    .line 84
    invoke-static {p1}, Lcom/nianticproject/ingress/common/u/j;->c(Lcom/nianticproject/ingress/common/u/j;)Lcom/nianticproject/ingress/common/model/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/model/d;->d()Lcom/nianticproject/ingress/common/model/e;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/u/l;->b:Lcom/nianticproject/ingress/common/model/e;

    .line 85
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/l;->b:Lcom/nianticproject/ingress/common/model/e;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/model/e;->b:Ljava/util/Set;

    invoke-interface {p2, v0}, Lcom/nianticproject/ingress/shared/rpc/l;->a(Ljava/util/Set;)V

    .line 86
    invoke-static {}, Lcom/nianticproject/ingress/common/q;->a()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lcom/nianticproject/ingress/shared/rpc/l;->a(J)V

    .line 89
    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->j()Lcom/nianticproject/ingress/common/r;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/r;->a()Lcom/nianticproject/ingress/common/u/av;

    move-result-object v0

    .line 92
    if-nez v0, :cond_1

    invoke-static {}, Lcom/nianticproject/ingress/common/u/av;->u()Lcom/nianticproject/ingress/common/u/aw;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/u/aw;->a(J)Lcom/nianticproject/ingress/common/u/aw;

    move-result-object v0

    .line 97
    :goto_0
    invoke-static {}, Lcom/nianticproject/ingress/common/ag;->a()Lcom/nianticproject/ingress/common/ag;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/ag;->a(Lcom/nianticproject/ingress/common/u/aw;)V

    .line 99
    invoke-static {p1}, Lcom/nianticproject/ingress/common/u/j;->d(Lcom/nianticproject/ingress/common/u/j;)Lcom/nianticproject/ingress/common/u/f;

    move-result-object v1

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/u/aw;->c()Lcom/nianticproject/ingress/common/u/av;

    move-result-object v0

    check-cast p2, Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, p2, v2, v3}, Lcom/nianticproject/ingress/common/u/f;->a(Lcom/nianticproject/ingress/common/u/av;Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams;ZZ)V

    .line 101
    return-void

    .line 92
    :cond_1
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/u/av;->v()Lcom/nianticproject/ingress/common/u/aw;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/u/l;)J
    .locals 2
    .parameter

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/u/l;->c:J

    return-wide v0
.end method


# virtual methods
.method public final a(Z)V
    .locals 4
    .parameter

    .prologue
    .line 114
    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/nianticproject/ingress/common/u/l;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/l;->a:Lcom/nianticproject/ingress/common/u/j;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/u/j;->b(Lcom/nianticproject/ingress/common/u/j;)Lcom/nianticproject/ingress/common/x/i;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/common/u/n;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/common/u/n;-><init>(Lcom/nianticproject/ingress/common/u/l;)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/x/i;->a(Lcom/nianticproject/ingress/common/x/f;)V

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/l;->a:Lcom/nianticproject/ingress/common/u/j;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/u/j;->c(Lcom/nianticproject/ingress/common/u/j;)Lcom/nianticproject/ingress/common/model/d;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/u/l;->b:Lcom/nianticproject/ingress/common/model/e;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v2, v0}, Lcom/nianticproject/ingress/common/model/d;->a(Lcom/nianticproject/ingress/common/model/e;Z)V

    .line 133
    return-void

    .line 132
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
