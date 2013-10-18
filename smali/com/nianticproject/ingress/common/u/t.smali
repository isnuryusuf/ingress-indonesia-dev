.class public final Lcom/nianticproject/ingress/common/u/t;
.super Lcom/nianticproject/ingress/shared/rpc/ac;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/nianticproject/ingress/shared/rpc/ac",
        "<",
        "Lcom/nianticproject/ingress/shared/rpc/l;",
        "TR;TE;>;"
    }
.end annotation


# instance fields
.field private final a:J


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/shared/rpc/ah;Ljava/lang/String;Ljava/lang/String;Lcom/nianticproject/ingress/shared/rpc/l;J)V
    .locals 0
    .parameter
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
            "Lcom/nianticproject/ingress/shared/rpc/l;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nianticproject/ingress/shared/rpc/ac;-><init>(Lcom/nianticproject/ingress/shared/rpc/ah;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    iput-wide p5, p0, Lcom/nianticproject/ingress/common/u/t;->a:J

    .line 22
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/u/t;->a:J

    return-wide v0
.end method
