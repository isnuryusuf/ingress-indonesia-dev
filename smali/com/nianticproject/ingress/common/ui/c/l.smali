.class final Lcom/nianticproject/ingress/common/ui/c/l;
.super Lcom/nianticproject/ingress/common/x/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nianticproject/ingress/common/x/b",
        "<",
        "Lcom/nianticproject/ingress/shared/rpc/RpcResult",
        "<",
        "Ljava/lang/Void;",
        "Lcom/nianticproject/ingress/server/flip/a;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/ui/c/k;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/ui/c/k;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/c/l;->a:Lcom/nianticproject/ingress/common/ui/c/k;

    invoke-direct {p0, p2}, Lcom/nianticproject/ingress/common/x/b;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final synthetic b(Ljava/lang/Object;)Lcom/nianticproject/ingress/common/x/f;
    .locals 1
    .parameter

    .prologue
    .line 47
    check-cast p1, Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/c/l;->a:Lcom/nianticproject/ingress/common/ui/c/k;

    invoke-static {v0, p1}, Lcom/nianticproject/ingress/common/ui/c/k;->a(Lcom/nianticproject/ingress/common/ui/c/k;Lcom/nianticproject/ingress/shared/rpc/RpcResult;)V

    const/4 v0, 0x0

    return-object v0
.end method
