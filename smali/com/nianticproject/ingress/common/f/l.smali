.class final Lcom/nianticproject/ingress/common/f/l;
.super Lcom/nianticproject/ingress/common/x/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/shared/rpc/RpcResult;

.field final synthetic b:Lcom/nianticproject/ingress/common/f/k;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/f/k;Ljava/lang/String;Lcom/nianticproject/ingress/shared/rpc/RpcResult;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/nianticproject/ingress/common/f/l;->b:Lcom/nianticproject/ingress/common/f/k;

    iput-object p3, p0, Lcom/nianticproject/ingress/common/f/l;->a:Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    invoke-direct {p0, p2}, Lcom/nianticproject/ingress/common/x/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/x/p;)Lcom/nianticproject/ingress/common/x/f;
    .locals 2
    .parameter

    .prologue
    .line 174
    iget-object v0, p0, Lcom/nianticproject/ingress/common/f/l;->b:Lcom/nianticproject/ingress/common/f/k;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/f/k;->b:Lcom/nianticproject/ingress/common/f/j;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/f/l;->a:Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/f/j;->e()V

    .line 175
    const/4 v0, 0x0

    return-object v0
.end method
