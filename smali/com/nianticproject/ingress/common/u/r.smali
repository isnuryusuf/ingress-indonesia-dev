.class public final Lcom/nianticproject/ingress/common/u/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/nianticproject/ingress/shared/rpc/RpcResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nianticproject/ingress/shared/rpc/RpcResult",
            "<TR;TE;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/nianticproject/ingress/common/u/i;

.field private final c:Lcom/nianticproject/ingress/common/u/j;


# direct methods
.method private constructor <init>(Lcom/nianticproject/ingress/shared/rpc/RpcResult;Lcom/nianticproject/ingress/common/u/i;Lcom/nianticproject/ingress/common/u/j;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/shared/rpc/RpcResult",
            "<TR;TE;>;",
            "Lcom/nianticproject/ingress/common/u/i;",
            "Lcom/nianticproject/ingress/common/u/j;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/nianticproject/ingress/common/u/r;->a:Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    .line 31
    iput-object p2, p0, Lcom/nianticproject/ingress/common/u/r;->b:Lcom/nianticproject/ingress/common/u/i;

    .line 32
    iput-object p3, p0, Lcom/nianticproject/ingress/common/u/r;->c:Lcom/nianticproject/ingress/common/u/j;

    .line 33
    return-void
.end method

.method synthetic constructor <init>(Lcom/nianticproject/ingress/shared/rpc/RpcResult;Lcom/nianticproject/ingress/common/u/i;Lcom/nianticproject/ingress/common/u/j;B)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/nianticproject/ingress/common/u/r;-><init>(Lcom/nianticproject/ingress/shared/rpc/RpcResult;Lcom/nianticproject/ingress/common/u/i;Lcom/nianticproject/ingress/common/u/j;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/shared/rpc/RpcResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nianticproject/ingress/shared/rpc/RpcResult",
            "<TR;TE;>;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/r;->a:Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    return-object v0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/r;->b:Lcom/nianticproject/ingress/common/u/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/r;->b:Lcom/nianticproject/ingress/common/u/i;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/u/i;->a:Lcom/nianticproject/ingress/shared/rpc/GameBasket;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/r;->c:Lcom/nianticproject/ingress/common/u/j;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/u/r;->b:Lcom/nianticproject/ingress/common/u/i;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/u/i;->a:Lcom/nianticproject/ingress/shared/rpc/GameBasket;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/u/j;->b(Lcom/nianticproject/ingress/shared/rpc/GameBasket;)V

    .line 43
    :cond_0
    return-void
.end method
