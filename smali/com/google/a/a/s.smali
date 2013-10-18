.class final Lcom/google/a/a/s;
.super Lcom/google/a/a/t;
.source "SourceFile"


# instance fields
.field final synthetic p:C


# direct methods
.method constructor <init>(Ljava/lang/String;C)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 413
    iput-char p2, p0, Lcom/google/a/a/s;->p:C

    invoke-direct {p0, p1}, Lcom/google/a/a/t;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/a/a/f;)Lcom/google/a/a/f;
    .locals 1
    .parameter

    .prologue
    .line 427
    iget-char v0, p0, Lcom/google/a/a/s;->p:C

    invoke-virtual {p1, v0}, Lcom/google/a/a/f;->b(C)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/google/a/a/t;->a(Lcom/google/a/a/f;)Lcom/google/a/a/f;

    move-result-object p1

    goto :goto_0
.end method

.method public final b(C)Z
    .locals 1
    .parameter

    .prologue
    .line 415
    iget-char v0, p0, Lcom/google/a/a/s;->p:C

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
