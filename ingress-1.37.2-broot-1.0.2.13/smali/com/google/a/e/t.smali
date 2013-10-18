.class final Lcom/google/a/e/t;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/a/e/at;


# direct methods
.method constructor <init>(Lcom/google/a/e/at;)V
    .locals 1
    .parameter

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 230
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/e/at;

    iput-object v0, p0, Lcom/google/a/e/t;->a:Lcom/google/a/e/at;

    .line 231
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Funnels.asOutputStream("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/a/e/t;->a:Lcom/google/a/e/at;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final write(I)V
    .locals 2
    .parameter

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/a/e/t;->a:Lcom/google/a/e/at;

    int-to-byte v1, p1

    invoke-interface {v0, v1}, Lcom/google/a/e/at;->b(B)Lcom/google/a/e/at;

    .line 235
    return-void
.end method

.method public final write([B)V
    .locals 1
    .parameter

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/a/e/t;->a:Lcom/google/a/e/at;

    invoke-interface {v0, p1}, Lcom/google/a/e/at;->c([B)Lcom/google/a/e/at;

    .line 239
    return-void
.end method

.method public final write([BII)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/a/e/t;->a:Lcom/google/a/e/at;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/a/e/at;->c([BII)Lcom/google/a/e/at;

    .line 243
    return-void
.end method
