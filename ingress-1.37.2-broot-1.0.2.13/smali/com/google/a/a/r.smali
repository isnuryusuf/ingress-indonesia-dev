.class final Lcom/google/a/a/r;
.super Lcom/google/a/a/t;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 326
    invoke-direct {p0, p1}, Lcom/google/a/a/t;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 337
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 338
    invoke-static {p2, v0}, Lcom/google/a/a/an;->b(II)I

    .line 339
    const/4 v0, -0x1

    return v0
.end method

.method public final a(Lcom/google/a/a/f;)Lcom/google/a/a/f;
    .locals 1
    .parameter

    .prologue
    .line 398
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/a/f;

    return-object v0
.end method

.method public final b(C)Z
    .locals 1
    .parameter

    .prologue
    .line 328
    const/4 v0, 0x0

    return v0
.end method

.method public final b(Ljava/lang/CharSequence;)Z
    .locals 1
    .parameter

    .prologue
    .line 348
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
