.class final Lcom/google/a/c/kc;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static synthetic a(Lcom/google/a/c/hu;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 41
    if-nez p0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    invoke-interface {p0}, Lcom/google/a/c/hu;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/google/a/c/hu;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 41
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Lcom/google/a/c/hu;->a()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
