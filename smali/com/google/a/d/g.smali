.class public final Lcom/google/a/d/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:D

.field private final b:I


# direct methods
.method public strictfp constructor <init>(ID)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-wide p2, p0, Lcom/google/a/d/g;->a:D

    .line 175
    iput p1, p0, Lcom/google/a/d/g;->b:I

    .line 176
    return-void
.end method


# virtual methods
.method public final strictfp a()D
    .locals 2

    .prologue
    .line 183
    iget-wide v0, p0, Lcom/google/a/d/g;->a:D

    return-wide v0
.end method

.method public final strictfp a(I)D
    .locals 4
    .parameter

    .prologue
    .line 188
    iget-wide v0, p0, Lcom/google/a/d/g;->a:D

    iget v2, p0, Lcom/google/a/d/g;->b:I

    rsub-int/lit8 v3, p1, 0x1

    mul-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/StrictMath;->scalb(DI)D

    move-result-wide v0

    return-wide v0
.end method

.method public final strictfp a(D)I
    .locals 5
    .parameter

    .prologue
    const/16 v0, 0x1e

    .line 231
    const-wide/16 v1, 0x0

    cmpg-double v1, p1, v1

    if-gtz v1, :cond_0

    .line 242
    :goto_0
    return v0

    .line 237
    :cond_0
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/a/d/g;->b:I

    shl-int/2addr v1, v2

    int-to-double v1, v1

    iget-wide v3, p0, Lcom/google/a/d/g;->a:D

    mul-double/2addr v1, v3

    div-double/2addr v1, p1

    invoke-static {v1, v2}, Lcom/google/a/d/f;->a(D)I

    move-result v1

    .line 238
    const/4 v2, 0x0

    add-int/lit8 v1, v1, -0x1

    iget v3, p0, Lcom/google/a/d/g;->b:I

    add-int/lit8 v3, v3, -0x1

    shr-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method
