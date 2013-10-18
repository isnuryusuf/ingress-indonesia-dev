.class public final Lcom/google/a/d/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/a/d/ad;


# instance fields
.field private final a:Lcom/google/a/d/y;

.field private final b:D


# direct methods
.method private strictfp constructor <init>()V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lcom/google/a/d/y;

    invoke-direct {v0}, Lcom/google/a/d/y;-><init>()V

    iput-object v0, p0, Lcom/google/a/d/h;->a:Lcom/google/a/d/y;

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/a/d/h;->b:D

    .line 52
    return-void
.end method

.method private strictfp constructor <init>(Lcom/google/a/d/y;D)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/google/a/d/h;->a:Lcom/google/a/d/y;

    .line 56
    iput-wide p2, p0, Lcom/google/a/d/h;->b:D

    .line 58
    return-void
.end method

.method public static strictfp a()Lcom/google/a/d/h;
    .locals 4

    .prologue
    .line 97
    new-instance v0, Lcom/google/a/d/h;

    sget-object v1, Lcom/google/a/d/y;->b:Lcom/google/a/d/y;

    const-wide/high16 v2, -0x4010

    invoke-direct {v0, v1, v2, v3}, Lcom/google/a/d/h;-><init>(Lcom/google/a/d/y;D)V

    return-object v0
.end method

.method public static strictfp a(Lcom/google/a/d/y;D)Lcom/google/a/d/h;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 67
    new-instance v0, Lcom/google/a/d/h;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/a/d/h;-><init>(Lcom/google/a/d/y;D)V

    return-object v0
.end method

.method public static strictfp a(Lcom/google/a/d/y;Lcom/google/a/d/d;)Lcom/google/a/d/h;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 81
    const-wide/high16 v0, 0x3fe0

    invoke-virtual {p1}, Lcom/google/a/d/d;->a()D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    .line 82
    new-instance v2, Lcom/google/a/d/h;

    const-wide/high16 v3, 0x4000

    mul-double/2addr v3, v0

    mul-double/2addr v0, v3

    invoke-direct {v2, p0, v0, v1}, Lcom/google/a/d/h;-><init>(Lcom/google/a/d/y;D)V

    return-object v2
.end method

