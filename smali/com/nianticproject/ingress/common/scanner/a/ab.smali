.class final Lcom/nianticproject/ingress/common/scanner/a/ab;
.super Ljava/lang/ref/WeakReference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference",
        "<",
        "Lcom/nianticproject/ingress/common/scanner/a/ac;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lcom/nianticproject/ingress/common/q/c;

.field final synthetic b:Lcom/nianticproject/ingress/common/scanner/a/u;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/scanner/a/u;Lcom/nianticproject/ingress/common/scanner/a/ac;Ljava/lang/ref/ReferenceQueue;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/common/scanner/a/ac;",
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lcom/nianticproject/ingress/common/scanner/a/ac;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 116
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/a/ab;->b:Lcom/nianticproject/ingress/common/scanner/a/u;

    .line 117
    invoke-direct {p0, p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 118
    invoke-static {p2}, Lcom/nianticproject/ingress/common/scanner/a/ac;->a(Lcom/nianticproject/ingress/common/scanner/a/ac;)Lcom/nianticproject/ingress/common/q/c;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/ab;->a:Lcom/nianticproject/ingress/common/q/c;

    .line 119
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 128
    instance-of v0, p1, Lcom/nianticproject/ingress/common/scanner/a/ab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/ab;->a:Lcom/nianticproject/ingress/common/q/c;

    check-cast p1, Lcom/nianticproject/ingress/common/scanner/a/ab;

    iget-object v1, p1, Lcom/nianticproject/ingress/common/scanner/a/ab;->a:Lcom/nianticproject/ingress/common/q/c;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/q/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/ab;->a:Lcom/nianticproject/ingress/common/q/c;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/q/c;->hashCode()I

    move-result v0

    return v0
.end method
