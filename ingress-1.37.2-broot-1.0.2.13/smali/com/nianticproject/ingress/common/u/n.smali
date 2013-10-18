.class final Lcom/nianticproject/ingress/common/u/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/x/f;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/u/l;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/u/l;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/nianticproject/ingress/common/u/n;->a:Lcom/nianticproject/ingress/common/u/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/x/p;)Lcom/nianticproject/ingress/common/x/f;
    .locals 3
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/n;->a:Lcom/nianticproject/ingress/common/u/l;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/u/l;->a:Lcom/nianticproject/ingress/common/u/j;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/u/j;->a(Lcom/nianticproject/ingress/common/u/j;)Lcom/nianticproject/ingress/common/model/k;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/u/n;->a:Lcom/nianticproject/ingress/common/u/l;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/u/l;->a(Lcom/nianticproject/ingress/common/u/l;)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/nianticproject/ingress/common/model/k;->c(J)V

    .line 119
    const/4 v0, 0x0

    return-object v0
.end method

.method public final n_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    const-string/jumbo v0, "refundEnergyCostPrediction"

    return-object v0
.end method
