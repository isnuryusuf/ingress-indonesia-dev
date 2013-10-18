.class public Lcom/nianticproject/ingress/common/u/af;
.super Lcom/nianticproject/ingress/shared/rpc/x;
.source "SourceFile"


# static fields
.field private static final c:Lcom/nianticproject/ingress/common/w/aa;


# instance fields
.field private final d:Lcom/nianticproject/ingress/common/u/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/common/u/af;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/common/u/af;->c:Lcom/nianticproject/ingress/common/w/aa;

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lcom/nianticproject/ingress/shared/rpc/a;Lcom/nianticproject/ingress/common/u/h;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/nianticproject/ingress/shared/rpc/x;-><init>(Ljava/net/URI;Lcom/nianticproject/ingress/shared/rpc/a;)V

    .line 31
    iput-object p3, p0, Lcom/nianticproject/ingress/common/u/af;->d:Lcom/nianticproject/ingress/common/u/h;

    .line 32
    return-void
.end method


# virtual methods
.method protected final a(Lcom/nianticproject/ingress/shared/rpc/ab;Lcom/nianticproject/ingress/shared/rpc/y;Ljava/lang/String;)Lcom/nianticproject/ingress/shared/rpc/y;
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/shared/rpc/ab",
            "<**>;",
            "Lcom/nianticproject/ingress/shared/rpc/y;",
            "Ljava/lang/String;",
            ")",
            "Lcom/nianticproject/ingress/shared/rpc/y;"
        }
    .end annotation

    .prologue
    .line 52
    sget-object v0, Lcom/nianticproject/ingress/common/u/af;->c:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "RPC for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/rpc/ab;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, p2, v1, v2}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    return-object p2
.end method

.method protected final a(Ljava/net/URI;Lcom/nianticproject/ingress/shared/rpc/a;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-static {p1, p2, p3}, Lcom/nianticproject/ingress/common/z;->a(Ljava/net/URI;Lcom/nianticproject/ingress/shared/rpc/a;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Lcom/nianticproject/ingress/shared/rpc/GameBasket;)V
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/af;->d:Lcom/nianticproject/ingress/common/u/h;

    invoke-static {v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/af;->d:Lcom/nianticproject/ingress/common/u/h;

    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/common/u/h;->a(Lcom/nianticproject/ingress/shared/rpc/GameBasket;)V

    .line 47
    return-void
.end method
