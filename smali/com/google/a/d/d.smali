.class public final Lcom/google/a/d/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/a/d/d;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:D


# direct methods
.method public strictfp constructor <init>()V
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/a/d/d;->a:D

    .line 64
    return-void
.end method

.method private strictfp constructor <init>(D)V
    .locals 0
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-wide p1, p0, Lcom/google/a/d/d;->a:D

    .line 68
    return-void
.end method

.method public static strictfp a(D)Lcom/google/a/d/d;
    .locals 1
    .parameter

    .prologue
    .line 118
    new-instance v0, Lcom/google/a/d/d;

    invoke-direct {v0, p0, p1}, Lcom/google/a/d/d;-><init>(D)V

    return-object v0
.end method

.method public static strictfp a(J)Lcom/google/a/d/d;
    .locals 4
    .parameter

    .prologue
    .line 132
    long-to-double v0, p0

    const-wide v2, 0x3eb0c6f7a0b5ed8dL

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/a/d/d;->b(D)Lcom/google/a/d/d;

    move-result-object v0

    return-object v0
.end method

.method public static strictfp b(D)Lcom/google/a/d/d;
    .locals 3
    .parameter

    .prologue
    .line 122
    new-instance v0, Lcom/google/a/d/d;

    const-wide v1, 0x3f91df46a2529d39L

    mul-double/2addr v1, p0

    invoke-direct {v0, v1, v2}, Lcom/google/a/d/d;-><init>(D)V

    return-object v0
.end method

.method private strictfp c()D
    .locals 4

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/google/a/d/d;->a:D

    const-wide v2, 0x404ca5dc1a63c1f8L

    mul-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public final strictfp a()D
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/google/a/d/d;->a:D

    return-wide v0
.end method

.method public final strictfp b()J
    .locals 4

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/a/d/d;->c()D

    move-result-wide v0

    const-wide v2, 0x412e848000000000L

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    return-wide v0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 4
    .parameter

    .prologue
    .line 35
    check-cast p1, Lcom/google/a/d/d;

    iget-wide v0, p0, Lcom/google/a/d/d;->a:D

    iget-wide v2, p1, Lcom/google/a/d/d;->a:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/google/a/d/d;->a:D

    iget-wide v2, p1, Lcom/google/a/d/d;->a:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final strictfp equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 81
    instance-of v1, p1, Lcom/google/a/d/d;

    if-eqz v1, :cond_0

    .line 82
    iget-wide v1, p0, Lcom/google/a/d/d;->a:D

    check-cast p1, Lcom/google/a/d/d;

    iget-wide v3, p1, Lcom/google/a/d/d;->a:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 84
    :cond_0
    return v0
.end method

.method public final strictfp hashCode()I
    .locals 4

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/google/a/d/d;->a:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 90
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public final strictfp toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/google/a/d/d;->c()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
