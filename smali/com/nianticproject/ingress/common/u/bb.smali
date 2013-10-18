.class final Lcom/nianticproject/ingress/common/u/bb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/u/ad;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/shared/rpc/l;Lcom/google/a/d/u;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-interface {p1, p2}, Lcom/nianticproject/ingress/shared/rpc/l;->a(Lcom/google/a/d/u;)V

    .line 31
    invoke-static {}, Lcom/nianticproject/ingress/common/q;->a()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/nianticproject/ingress/shared/rpc/l;->a(J)V

    .line 32
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 35
    return-void
.end method
