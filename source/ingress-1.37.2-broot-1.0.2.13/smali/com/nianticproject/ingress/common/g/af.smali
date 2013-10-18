.class final Lcom/nianticproject/ingress/common/g/af;
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
.field final synthetic a:Lcom/nianticproject/ingress/common/g/ae;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/g/ae;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/nianticproject/ingress/common/g/af;->a:Lcom/nianticproject/ingress/common/g/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 109
    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/af;->a:Lcom/nianticproject/ingress/common/g/ae;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/g/ae;->a(Lcom/nianticproject/ingress/common/g/ae;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/nianticproject/ingress/common/h/c;->a(Ljava/lang/String;)Z

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
