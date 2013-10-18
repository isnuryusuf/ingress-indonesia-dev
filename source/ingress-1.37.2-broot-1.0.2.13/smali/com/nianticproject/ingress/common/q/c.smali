.class public final Lcom/nianticproject/ingress/common/q/c;
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
        "Lcom/nianticproject/ingress/common/q/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:J

.field private e:Lcom/nianticproject/ingress/common/q/a;

.field private final f:I


# direct methods
.method private constructor <init>(III)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput p1, p0, Lcom/nianticproject/ingress/common/q/c;->a:I

    .line 187
    iput p2, p0, Lcom/nianticproject/ingress/common/q/c;->b:I

    .line 188
    iput p3, p0, Lcom/nianticproject/ingress/common/q/c;->c:I

    .line 189
    invoke-static {p1, p2, p3}, Lcom/nianticproject/ingress/common/q/c;->a(III)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/q/c;->d:J

    .line 190
    mul-int/lit8 v0, p1, 0x1f

    add-int/2addr v0, p2

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, p3

    iput v0, p0, Lcom/nianticproject/ingress/common/q/c;->f:I

    .line 191
    return-void
.end method

.method public static a(II)J
    .locals 3
    .parameter
    .parameter

    .prologue
    const/high16 v0, 0x4000

    .line 57
    if-ltz p0, :cond_0

    if-ge p0, v0, :cond_0

    if-ltz p1, :cond_0

    if-lt p1, v0, :cond_1

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 63
    :cond_1
    const/16 v0, 0x11

    shr-int/lit8 v1, p0, 0xd

    shr-int/lit8 v2, p1, 0xd

    invoke-static {v0, v1, v2}, Lcom/nianticproject/ingress/common/q/c;->a(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(III)J
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    const/4 v0, 0x1

    shl-int/2addr v0, p0

    add-int/lit8 v0, v0, -0x1

    .line 70
    if-ltz p0, :cond_0

    const/16 v1, 0x16

    if-gt p0, v1, :cond_0

    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    if-ltz p2, :cond_0

    if-le p2, v0, :cond_1

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 76
    :cond_1
    int-to-long v0, p0

    const/16 v2, 0x3a

    shl-long/2addr v0, v2

    int-to-long v2, p1

    const/4 v4, 0x0

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p2

    const/16 v4, 0x17

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const-wide v2, 0x155400000000000L

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static a(J)Lcom/nianticproject/ingress/common/q/c;
    .locals 8
    .parameter

    .prologue
    const-wide/32 v6, 0x7fffff

    const/4 v1, 0x0

    .line 83
    const-wide v2, 0x3ffc00000000000L

    and-long/2addr v2, p0

    const-wide v4, 0x155400000000000L

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v2, "Invalid tile index"

    invoke-static {v0, v2}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    .line 85
    new-instance v0, Lcom/nianticproject/ingress/common/q/c;

    const/16 v2, 0x3a

    shr-long v2, p0, v2

    const-wide/16 v4, 0x3f

    and-long/2addr v2, v4

    long-to-int v2, v2

    shr-long v3, p0, v1

    and-long/2addr v3, v6

    long-to-int v1, v3

    const/16 v3, 0x17

    shr-long v3, p0, v3

    and-long/2addr v3, v6

    long-to-int v3, v3

    invoke-direct {v0, v2, v1, v3}, Lcom/nianticproject/ingress/common/q/c;-><init>(III)V

    return-object v0

    :cond_0
    move v0, v1

    .line 83
    goto :goto_0
.end method

.method public static b(J)I
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 93
    const-wide v2, 0x3ffc00000000000L

    and-long/2addr v2, p0

    const-wide v4, 0x155400000000000L

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v2, "Invalid tile index"

    invoke-static {v0, v2}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    .line 95
    shr-long v0, p0, v1

    const-wide/32 v2, 0x7fffff

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0

    :cond_0
    move v0, v1

    .line 93
    goto :goto_0
.end method

.method public static c(J)I
    .locals 4
    .parameter

    .prologue
    .line 100
    const-wide v0, 0x3ffc00000000000L

    and-long/2addr v0, p0

    const-wide v2, 0x155400000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "Invalid tile index"

    invoke-static {v0, v1}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    .line 102
    const/16 v0, 0x17

    shr-long v0, p0, v0

    const-wide/32 v2, 0x7fffff

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0

    .line 100
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/nianticproject/ingress/common/q/c;->a:I

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/nianticproject/ingress/common/q/c;->b:I

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/nianticproject/ingress/common/q/c;->c:I

    return v0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 4
    .parameter

    .prologue
    .line 18
    check-cast p1, Lcom/nianticproject/ingress/common/q/c;

    iget-wide v0, p0, Lcom/nianticproject/ingress/common/q/c;->d:J

    iget-wide v2, p1, Lcom/nianticproject/ingress/common/q/c;->d:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/q/c;->d:J

    iget-wide v2, p1, Lcom/nianticproject/ingress/common/q/c;->d:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 206
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/q/c;->d:J

    return-wide v0
.end method

.method public final e()Lcom/nianticproject/ingress/common/q/a;
    .locals 4

    .prologue
    .line 210
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/c;->e:Lcom/nianticproject/ingress/common/q/a;

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Lcom/nianticproject/ingress/common/q/a;

    iget v1, p0, Lcom/nianticproject/ingress/common/q/c;->a:I

    iget v2, p0, Lcom/nianticproject/ingress/common/q/c;->b:I

    rsub-int/lit8 v1, v1, 0x1e

    shl-int v1, v2, v1

    iget v2, p0, Lcom/nianticproject/ingress/common/q/c;->a:I

    iget v3, p0, Lcom/nianticproject/ingress/common/q/c;->c:I

    rsub-int/lit8 v2, v2, 0x1e

    shl-int v2, v3, v2

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/common/q/a;-><init>(II)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/q/c;->e:Lcom/nianticproject/ingress/common/q/a;

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/c;->e:Lcom/nianticproject/ingress/common/q/a;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    .line 219
    instance-of v0, p1, Lcom/nianticproject/ingress/common/q/c;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/nianticproject/ingress/common/q/c;->d:J

    check-cast p1, Lcom/nianticproject/ingress/common/q/c;

    iget-wide v2, p1, Lcom/nianticproject/ingress/common/q/c;->d:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lcom/nianticproject/ingress/common/q/c;->f:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/nianticproject/ingress/common/q/c;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nianticproject/ingress/common/q/c;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nianticproject/ingress/common/q/c;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
