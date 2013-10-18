.class final Lcom/nianticproject/ingress/common/ui/c/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/a/a/ba;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/a/a/ba",
        "<",
        "Lcom/nianticproject/ingress/shared/rpc/RpcResult",
        "<",
        "Lcom/nianticproject/ingress/shared/FireEmpResult;",
        "Lcom/nianticproject/ingress/shared/e;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/ui/c/c;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/ui/c/c;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/c/d;->a:Lcom/nianticproject/ingress/common/ui/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 107
    check-cast p1, Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/c/d;->a:Lcom/nianticproject/ingress/common/ui/c/c;

    invoke-static {v0, p1}, Lcom/nianticproject/ingress/common/ui/c/c;->a(Lcom/nianticproject/ingress/common/ui/c/c;Lcom/nianticproject/ingress/shared/rpc/RpcResult;)V

    return-void
.end method
