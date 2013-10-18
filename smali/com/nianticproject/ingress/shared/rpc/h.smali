.class final Lcom/nianticproject/ingress/shared/rpc/h;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/shared/rpc/g;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/shared/rpc/g;)V
    .locals 0
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/nianticproject/ingress/shared/rpc/h;->a:Lcom/nianticproject/ingress/shared/rpc/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 228
    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/h;->a:Lcom/nianticproject/ingress/shared/rpc/g;

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/rpc/g;->a(Lcom/nianticproject/ingress/shared/rpc/g;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
