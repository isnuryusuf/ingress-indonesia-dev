.class final Lcom/nianticproject/ingress/common/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/x/f;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/ad;

.field final synthetic b:Lcom/nianticproject/ingress/common/r;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/r;Lcom/nianticproject/ingress/common/ad;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/nianticproject/ingress/common/s;->b:Lcom/nianticproject/ingress/common/r;

    iput-object p2, p0, Lcom/nianticproject/ingress/common/s;->a:Lcom/nianticproject/ingress/common/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/x/p;)Lcom/nianticproject/ingress/common/x/f;
    .locals 2
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, Lcom/nianticproject/ingress/common/s;->b:Lcom/nianticproject/ingress/common/r;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/r;->a:Lcom/nianticproject/ingress/common/model/k;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/s;->a:Lcom/nianticproject/ingress/common/ad;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/model/k;->a(Lcom/nianticproject/ingress/common/ad;)V

    .line 197
    const/4 v0, 0x0

    return-object v0
.end method

.method public final n_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    const-string/jumbo v0, "updateLocation"

    return-object v0
.end method
