.class public final Lcom/google/a/d/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:D

.field private final b:D


# direct methods
.method public strictfp constructor <init>(DD)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-wide p1, p0, Lcom/google/a/d/b;->a:D

    .line 35
    iput-wide p3, p0, Lcom/google/a/d/b;->b:D

    .line 36
    return-void
.end method

.method public static strictfp a(DD)Lcom/google/a/d/b;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 59
    cmpg-double v0, p0, p2

    if-gtz v0, :cond_0

    .line 60
    new-instance v0, Lcom/google/a/d/b;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/a/d/b;-><init>(DD)V

    .line 62
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/a/d/b;

    invoke-direct {v0, p2, p3, p0, p1}, Lcom/google/a/d/b;-><init>(DD)V

    goto :goto_0
.end method


# virtual methods
.method public final strictfp a()D
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/google/a/d/b;->a:D

    return-wide v0
.end method

.method public final strictfp a(D)Z
    .locals 2
    .parameter

    .prologue
    .line 98
    iget-wide v0, p0, Lcom/google/a/d/b;->a:D

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/google/a/d/b;->b:D

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final strictfp a(Lcom/google/a/d/b;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 107
    invoke-virtual {p1}, Lcom/google/a/d/b;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v1, p1, Lcom/google/a/d/b;->a:D

    iget-wide v3, p0, Lcom/google/a/d/b;->a:D

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_2

    iget-wide v1, p1, Lcom/google/a/d/b;->b:D

    iget-wide v3, p0, Lcom/google/a/d/b;->b:D

    cmpg-double v1, v1, v3

    if-lez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final strictfp b()D
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/google/a/d/b;->b:D

    return-wide v0
.end method

.method public final strictfp b(D)Lcom/google/a/d/b;
    .locals 5
    .parameter

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/google/a/d/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    new-instance v0, Lcom/google/a/d/b;

    invoke-direct {v0, p1, p2, p1, p2}, Lcom/google/a/d/b;-><init>(DD)V

    .line 153
    :goto_0
    return-object v0

    .line 148
    :cond_0
    iget-wide v0, p0, Lcom/google/a/d/b;->a:D

    cmpg-double v0, p1, v0

    if-gez v0, :cond_1

    .line 149
    new-instance v0, Lcom/google/a/d/b;

    iget-wide v1, p0, Lcom/google/a/d/b;->b:D

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/google/a/d/b;-><init>(DD)V

    goto :goto_0

    .line 150
    :cond_1
    iget-wide v0, p0, Lcom/google/a/d/b;->b:D

    cmpl-double v0, p1, v0

    if-lez v0, :cond_2

    .line 151
    new-instance v0, Lcom/google/a/d/b;

    iget-wide v1, p0, Lcom/google/a/d/b;->a:D

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/google/a/d/b;-><init>(DD)V

    goto :goto_0

    .line 153
    :cond_2
    new-instance v0, Lcom/google/a/d/b;

    iget-wide v1, p0, Lcom/google/a/d/b;->a:D

    iget-wide v3, p0, Lcom/google/a/d/b;->b:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/a/d/b;-><init>(DD)V

    goto :goto_0
.end method

.method public final strictfp b(Lcom/google/a/d/b;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 129
    iget-wide v2, p0, Lcom/google/a/d/b;->a:D

    iget-wide v4, p1, Lcom/google/a/d/b;->a:D

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_2

    .line 130
    iget-wide v2, p1, Lcom/google/a/d/b;->a:D

    iget-wide v4, p0, Lcom/google/a/d/b;->b:D

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_1

    iget-wide v2, p1, Lcom/google/a/d/b;->a:D

    iget-wide v4, p1, Lcom/google/a/d/b;->b:D

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_1

    .line 132
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 130
    goto :goto_0

    .line 132
    :cond_2
    iget-wide v2, p0, Lcom/google/a/d/b;->a:D

    iget-wide v4, p1, Lcom/google/a/d/b;->b:D

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_3

    iget-wide v2, p0, Lcom/google/a/d/b;->a:D

    iget-wide v4, p0, Lcom/google/a/d/b;->b:D

    cmpg-double v2, v2, v4

    if-lez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final strictfp c(Lcom/google/a/d/b;)Lcom/google/a/d/b;
    .locals 7
    .parameter

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/google/a/d/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    :goto_0
    return-object p1

    .line 178
    :cond_0
    invoke-virtual {p1}, Lcom/google/a/d/b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object p1, p0

    .line 179
    goto :goto_0

    .line 181
    :cond_1
    new-instance v0, Lcom/google/a/d/b;

    iget-wide v1, p0, Lcom/google/a/d/b;->a:D

    iget-wide v3, p1, Lcom/google/a/d/b;->a:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/a/d/b;->b:D

    iget-wide v5, p1, Lcom/google/a/d/b;->b:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/a/d/b;-><init>(DD)V

    move-object p1, v0

    goto :goto_0
.end method

.method public final strictfp c()Z
    .locals 4

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/google/a/d/b;->a:D

    iget-wide v2, p0, Lcom/google/a/d/b;->b:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final strictfp d()D
    .locals 6

    .prologue
    .line 86
    const-wide/high16 v0, 0x3fe0

    iget-wide v2, p0, Lcom/google/a/d/b;->a:D

    iget-wide v4, p0, Lcom/google/a/d/b;->b:D

    add-double/2addr v2, v4

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public final strictfp d(Lcom/google/a/d/b;)Lcom/google/a/d/b;
    .locals 7
    .parameter

    .prologue
    .line 189
    new-instance v0, Lcom/google/a/d/b;

    iget-wide v1, p0, Lcom/google/a/d/b;->a:D

    iget-wide v3, p1, Lcom/google/a/d/b;->a:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/a/d/b;->b:D

    iget-wide v5, p1, Lcom/google/a/d/b;->b:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/a/d/b;-><init>(DD)V

    return-object v0
.end method

.method public final strictfp e()Lcom/google/a/d/b;
    .locals 7

    .prologue
    const-wide/high16 v5, 0x3cc0

    .line 164
    invoke-virtual {p0}, Lcom/google/a/d/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/google/a/d/b;

    iget-wide v1, p0, Lcom/google/a/d/b;->a:D

    sub-double/2addr v1, v5

    iget-wide v3, p0, Lcom/google/a/d/b;->b:D

    add-double/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/a/d/b;-><init>(DD)V

    move-object p0, v0

    goto :goto_0
.end method

.method public final strictfp equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 194
    instance-of v1, p1, Lcom/google/a/d/b;

    if-eqz v1, :cond_2

    .line 195
    check-cast p1, Lcom/google/a/d/b;

    .line 197
    iget-wide v1, p0, Lcom/google/a/d/b;->a:D

    iget-wide v3, p1, Lcom/google/a/d/b;->a:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Lcom/google/a/d/b;->b:D

    iget-wide v3, p1, Lcom/google/a/d/b;->b:D

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/a/d/b;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/google/a/d/b;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 200
    :cond_2
    return v0
.end method

.method public final strictfp hashCode()I
    .locals 4

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/google/a/d/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    const/16 v0, 0x11

    .line 212
    :goto_0
    return v0

    .line 209
    :cond_0
    const-wide/16 v0, 0x275

    iget-wide v2, p0, Lcom/google/a/d/b;->a:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 211
    const-wide/16 v2, 0x25

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/a/d/b;->b:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 212
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0
.end method

.method public final strictfp toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/google/a/d/b;->a:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/a/d/b;->b:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
