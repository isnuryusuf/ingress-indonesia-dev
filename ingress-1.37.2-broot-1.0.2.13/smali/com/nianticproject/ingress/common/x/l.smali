.class final Lcom/nianticproject/ingress/common/x/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/x/f;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/x/i;

.field final synthetic b:J

.field final synthetic c:Lcom/nianticproject/ingress/common/x/k;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/x/k;Lcom/nianticproject/ingress/common/x/i;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/nianticproject/ingress/common/x/l;->c:Lcom/nianticproject/ingress/common/x/k;

    iput-object p2, p0, Lcom/nianticproject/ingress/common/x/l;->a:Lcom/nianticproject/ingress/common/x/i;

    iput-wide p3, p0, Lcom/nianticproject/ingress/common/x/l;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/x/p;)Lcom/nianticproject/ingress/common/x/f;
    .locals 10
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Lcom/nianticproject/ingress/common/x/l;->c:Lcom/nianticproject/ingress/common/x/k;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/x/k;->a(Lcom/nianticproject/ingress/common/x/k;)Lcom/nianticproject/ingress/common/x/f;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/common/x/f;->a(Lcom/nianticproject/ingress/common/x/p;)Lcom/nianticproject/ingress/common/x/f;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_0

    .line 125
    iget-object v1, p0, Lcom/nianticproject/ingress/common/x/l;->c:Lcom/nianticproject/ingress/common/x/k;

    invoke-static {v1, v0}, Lcom/nianticproject/ingress/common/x/k;->a(Lcom/nianticproject/ingress/common/x/k;Lcom/nianticproject/ingress/common/x/f;)Lcom/nianticproject/ingress/common/x/f;

    .line 131
    :goto_0
    return-object v0

    .line 129
    :cond_0
    iget-object v9, p0, Lcom/nianticproject/ingress/common/x/l;->a:Lcom/nianticproject/ingress/common/x/i;

    new-instance v0, Lcom/nianticproject/ingress/common/x/k;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/x/l;->a:Lcom/nianticproject/ingress/common/x/i;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/x/l;->c:Lcom/nianticproject/ingress/common/x/k;

    invoke-static {v2}, Lcom/nianticproject/ingress/common/x/k;->b(Lcom/nianticproject/ingress/common/x/k;)Lcom/nianticproject/ingress/common/x/f;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/nianticproject/ingress/common/x/l;->b:J

    iget-wide v7, p0, Lcom/nianticproject/ingress/common/x/l;->b:J

    invoke-direct/range {v0 .. v8}, Lcom/nianticproject/ingress/common/x/k;-><init>(Lcom/nianticproject/ingress/common/x/i;Lcom/nianticproject/ingress/common/x/f;JJJ)V

    invoke-virtual {v9, v0}, Lcom/nianticproject/ingress/common/x/i;->a(Lcom/nianticproject/ingress/common/x/k;)V

    .line 131
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final n_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/nianticproject/ingress/common/x/l;->c:Lcom/nianticproject/ingress/common/x/k;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/x/k;->b(Lcom/nianticproject/ingress/common/x/k;)Lcom/nianticproject/ingress/common/x/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/x/f;->n_()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
