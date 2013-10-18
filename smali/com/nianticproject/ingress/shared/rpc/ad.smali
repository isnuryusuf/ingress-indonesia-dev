.class public Lcom/nianticproject/ingress/shared/rpc/ad;
.super Lcom/nianticproject/ingress/shared/rpc/ab;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/nianticproject/ingress/shared/rpc/ab",
        "<TR;TE;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/shared/rpc/ah;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
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
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/nianticproject/ingress/shared/rpc/ab;-><init>(Lcom/nianticproject/ingress/shared/rpc/ah;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-static {p4}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/ad;->a:Ljava/util/List;

    .line 21
    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/nianticproject/ingress/shared/rpc/ad;->v_()Lcom/nianticproject/ingress/shared/rpc/ah;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/shared/rpc/ad;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/shared/rpc/ah;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
