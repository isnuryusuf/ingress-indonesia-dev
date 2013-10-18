.class final Lcom/google/a/e/ap;
.super Lcom/google/a/e/f;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final a:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/a/e/f;-><init>()V

    .line 46
    iput p1, p0, Lcom/google/a/e/ap;->a:I

    .line 47
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/a/e/aa;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Lcom/google/a/e/aq;

    iget v1, p0, Lcom/google/a/e/ap;->a:I

    invoke-direct {v0, v1}, Lcom/google/a/e/aq;-><init>(I)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Hashing.murmur3_128("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/a/e/ap;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
