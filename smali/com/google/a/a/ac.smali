.class final Lcom/google/a/a/ac;
.super Lcom/google/a/a/ab;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/a/a/ab;


# direct methods
.method constructor <init>(Lcom/google/a/a/ab;Lcom/google/a/a/ab;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/google/a/a/ac;->b:Lcom/google/a/a/ab;

    iput-object p3, p0, Lcom/google/a/a/ac;->a:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/a/a/ab;-><init>(Lcom/google/a/a/ab;B)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/a/a/ab;
    .locals 2

    .prologue
    .line 277
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "already specified useForNull"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final a(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .parameter

    .prologue
    .line 268
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/google/a/a/ac;->a:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/a/a/ac;->b:Lcom/google/a/a/ab;

    invoke-virtual {v0, p1}, Lcom/google/a/a/ab;->a(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/a/a/ab;
    .locals 2
    .parameter

    .prologue
    .line 272
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "already specified useForNull"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
