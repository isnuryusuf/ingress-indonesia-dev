.class final Lcom/nianticproject/ingress/common/h/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/x/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/nianticproject/ingress/common/x/g",
        "<",
        "Lcom/nianticproject/ingress/shared/rpc/RpcResult",
        "<",
        "Ljava/lang/String;",
        "Lcom/nianticproject/ingress/shared/ad;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/x/g;

.field final synthetic b:Lcom/nianticproject/ingress/common/h/ac;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/h/ac;Lcom/nianticproject/ingress/common/x/g;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/nianticproject/ingress/common/h/ad;->b:Lcom/nianticproject/ingress/common/h/ac;

    iput-object p2, p0, Lcom/nianticproject/ingress/common/h/ad;->a:Lcom/nianticproject/ingress/common/x/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 140
    check-cast p1, Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/h/ad;->b:Lcom/nianticproject/ingress/common/h/ac;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/h/ac;->a(Lcom/nianticproject/ingress/common/h/ac;)Z

    iget-object v0, p0, Lcom/nianticproject/ingress/common/h/ad;->a:Lcom/nianticproject/ingress/common/x/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/h/ad;->a:Lcom/nianticproject/ingress/common/x/g;

    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/common/x/g;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
