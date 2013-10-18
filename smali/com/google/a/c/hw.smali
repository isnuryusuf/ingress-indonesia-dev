.class final Lcom/google/a/c/hw;
.super Lcom/google/a/c/ih;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/c/ih",
        "<",
        "Lcom/google/a/c/hu",
        "<*>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1060
    invoke-direct {p0}, Lcom/google/a/c/ih;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1060
    check-cast p1, Lcom/google/a/c/hu;

    check-cast p2, Lcom/google/a/c/hu;

    invoke-interface {p2}, Lcom/google/a/c/hu;->b()I

    move-result v0

    invoke-interface {p1}, Lcom/google/a/c/hu;->b()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
