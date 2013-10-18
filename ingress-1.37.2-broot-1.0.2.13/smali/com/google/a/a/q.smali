.class final Lcom/google/a/a/q;
.super Lcom/google/a/a/t;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 250
    invoke-direct {p0, p1}, Lcom/google/a/a/t;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 260
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 261
    invoke-static {p2, v0}, Lcom/google/a/a/an;->b(II)I

    .line 262
    if-ne p2, v0, :cond_0

    const/4 p2, -0x1

    :cond_0
    return p2
.end method

.method public final a(Lcom/google/a/a/f;)Lcom/google/a/a/f;
    .locals 0
    .parameter

    .prologue
    .line 315
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    return-object p0
.end method

.method public final b(C)Z
    .locals 1
    .parameter

    .prologue
    .line 252
    const/4 v0, 0x1

    return v0
.end method

.method public final b(Ljava/lang/CharSequence;)Z
    .locals 1
    .parameter

    .prologue
    .line 270
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    const/4 v0, 0x1

    return v0
.end method
