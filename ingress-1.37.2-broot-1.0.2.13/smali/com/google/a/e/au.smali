.class final Lcom/google/a/e/au;
.super Lcom/google/a/e/f;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:J

.field private final d:J


# direct methods
.method constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 53
    invoke-direct {p0}, Lcom/google/a/e/f;-><init>()V

    .line 54
    const-string/jumbo v0, "The number of SipRound iterations (c=%s) during Compression must be positive."

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v3, v0, v1}, Lcom/google/a/a/an;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 56
    const-string/jumbo v0, "The number of SipRound iterations (d=%s) during Finalization must be positive."

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v3, v0, v1}, Lcom/google/a/a/an;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 58
    iput v5, p0, Lcom/google/a/e/au;->a:I

    .line 59
    iput v6, p0, Lcom/google/a/e/au;->b:I

    .line 60
    const-wide v0, 0x706050403020100L

    iput-wide v0, p0, Lcom/google/a/e/au;->c:J

    .line 61
    const-wide v0, 0xf0e0d0c0b0a0908L

    iput-wide v0, p0, Lcom/google/a/e/au;->d:J

    .line 62
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/a/e/aa;
    .locals 7

    .prologue
    .line 69
    new-instance v0, Lcom/google/a/e/av;

    iget v1, p0, Lcom/google/a/e/au;->a:I

    iget v2, p0, Lcom/google/a/e/au;->b:I

    iget-wide v3, p0, Lcom/google/a/e/au;->c:J

    iget-wide v5, p0, Lcom/google/a/e/au;->d:J

    invoke-direct/range {v0 .. v6}, Lcom/google/a/e/av;-><init>(IIJJ)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Hashing.sipHash"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/a/e/au;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/a/e/au;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/a/e/au;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/a/e/au;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
