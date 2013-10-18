.class public Lcom/google/a/d/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final a:Lcom/google/a/d/u;


# instance fields
.field private final b:D

.field private final c:D


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 43
    new-instance v0, Lcom/google/a/d/u;

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/google/a/d/u;-><init>(DD)V

    sput-object v0, Lcom/google/a/d/u;->a:Lcom/google/a/d/u;

    return-void
.end method

.method public strictfp constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 102
    invoke-direct {p0, v0, v1, v0, v1}, Lcom/google/a/d/u;-><init>(DD)V

    .line 103
    return-void
.end method

.method private strictfp constructor <init>(DD)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-wide p1, p0, Lcom/google/a/d/u;->b:D

    .line 83
    iput-wide p3, p0, Lcom/google/a/d/u;->c:D

    .line 84
    return-void
.end method

.method public strictfp constructor <init>(Lcom/google/a/d/d;Lcom/google/a/d/d;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-virtual {p1}, Lcom/google/a/d/d;->a()D

    move-result-wide v0

    invoke-virtual {p2}, Lcom/google/a/d/d;->a()D

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/a/d/u;-><init>(DD)V

    .line 94
    return-void
.end method

.method public strictfp constructor <init>(Lcom/google/a/d/y;)V
    .locals 8
    .parameter

    .prologue
    .line 111
    iget-wide v0, p1, Lcom/google/a/d/y;->j:D

    iget-wide v2, p1, Lcom/google/a/d/y;->h:D

    iget-wide v4, p1, Lcom/google/a/d/y;->h:D

    mul-double/2addr v2, v4

    iget-wide v4, p1, Lcom/google/a/d/y;->i:D

    iget-wide v6, p1, Lcom/google/a/d/y;->i:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    iget-wide v2, p1, Lcom/google/a/d/y;->i:D

    iget-wide v4, p1, Lcom/google/a/d/y;->h:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/a/d/u;-><init>(DD)V

    .line 116
    return-void
.end method

.method public static strictfp a(DD)Lcom/google/a/d/u;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 49
    new-instance v0, Lcom/google/a/d/u;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/a/d/u;-><init>(DD)V

    return-object v0
.end method

.method public static strictfp a(JJ)Lcom/google/a/d/u;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 61
    new-instance v0, Lcom/google/a/d/u;

    invoke-static {p0, p1}, Lcom/google/a/d/d;->a(J)Lcom/google/a/d/d;

    move-result-object v1

    invoke-static {p2, p3}, Lcom/google/a/d/d;->a(J)Lcom/google/a/d/d;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/a/d/u;-><init>(Lcom/google/a/d/d;Lcom/google/a/d/d;)V

    return-object v0
.end method

.method public static strictfp b(DD)Lcom/google/a/d/u;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 53
    new-instance v0, Lcom/google/a/d/u;

    invoke-static {p0, p1}, Lcom/google/a/d/d;->b(D)Lcom/google/a/d/d;

    move-result-object v1

    invoke-static {p2, p3}, Lcom/google/a/d/d;->b(D)Lcom/google/a/d/d;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/a/d/u;-><init>(Lcom/google/a/d/d;Lcom/google/a/d/d;)V

    return-object v0
.end method


# virtual methods
.method public final strictfp a(Lcom/google/a/d/u;)D
    .locals 12
    .parameter

    .prologue
    const-wide/high16 v10, 0x3fe0

    .line 229
    iget-wide v0, p0, Lcom/google/a/d/u;->b:D

    invoke-static {v0, v1}, Lcom/google/a/d/d;->a(D)Lcom/google/a/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/d/d;->a()D

    move-result-wide v0

    iget-wide v2, p1, Lcom/google/a/d/u;->b:D

    invoke-static {v2, v3}, Lcom/google/a/d/d;->a(D)Lcom/google/a/d/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/a/d/d;->a()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/a/d/u;->c:D

    invoke-static {v4, v5}, Lcom/google/a/d/d;->a(D)Lcom/google/a/d/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/a/d/d;->a()D

    move-result-wide v4

    iget-wide v6, p1, Lcom/google/a/d/u;->c:D

    invoke-static {v6, v7}, Lcom/google/a/d/d;->a(D)Lcom/google/a/d/d;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/a/d/d;->a()D

    move-result-wide v6

    sub-double v8, v2, v0

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    sub-double v4, v6, v4

    mul-double/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double v6, v8, v8

    mul-double/2addr v4, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    add-double/2addr v0, v6

    const-wide/high16 v2, 0x4000

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    const-wide/16 v6, 0x0

    const-wide/high16 v8, 0x3ff0

    sub-double v0, v8, v0

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/a/d/d;->a(D)Lcom/google/a/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/d/d;->a()D

    move-result-wide v0

    const-wide v2, 0x415849c600000000L

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public final strictfp a()Lcom/google/a/d/d;
    .locals 2

    .prologue
    .line 120
    iget-wide v0, p0, Lcom/google/a/d/u;->b:D

    invoke-static {v0, v1}, Lcom/google/a/d/d;->a(D)Lcom/google/a/d/d;

    move-result-object v0

    return-object v0
.end method

.method public final strictfp a(Lcom/google/a/d/u;D)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 279
    iget-wide v0, p0, Lcom/google/a/d/u;->b:D

    iget-wide v2, p1, Lcom/google/a/d/u;->b:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v0, v0, p2

    if-gez v0, :cond_0

    iget-wide v0, p0, Lcom/google/a/d/u;->c:D

    iget-wide v2, p1, Lcom/google/a/d/u;->c:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v0, v0, p2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final strictfp b()D
    .locals 2

    .prologue
    .line 125
    iget-wide v0, p0, Lcom/google/a/d/u;->b:D

    return-wide v0
.end method

.method public final strictfp b(Lcom/google/a/d/u;)Lcom/google/a/d/u;
    .locals 7
    .parameter

    .prologue
    .line 237
    new-instance v0, Lcom/google/a/d/u;

    iget-wide v1, p0, Lcom/google/a/d/u;->b:D

    iget-wide v3, p1, Lcom/google/a/d/u;->b:D

    add-double/2addr v1, v3

    iget-wide v3, p0, Lcom/google/a/d/u;->c:D

    iget-wide v5, p1, Lcom/google/a/d/u;->c:D

    add-double/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/a/d/u;-><init>(DD)V

    return-object v0
.end method

.method public final strictfp c()D
    .locals 4

    .prologue
    .line 130
    const-wide v0, 0x404ca5dc1a63c1f8L

    iget-wide v2, p0, Lcom/google/a/d/u;->b:D

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public final strictfp c(Lcom/google/a/d/u;)Z
    .locals 2
    .parameter

    .prologue
    .line 289
    const-wide v0, 0x3e112e0be826d695L

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/a/d/u;->a(Lcom/google/a/d/u;D)Z

    move-result v0

    return v0
.end method

.method public final strictfp d()Lcom/google/a/d/d;
    .locals 2

    .prologue
    .line 135
    iget-wide v0, p0, Lcom/google/a/d/u;->c:D

    invoke-static {v0, v1}, Lcom/google/a/d/d;->a(D)Lcom/google/a/d/d;

    move-result-object v0

    return-object v0
.end method

.method public final strictfp e()D
    .locals 2

    .prologue
    .line 140
    iget-wide v0, p0, Lcom/google/a/d/u;->c:D

    return-wide v0
.end method

.method public strictfp equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 259
    instance-of v1, p1, Lcom/google/a/d/u;

    if-eqz v1, :cond_0

    .line 260
    check-cast p1, Lcom/google/a/d/u;

    .line 261
    iget-wide v1, p0, Lcom/google/a/d/u;->b:D

    iget-wide v3, p1, Lcom/google/a/d/u;->b:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Lcom/google/a/d/u;->c:D

    iget-wide v3, p1, Lcom/google/a/d/u;->c:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 263
    :cond_0
    return v0
.end method

.method public final strictfp f()D
    .locals 4

    .prologue
    .line 145
    const-wide v0, 0x404ca5dc1a63c1f8L

    iget-wide v2, p0, Lcom/google/a/d/u;->c:D

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public final strictfp g()Lcom/google/a/d/y;
    .locals 9

    .prologue
    .line 179
    iget-wide v0, p0, Lcom/google/a/d/u;->b:D

    invoke-static {v0, v1}, Lcom/google/a/d/d;->a(D)Lcom/google/a/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/d/d;->a()D

    move-result-wide v5

    .line 180
    iget-wide v0, p0, Lcom/google/a/d/u;->c:D

    invoke-static {v0, v1}, Lcom/google/a/d/d;->a(D)Lcom/google/a/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/d/d;->a()D

    move-result-wide v3

    .line 181
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    .line 182
    new-instance v0, Lcom/google/a/d/y;

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    mul-double/2addr v1, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double/2addr v3, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    invoke-direct/range {v0 .. v6}, Lcom/google/a/d/y;-><init>(DDD)V

    return-object v0
.end method

.method public final strictfp h()Ljava/lang/String;
    .locals 3

    .prologue
    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/a/d/u;->c()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/a/d/u;->f()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public strictfp hashCode()I
    .locals 6

    .prologue
    .line 268
    const-wide/16 v0, 0x11

    const-wide/16 v2, 0x275

    iget-wide v4, p0, Lcom/google/a/d/u;->b:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 270
    const-wide/16 v2, 0x25

    mul-long/2addr v2, v0

    iget-wide v4, p0, Lcom/google/a/d/u;->c:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 271
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public strictfp toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/google/a/d/u;->b:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/a/d/u;->c:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
