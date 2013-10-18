.class final Lcom/nianticproject/ingress/shared/rpc/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/a/a/aa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/a/a/aa",
        "<",
        "Ljava/util/Map$Entry",
        "<**>;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/shared/rpc/GameBasket;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/shared/rpc/GameBasket;)V
    .locals 0
    .parameter

    .prologue
    .line 537
    iput-object p1, p0, Lcom/nianticproject/ingress/shared/rpc/d;->a:Lcom/nianticproject/ingress/shared/rpc/GameBasket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter

    .prologue
    .line 537
    check-cast p1, Ljava/util/Map$Entry;

    const-string/jumbo v0, "%s=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
