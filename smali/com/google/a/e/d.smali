.class final Lcom/google/a/e/d;
.super Lcom/google/a/e/b;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/a/e/e;

.field final synthetic b:Lcom/google/a/e/c;


# direct methods
.method constructor <init>(Lcom/google/a/e/c;)V
    .locals 1
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/a/e/d;->b:Lcom/google/a/e/c;

    invoke-direct {p0}, Lcom/google/a/e/b;-><init>()V

    .line 89
    new-instance v0, Lcom/google/a/e/e;

    invoke-direct {v0}, Lcom/google/a/e/e;-><init>()V

    iput-object v0, p0, Lcom/google/a/e/d;->a:Lcom/google/a/e/e;

    .line 90
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/a/e/u;
    .locals 3

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/a/e/d;->b:Lcom/google/a/e/c;

    iget-object v1, p0, Lcom/google/a/e/d;->a:Lcom/google/a/e/e;

    invoke-virtual {v1}, Lcom/google/a/e/e;->a()[B

    move-result-object v1

    iget-object v2, p0, Lcom/google/a/e/d;->a:Lcom/google/a/e/e;

    invoke-virtual {v2}, Lcom/google/a/e/e;->b()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/a/e/c;->a([BI)Lcom/google/a/e/u;

    move-result-object v0

    return-object v0
.end method

.method public final b([B)Lcom/google/a/e/aa;
    .locals 2
    .parameter

    .prologue
    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/google/a/e/d;->a:Lcom/google/a/e/e;

    invoke-virtual {v0, p1}, Lcom/google/a/e/e;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    return-object p0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final b([BII)Lcom/google/a/e/aa;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/a/e/d;->a:Lcom/google/a/e/e;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/a/e/e;->write([BII)V

    .line 111
    return-object p0
.end method

.method public final synthetic b(B)Lcom/google/a/e/at;
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/a/e/d;->a:Lcom/google/a/e/e;

    invoke-virtual {v0, p1}, Lcom/google/a/e/e;->write(I)V

    return-object p0
.end method

.method public final synthetic c([B)Lcom/google/a/e/at;
    .locals 1
    .parameter

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/google/a/e/d;->b([B)Lcom/google/a/e/aa;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c([BII)Lcom/google/a/e/at;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 84
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/a/e/d;->b([BII)Lcom/google/a/e/aa;

    move-result-object v0

    return-object v0
.end method
