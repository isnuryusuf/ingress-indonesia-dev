.class final Lcom/nianticproject/ingress/common/ui/c/b;
.super Lcom/nianticproject/ingress/common/x/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nianticproject/ingress/common/x/b",
        "<",
        "Lcom/nianticproject/ingress/shared/rpc/RpcResult",
        "<",
        "Lcom/nianticproject/ingress/shared/rpc/DischargePowerCubeResult;",
        "Lcom/nianticproject/ingress/shared/rpc/c;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/ui/c/a;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/ui/c/a;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/c/b;->a:Lcom/nianticproject/ingress/common/ui/c/a;

    invoke-direct {p0, p2}, Lcom/nianticproject/ingress/common/x/b;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final synthetic b(Ljava/lang/Object;)Lcom/nianticproject/ingress/common/x/f;
    .locals 1
    .parameter

    .prologue
    .line 29
    check-cast p1, Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/c/b;->a:Lcom/nianticproject/ingress/common/ui/c/a;

    invoke-static {v0, p1}, Lcom/nianticproject/ingress/common/ui/c/a;->a(Lcom/nianticproject/ingress/common/ui/c/a;Lcom/nianticproject/ingress/shared/rpc/RpcResult;)V

    const/4 v0, 0x0

    return-object v0
.end method