.method private strictfp a(Lcom/google/a/d/i;[Lcom/google/a/d/y;)Z
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const-wide/16 v10, 0x0

    const/4 v0, 0x0

    .line 340
    iget-wide v2, p0, Lcom/google/a/d/h;->b:D

    const-wide/high16 v4, 0x3ff0

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_1

    .line 383
    :cond_0
    :goto_0
    return v0

    .line 345
    :cond_1
    invoke-direct {p0}, Lcom/google/a/d/h;->g()Z

    move-result v2

    if-nez v2, :cond_0

    .line 351
    iget-object v2, p0, Lcom/google/a/d/h;->a:Lcom/google/a/d/y;

    invoke-virtual {p1, v2}, Lcom/google/a/d/i;->a(Lcom/google/a/d/y;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 352
    goto :goto_0

    .line 359
    :cond_2
    iget-wide v2, p0, Lcom/google/a/d/h;->b:D

    const-wide/high16 v4, 0x4000

    iget-wide v6, p0, Lcom/google/a/d/h;->b:D

    sub-double/2addr v4, v6

    mul-double v3, v2, v4

    move v2, v0

    .line 360
    :goto_1
    const/4 v5, 0x4

    if-ge v2, v5, :cond_0

    .line 361
    invoke-virtual {p1, v2}, Lcom/google/a/d/i;->c(I)Lcom/google/a/d/y;

    move-result-object v5

    .line 362
    iget-object v6, p0, Lcom/google/a/d/h;->a:Lcom/google/a/d/y;

    invoke-virtual {v6, v5}, Lcom/google/a/d/y;->b(Lcom/google/a/d/y;)D

    move-result-wide v6

    .line 363
    cmpl-double v8, v6, v10

    if-gtz v8, :cond_3

    .line 368
    mul-double/2addr v6, v6

    invoke-virtual {v5}, Lcom/google/a/d/y;->a()D

    move-result-wide v8

    mul-double/2addr v8, v3

    cmpl-double v6, v6, v8

    if-gtz v6, :cond_0

    .line 377
    iget-object v6, p0, Lcom/google/a/d/h;->a:Lcom/google/a/d/y;

    invoke-static {v5, v6}, Lcom/google/a/d/y;->b(Lcom/google/a/d/y;Lcom/google/a/d/y;)Lcom/google/a/d/y;

    move-result-object v5

    .line 378
    aget-object v6, p2, v2

    invoke-virtual {v5, v6}, Lcom/google/a/d/y;->b(Lcom/google/a/d/y;)D

    move-result-wide v6

    cmpg-double v6, v6, v10

    if-gez v6, :cond_3

    add-int/lit8 v6, v2, 0x1

    and-int/lit8 v6, v6, 0x3

    aget-object v6, p2, v6

    invoke-virtual {v5, v6}, Lcom/google/a/d/y;->b(Lcom/google/a/d/y;)D

    move-result-wide v5

    cmpl-double v5, v5, v10

    if-lez v5, :cond_3

    move v0, v1

    .line 380
    goto :goto_0

    .line 360
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private strictfp g()Z
    .locals 4

    .prologue
    .line 143
    iget-wide v0, p0, Lcom/google/a/d/h;->b:D

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private strictfp h()Z
    .locals 4

    .prologue
    .line 148
    iget-wide v0, p0, Lcom/google/a/d/h;->b:D

    const-wide/high16 v2, 0x4000

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final strictfp a(Lcom/google/a/d/h;)Lcom/google/a/d/h;
    .locals 6
    .parameter

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/google/a/d/h;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    new-instance v0, Lcom/google/a/d/h;

    iget-object v1, p1, Lcom/google/a/d/h;->a:Lcom/google/a/d/y;

    iget-wide v2, p1, Lcom/google/a/d/h;->b:D

    invoke-direct {v0, v1, v2, v3}, Lcom/google/a/d/h;-><init>(Lcom/google/a/d/y;D)V

    .line 232
    :goto_0
    return-object v0

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/google/a/d/h;->a:Lcom/google/a/d/y;

    iget-object v1, p1, Lcom/google/a/d/h;->a:Lcom/google/a/d/y;

    invoke-virtual {v0, v1}, Lcom/google/a/d/y;->e(Lcom/google/a/d/y;)D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/a/d/h;->e()Lcom/google/a/d/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/a/d/d;->a()D

    move-result-wide v2

    add-double/2addr v0, v2

    .line 227
    const-wide v2, 0x400921fb54442d18L

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_1

    .line 228
    new-instance v0, Lcom/google/a/d/h;

    iget-object v1, p0, Lcom/google/a/d/h;->a:Lcom/google/a/d/y;

    const-wide/high16 v2, 0x4000

    invoke-direct {v0, v1, v2, v3}, Lcom/google/a/d/h;-><init>(Lcom/google/a/d/y;D)V

    goto :goto_0

    .line 230
    :cond_1
    const-wide/high16 v2, 0x3fe0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    .line 231
    iget-wide v2, p0, Lcom/google/a/d/h;->b:D

    const-wide v4, 0x4000000000000001L

    mul-double/2addr v4, v0

    mul-double/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    .line 232
    new-instance v0, Lcom/google/a/d/h;

    iget-object v3, p0, Lcom/google/a/d/h;->a:Lcom/google/a/d/y;

    invoke-direct {v0, v3, v1, v2}, Lcom/google/a/d/h;-><init>(Lcom/google/a/d/y;D)V

    goto :goto_0
.end method

.method public final strictfp a(Lcom/google/a/d/y;)Lcom/google/a/d/h;
    .locals 6
    .parameter

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/google/a/d/h;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    new-instance v0, Lcom/google/a/d/h;

    const-wide/16 v1, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/google/a/d/h;-><init>(Lcom/google/a/d/y;D)V

    .line 213
    :goto_0
    return-object v0

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/google/a/d/h;->a:Lcom/google/a/d/y;

    invoke-static {v0, p1}, Lcom/google/a/d/y;->d(Lcom/google/a/d/y;Lcom/google/a/d/y;)Lcom/google/a/d/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/d/y;->a()D

    move-result-wide v0

    .line 212
    iget-wide v2, p0, Lcom/google/a/d/h;->b:D

    const-wide v4, 0x3fe0000000000001L

    mul-double/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    .line 213
    new-instance v0, Lcom/google/a/d/h;

    iget-object v3, p0, Lcom/google/a/d/h;->a:Lcom/google/a/d/y;

    invoke-direct {v0, v3, v1, v2}, Lcom/google/a/d/h;-><init>(Lcom/google/a/d/y;D)V

    goto :goto_0
.end method

.method public final strictfp a(Lcom/google/a/d/i;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v4, 0x4

    const/4 v2, 0x0

    .line 303
    new-array v3, v4, [Lcom/google/a/d/y;

    move v0, v2

    .line 304
    :goto_0
    if-ge v0, v4, :cond_1

    .line 305
    invoke-virtual {p1, v0}, Lcom/google/a/d/i;->b(I)Lcom/google/a/d/y;

    move-result-object v1

    aput-object v1, v3, v0

    .line 306
    aget-object v1, v3, v0

    invoke-virtual {p0, v1}, Lcom/google/a/d/h;->b(Lcom/google/a/d/y;)Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 313
    :goto_1
    return v0

    .line 304
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 313
    :cond_1
    invoke-direct {p0}, Lcom/google/a/d/h;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/high16 v0, -0x4010

    :goto_2
    iget-object v4, p0, Lcom/google/a/d/h;->a:Lcom/google/a/d/y;

    invoke-static {v4}, Lcom/google/a/d/y;->a(Lcom/google/a/d/y;)Lcom/google/a/d/y;

    move-result-object v4

    invoke-static {v4, v0, v1}, Lcom/google/a/d/h;->a(Lcom/google/a/d/y;D)Lcom/google/a/d/h;

    move-result-object v0

    invoke-direct {v0, p1, v3}, Lcom/google/a/d/h;->a(Lcom/google/a/d/i;[Lcom/google/a/d/y;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const-wide/high16 v0, 0x4000

    iget-wide v4, p0, Lcom/google/a/d/h;->b:D

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    sub-double/2addr v0, v4

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public final strictfp b()Lcom/google/a/d/y;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/a/d/h;->a:Lcom/google/a/d/y;

    return-object v0
.end method

.method public final strictfp b(Lcom/google/a/d/i;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x4

    .line 319
    new-array v1, v3, [Lcom/google/a/d/y;

    .line 320
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    .line 321
    invoke-virtual {p1, v0}, Lcom/google/a/d/i;->b(I)Lcom/google/a/d/y;

    move-result-object v2

    aput-object v2, v1, v0

    .line 322
    aget-object v2, v1, v0

    invoke-virtual {p0, v2}, Lcom/google/a/d/h;->b(Lcom/google/a/d/y;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 323
    const/4 v0, 0x1

    .line 326
    :goto_1
    return v0

    .line 320
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 326
    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/google/a/d/h;->a(Lcom/google/a/d/i;[Lcom/google/a/d/y;)Z

    move-result v0

    goto :goto_1
.end method

.method public final strictfp b(Lcom/google/a/d/y;)Z
    .locals 6
    .parameter

    .prologue
    .line 389
    iget-object v0, p0, Lcom/google/a/d/h;->a:Lcom/google/a/d/y;

    invoke-static {v0, p1}, Lcom/google/a/d/y;->d(Lcom/google/a/d/y;Lcom/google/a/d/y;)Lcom/google/a/d/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/d/y;->a()D

    move-result-wide v0

    const-wide/high16 v2, 0x4000

    iget-wide v4, p0, Lcom/google/a/d/h;->b:D

    mul-double/2addr v2, v4

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final strictfp c()D
    .locals 2

    .prologue
    .line 112
    iget-wide v0, p0, Lcom/google/a/d/h;->b:D

    return-wide v0
.end method

.method public final strictfp d()D
    .locals 6

    .prologue
    .line 116
    const-wide v0, 0x401921fb54442d18L

    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lcom/google/a/d/h;->b:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public final strictfp e()Lcom/google/a/d/d;
    .locals 6

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/google/a/d/h;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    const-wide/high16 v0, -0x4010

    invoke-static {v0, v1}, Lcom/google/a/d/d;->a(D)Lcom/google/a/d/d;

    move-result-object v0

    .line 130
    :goto_0
    return-object v0

    :cond_0
    const-wide/high16 v0, 0x4000

    const-wide/high16 v2, 0x3fe0

    iget-wide v4, p0, Lcom/google/a/d/h;->b:D

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/a/d/d;->a(D)Lcom/google/a/d/d;

    move-result-object v0

    goto :goto_0
.end method

.method public final strictfp equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 398
    instance-of v1, p1, Lcom/google/a/d/h;

    if-nez v1, :cond_1

    .line 403
    :cond_0
    :goto_0
    return v0

    .line 402
    :cond_1
    check-cast p1, Lcom/google/a/d/h;

    .line 403
    iget-object v1, p0, Lcom/google/a/d/h;->a:Lcom/google/a/d/y;

    iget-object v2, p1, Lcom/google/a/d/h;->a:Lcom/google/a/d/y;

    invoke-virtual {v1, v2}, Lcom/google/a/d/y;->f(Lcom/google/a/d/y;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v1, p0, Lcom/google/a/d/h;->b:D

    iget-wide v3, p1, Lcom/google/a/d/h;->b:D

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_4

    :cond_2
    invoke-direct {p0}, Lcom/google/a/d/h;->g()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p1}, Lcom/google/a/d/h;->g()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/google/a/d/h;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p1}, Lcom/google/a/d/h;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final strictfp f()Lcom/google/a/d/h;
    .locals 0

    .prologue
    .line 241
    return-object p0
.end method

.method public final strictfp hashCode()I
    .locals 5

    .prologue
    .line 410
    invoke-direct {p0}, Lcom/google/a/d/h;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    const/16 v0, 0x11

    .line 419
    :goto_0
    return v0

    .line 412
    :cond_0
    invoke-direct {p0}, Lcom/google/a/d/h;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 413
    const/16 v0, 0x25

    goto :goto_0

    .line 415
    :cond_1
    iget-object v0, p0, Lcom/google/a/d/h;->a:Lcom/google/a/d/y;

    invoke-virtual {v0}, Lcom/google/a/d/y;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x275

    .line 417
    iget-wide v1, p0, Lcom/google/a/d/h;->b:D

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    .line 418
    mul-int/lit8 v0, v0, 0x25

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    .line 419
    goto :goto_0
.end method

.method public final strictfp toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[Point = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/a/d/h;->a:Lcom/google/a/d/y;

    invoke-virtual {v1}, Lcom/google/a/d/y;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " Height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/a/d/h;->b:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
