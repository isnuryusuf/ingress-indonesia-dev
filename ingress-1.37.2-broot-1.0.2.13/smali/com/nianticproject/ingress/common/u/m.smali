.class final Lcom/nianticproject/ingress/common/u/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/x/f;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/u/j;

.field final synthetic b:J

.field final synthetic c:Lcom/nianticproject/ingress/common/u/l;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/u/l;Lcom/nianticproject/ingress/common/u/j;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/nianticproject/ingress/common/u/m;->c:Lcom/nianticproject/ingress/common/u/l;

    iput-object p2, p0, Lcom/nianticproject/ingress/common/u/m;->a:Lcom/nianticproject/ingress/common/u/j;

    iput-wide p3, p0, Lcom/nianticproject/ingress/common/u/m;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/x/p;)Lcom/nianticproject/ingress/common/x/f;
    .locals 4
    .parameter

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/u/m;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/m;->c:Lcom/nianticproject/ingress/common/u/l;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/u/l;->a:Lcom/nianticproject/ingress/common/u/j;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/u/j;->a(Lcom/nianticproject/ingress/common/u/j;)Lcom/nianticproject/ingress/common/model/k;

    move-result-object v0

    iget-wide v1, p0, Lcom/nianticproject/ingress/common/u/m;->b:J

    invoke-interface {v0, v1, v2}, Lcom/nianticproject/ingress/common/model/k;->b(J)V

    .line 73
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/m;->c:Lcom/nianticproject/ingress/common/u/l;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/u/l;->a:Lcom/nianticproject/ingress/common/u/j;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/u/j;->a(Lcom/nianticproject/ingress/common/u/j;)Lcom/nianticproject/ingress/common/model/k;

    move-result-object v0

    iget-wide v1, p0, Lcom/nianticproject/ingress/common/u/m;->b:J

    neg-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/nianticproject/ingress/common/model/k;->a(J)V

    goto :goto_0
.end method

.method public final n_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const-string/jumbo v0, "consumeEnergyCostPrediction"

    return-object v0
.end method
