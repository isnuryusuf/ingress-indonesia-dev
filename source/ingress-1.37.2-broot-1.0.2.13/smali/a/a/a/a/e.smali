.class public final La/a/a/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, La/a/a/a/e;->a:Ljava/lang/Object;

    return-void
.end method

.method public static a(IF)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 138
    int-to-float v0, p0

    mul-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public static final a(J)J
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x21

    .line 59
    ushr-long v0, p0, v4

    xor-long/2addr v0, p0

    .line 60
    const-wide v2, -0xae502812aa7333L

    mul-long/2addr v0, v2

    .line 61
    ushr-long v2, v0, v4

    xor-long/2addr v0, v2

    .line 62
    const-wide v2, -0x3b314601e57a13adL

    mul-long/2addr v0, v2

    .line 63
    ushr-long v2, v0, v4

    xor-long/2addr v0, v2

    .line 65
    return-wide v0
.end method

.method public static b(IF)I
    .locals 6
    .parameter
    .parameter

    .prologue
    const-wide/16 v0, 0x1

    .line 159
    int-to-float v2, p0

    div-float/2addr v2, p1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-long v2, v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 160
    :goto_0
    const-wide/32 v2, 0x40000000

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Too large ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " expected elements with load factor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_0
    sub-long/2addr v2, v0

    const/4 v4, 0x1

    shr-long v4, v2, v4

    or-long/2addr v2, v4

    const/4 v4, 0x2

    shr-long v4, v2, v4

    or-long/2addr v2, v4

    const/4 v4, 0x4

    shr-long v4, v2, v4

    or-long/2addr v2, v4

    const/16 v4, 0x8

    shr-long v4, v2, v4

    or-long/2addr v2, v4

    const/16 v4, 0x10

    shr-long v4, v2, v4

    or-long/2addr v2, v4

    const/16 v4, 0x20

    shr-long v4, v2, v4

    or-long/2addr v2, v4

    add-long/2addr v0, v2

    goto :goto_0

    .line 161
    :cond_1
    long-to-int v0, v0

    return v0
.end method

.method public static final b(J)I
    .locals 2
    .parameter

    .prologue
    .line 92
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method
