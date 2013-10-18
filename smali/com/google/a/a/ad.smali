.class final Lcom/google/a/a/ad;
.super Lcom/google/a/a/ab;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/a/a/ab;


# direct methods
.method constructor <init>(Lcom/google/a/a/ab;Lcom/google/a/a/ab;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 288
    iput-object p1, p0, Lcom/google/a/a/ad;->a:Lcom/google/a/a/ab;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/a/a/ab;-><init>(Lcom/google/a/a/ab;B)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Appendable;Ljava/util/Iterator;)Ljava/lang/Appendable;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(TA;",
            "Ljava/util/Iterator",
            "<*>;)TA;"
        }
    .end annotation

    .prologue
    .line 291
    const-string/jumbo v0, "appendable"

    invoke-static {p1, v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    const-string/jumbo v0, "parts"

    invoke-static {p2, v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 295
    if-eqz v0, :cond_0

    .line 296
    iget-object v1, p0, Lcom/google/a/a/ad;->a:Lcom/google/a/a/ab;

    invoke-virtual {v1, v0}, Lcom/google/a/a/ab;->a(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 300
    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 301
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 302
    if-eqz v0, :cond_1

    .line 303
    iget-object v1, p0, Lcom/google/a/a/ad;->a:Lcom/google/a/a/ab;

    invoke-static {v1}, Lcom/google/a/a/ab;->a(Lcom/google/a/a/ab;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 304
    iget-object v1, p0, Lcom/google/a/a/ad;->a:Lcom/google/a/a/ab;

    invoke-virtual {v1, v0}, Lcom/google/a/a/ab;->a(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0

    .line 307
    :cond_2
    return-object p1
.end method

.method public final b(Ljava/lang/String;)Lcom/google/a/a/ab;
    .locals 2
    .parameter

    .prologue
    .line 311
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "already specified skipNulls"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c(Ljava/lang/String;)Lcom/google/a/a/af;
    .locals 2
    .parameter

    .prologue
    .line 316
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "can\'t use .skipNulls() with maps"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
