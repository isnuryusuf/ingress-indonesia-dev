.class final Lcom/nianticproject/ingress/common/h/u;
.super Lcom/nianticproject/ingress/common/f/h;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/h/t;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/h/t;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/nianticproject/ingress/common/h/u;->a:Lcom/nianticproject/ingress/common/h/t;

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/f/h;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/nianticproject/ingress/common/h/u;->a:Lcom/nianticproject/ingress/common/h/t;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/h/t;->b:Lcom/nianticproject/ingress/common/h/s;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/h/u;->a:Lcom/nianticproject/ingress/common/h/t;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/h/t;->a:Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/h/s;->a(Lcom/nianticproject/ingress/common/h/s;Lcom/nianticproject/ingress/shared/rpc/RpcResult;)V

    const/4 v0, 0x0

    return-object v0
.end method
