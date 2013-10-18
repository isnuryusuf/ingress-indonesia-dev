.class final enum Lcom/google/a/c/le;
.super Lcom/google/a/c/ld;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 132
    invoke-direct {p0, p1, v0, v0}, Lcom/google/a/c/ld;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final a(Lcom/google/a/c/lg;)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/lg",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 135
    invoke-static {p1}, Lcom/google/a/c/lg;->a(Lcom/google/a/c/lg;)I

    move-result v0

    return v0
.end method

.method final b(Lcom/google/a/c/lg;)J
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/lg",
            "<*>;)J"
        }
    .end annotation

    .prologue
    .line 140
    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {p1}, Lcom/google/a/c/lg;->b(Lcom/google/a/c/lg;)J

    move-result-wide v0

    goto :goto_0
.end method
