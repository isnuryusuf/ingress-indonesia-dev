.class final Lcom/nianticproject/ingress/common/g/ag;
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
.field final synthetic a:Lcom/nianticproject/ingress/common/g/ae;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/g/ae;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/nianticproject/ingress/common/g/ag;->a:Lcom/nianticproject/ingress/common/g/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 132
    check-cast p1, Lcom/nianticproject/ingress/gameentity/f;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/ag;->a:Lcom/nianticproject/ingress/common/g/ae;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/g/ae;->a(Lcom/nianticproject/ingress/common/g/ae;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/common/h/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
