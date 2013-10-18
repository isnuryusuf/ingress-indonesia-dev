.class final Lcom/nianticproject/ingress/common/h/t;
.super Lcom/nianticproject/ingress/common/x/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/shared/rpc/RpcResult;

.field final synthetic b:Lcom/nianticproject/ingress/common/h/s;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/h/s;Ljava/lang/String;Lcom/nianticproject/ingress/shared/rpc/RpcResult;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/nianticproject/ingress/common/h/t;->b:Lcom/nianticproject/ingress/common/h/s;

    iput-object p3, p0, Lcom/nianticproject/ingress/common/h/t;->a:Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    invoke-direct {p0, p2}, Lcom/nianticproject/ingress/common/x/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/x/p;)Lcom/nianticproject/ingress/common/x/f;
    .locals 1
    .parameter

    .prologue
    .line 166
    new-instance v0, Lcom/nianticproject/ingress/common/h/u;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/h/u;-><init>(Lcom/nianticproject/ingress/common/h/t;)V

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/h/u;->e()Lcom/nianticproject/ingress/common/f/a;

    .line 173
    const/4 v0, 0x0

    return-object v0
.end method
