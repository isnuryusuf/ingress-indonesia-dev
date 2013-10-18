.class public Lcom/nianticproject/ingress/shared/rpc/ac;
.super Lcom/nianticproject/ingress/shared/rpc/ab;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/nianticproject/ingress/shared/rpc/ab",
        "<TR;TE;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TP;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/shared/rpc/ah;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/shared/rpc/ah",
            "<",
            "Lcom/nianticproject/ingress/shared/rpc/RpcResult",
            "<TR;TE;>;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TP;)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/nianticproject/ingress/shared/rpc/ab;-><init>(Lcom/nianticproject/ingress/shared/rpc/ah;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-static {p4}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/ac;->a:Ljava/lang/Object;

    .line 23
    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/nianticproject/ingress/shared/rpc/ac;->v_()Lcom/nianticproject/ingress/shared/rpc/ah;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/shared/rpc/ac;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/shared/rpc/ah;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/ac;->a:Ljava/lang/Object;

    return-object v0
.end method
