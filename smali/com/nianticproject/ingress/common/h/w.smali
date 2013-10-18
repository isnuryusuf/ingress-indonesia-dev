.class Lcom/nianticproject/ingress/common/h/w;
.super Lcom/nianticproject/ingress/common/u/q;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/h/r;

.field private final c:Lcom/nianticproject/ingress/common/w/aa;

.field private final d:Lcom/nianticproject/ingress/shared/rpc/RpcResult;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/h/r;Lcom/nianticproject/ingress/shared/rpc/RpcResult;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/nianticproject/ingress/common/h/w;->a:Lcom/nianticproject/ingress/common/h/r;

    .line 72
    const/4 v0, 0x0

    const-string/jumbo v1, "https://localhost/"

    invoke-direct {p0, v0, v1}, Lcom/nianticproject/ingress/common/u/q;-><init>(Lcom/nianticproject/ingress/common/u/b;Ljava/lang/String;)V

    .line 67
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/common/h/w;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/h/w;->c:Lcom/nianticproject/ingress/common/w/aa;

    .line 73
    iput-object p2, p0, Lcom/nianticproject/ingress/common/h/w;->d:Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    .line 74
    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/u/t;)Lcom/nianticproject/ingress/common/u/r;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/nianticproject/ingress/common/u/t",
            "<TR;TE;>;)",
            "Lcom/nianticproject/ingress/common/u/r",
            "<TR;TE;>;"
        }
    .end annotation

    .prologue
    .line 88
    const-wide/16 v0, 0x32

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/h/w;->d:Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nianticproject/ingress/common/h/w;->a(Lcom/nianticproject/ingress/shared/rpc/RpcResult;Lcom/nianticproject/ingress/common/u/i;)Lcom/nianticproject/ingress/common/u/r;

    move-result-object v0

    return-object v0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    iget-object v1, p0, Lcom/nianticproject/ingress/common/h/w;->c:Lcom/nianticproject/ingress/common/w/aa;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "RPCResult: sleep exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lcom/nianticproject/ingress/common/u/j;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    return-void
.end method
