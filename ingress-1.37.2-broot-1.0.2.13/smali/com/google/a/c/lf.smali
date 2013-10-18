.class final enum Lcom/google/a/c/lf;
.super Lcom/google/a/c/ld;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 143
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/a/c/ld;-><init>(Ljava/lang/String;IB)V

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
    .line 146
    const/4 v0, 0x1

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
    .line 151
    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {p1}, Lcom/google/a/c/lg;->c(Lcom/google/a/c/lg;)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method
