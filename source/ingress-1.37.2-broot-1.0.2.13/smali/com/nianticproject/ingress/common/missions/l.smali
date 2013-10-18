.class final Lcom/nianticproject/ingress/common/missions/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/missions/em;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/missions/a;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/missions/a;)V
    .locals 0
    .parameter

    .prologue
    .line 723
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/l;->a:Lcom/nianticproject/ingress/common/missions/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/shared/rpc/RpcResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nianticproject/ingress/shared/rpc/RpcResult",
            "<",
            "Lcom/nianticproject/ingress/shared/FireEmpResult;",
            "Lcom/nianticproject/ingress/shared/e;",
            ">;"
        }
    .end annotation

    .prologue
    .line 726
    sget-object v0, Lcom/nianticproject/ingress/shared/e;->i:Lcom/nianticproject/ingress/shared/e;

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->a(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    move-result-object v0

    return-object v0
.end method
