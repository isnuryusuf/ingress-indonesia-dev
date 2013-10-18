.class final Lcom/nianticproject/ingress/shared/rpc/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/a/a/ao;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/a/a/ao",
        "<",
        "Lcom/nianticproject/ingress/gameentity/f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Set;


# direct methods
.method constructor <init>(Ljava/util/Set;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    iput-object p1, p0, Lcom/nianticproject/ingress/shared/rpc/k;->a:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 20
    check-cast p1, Lcom/nianticproject/ingress/gameentity/f;

    iget-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/k;->a:Ljava/util/Set;

    invoke-interface {p1}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
