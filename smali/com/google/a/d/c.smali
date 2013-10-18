.class public final Lcom/google/a/d/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:D

.field private final b:D


# direct methods
.method public strictfp constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 30
    invoke-direct {p0, v0, v1, v0, v1}, Lcom/google/a/d/c;-><init>(DD)V

    .line 31
    return-void
.end method

.method public strictfp constructor <init>(DD)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-wide p1, p0, Lcom/google/a/d/c;->a:D

    .line 35
    iput-wide p3, p0, Lcom/google/a/d/c;->b:D

    .line 36
    return-void
.end method

.method public static strictfp a(Lcom/google/a/d/c;D)Lcom/google/a/d/c;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 66
    new-instance v0, Lcom/google/a/d/c;

    iget-wide v1, p0, Lcom/google/a/d/c;->a:D

    mul-double/2addr v1, p1

    iget-wide v3, p0, Lcom/google/a/d/c;->b:D

    mul-double/2addr v3, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/a/d/c;-><init>(DD)V

    return-object v0
.end method

.method public static strictfp a(Lcom/google/a/d/c;Lcom/google/a/d/c;)Lcom/google/a/d/c;
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 62
    new-instance v0, Lcom/google/a/d/c;

    iget-wide v1, p0, Lcom/google/a/d/c;->a:D

    iget-wide v3, p1, Lcom/google/a/d/c;->a:D

    add-double/2addr v1, v3

    iget-wide v3, p0, Lcom/google/a/d/c;->b:D

    iget-wide v5, p1, Lcom/google/a/d/c;->b:D

    add-double/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/a/d/c;-><init>(DD)V

    return-object v0
.end method


# virtual methods
.method public final strictfp a()D
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/google/a/d/c;->a:D

    return-wide v0
.end method

.method public final strictfp a(Lcom/google/a/d/c;)D
    .locals 6
    .parameter

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/google/a/d/c;->a:D

    iget-wide v2, p1, Lcom/google/a/d/c;->a:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/google/a/d/c;->b:D

    iget-wide v4, p1, Lcom/google/a/d/c;->b:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public final strictfp b()D
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/google/a/d/c;->b:D

    return-wide v0
.end method

.method public final strictfp b(Lcom/google/a/d/c;)D
    .locals 6
    .parameter

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/google/a/d/c;->a:D

    iget-wide v2, p1, Lcom/google/a/d/c;->b:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/google/a/d/c;->b:D

    iget-wide v4, p1, Lcom/google/a/d/c;->a:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public final strictfp c()D
    .locals 6

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/google/a/d/c;->a:D

    iget-wide v2, p0, Lcom/google/a/d/c;->a:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/google/a/d/c;->b:D

    iget-wide v4, p0, Lcom/google/a/d/c;->b:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public final strictfp c(Lcom/google/a/d/c;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 86
    iget-wide v2, p0, Lcom/google/a/d/c;->a:D

    iget-wide v4, p1, Lcom/google/a/d/c;->a:D

    cmpg-double v2, v2, v4

    if-gez v2, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v0

    .line 89
    :cond_1
    iget-wide v2, p1, Lcom/google/a/d/c;->a:D

    iget-wide v4, p0, Lcom/google/a/d/c;->a:D

    cmpg-double v2, v2, v4

    if-gez v2, :cond_2

    move v0, v1

    .line 90
    goto :goto_0

    .line 92
    :cond_2
    iget-wide v2, p0, Lcom/google/a/d/c;->b:D

    iget-wide v4, p1, Lcom/google/a/d/c;->b:D

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_0

    move v0, v1

    .line 95
    goto :goto_0
.end method

.method public final strictfp equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 100
    instance-of v1, p1, Lcom/google/a/d/c;

    if-nez v1, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v0

    .line 103
    :cond_1
    check-cast p1, Lcom/google/a/d/c;

    .line 104
    iget-wide v1, p0, Lcom/google/a/d/c;->a:D

    iget-wide v3, p1, Lcom/google/a/d/c;->a:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Lcom/google/a/d/c;->b:D

    iget-wide v3, p1, Lcom/google/a/d/c;->b:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final strictfp hashCode()I
    .locals 6

    .prologue
    .line 113
    const-wide/16 v0, 0x11

    const-wide/16 v2, 0x275

    iget-wide v4, p0, Lcom/google/a/d/c;->a:D

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 115
    const-wide/16 v2, 0x25

    mul-long/2addr v2, v0

    iget-wide v4, p0, Lcom/google/a/d/c;->b:D

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 116
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public final strictfp toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/google/a/d/c;->a:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/a/d/c;->b:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
