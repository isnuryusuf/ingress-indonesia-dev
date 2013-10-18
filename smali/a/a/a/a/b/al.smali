.class final La/a/a/a/b/al;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La/a/a/a/b/ae;
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/a/a/a/b/ae;",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/Long;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:La/a/a/a/b/ag;

.field private b:I


# direct methods
.method constructor <init>(La/a/a/a/b/ag;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 392
    iput-object p1, p0, La/a/a/a/b/al;->a:La/a/a/a/b/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 393
    iput p2, p0, La/a/a/a/b/al;->b:I

    .line 394
    return-void
.end method

.method static synthetic a(La/a/a/a/b/al;)I
    .locals 1
    .parameter

    .prologue
    .line 389
    const/4 v0, -0x1

    iput v0, p0, La/a/a/a/b/al;->b:I

    return v0
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 399
    iget-object v0, p0, La/a/a/a/b/al;->a:La/a/a/a/b/ag;

    iget-object v0, v0, La/a/a/a/b/ag;->b:[J

    iget v1, p0, La/a/a/a/b/al;->b:I

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 405
    iget-object v0, p0, La/a/a/a/b/al;->a:La/a/a/a/b/ag;

    iget-object v0, v0, La/a/a/a/b/ag;->c:[J

    iget v1, p0, La/a/a/a/b/al;->b:I

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 417
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    move v0, v1

    .line 419
    :goto_0
    return v0

    .line 418
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 419
    iget-object v0, p0, La/a/a/a/b/al;->a:La/a/a/a/b/ag;

    iget-object v0, v0, La/a/a/a/b/ag;->b:[J

    iget v2, p0, La/a/a/a/b/al;->b:I

    aget-wide v2, v0, v2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    iget-object v0, p0, La/a/a/a/b/al;->a:La/a/a/a/b/ag;

    iget-object v0, v0, La/a/a/a/b/ag;->c:[J

    iget v2, p0, La/a/a/a/b/al;->b:I

    aget-wide v2, v0, v2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final synthetic getKey()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, La/a/a/a/b/al;->a:La/a/a/a/b/ag;

    iget-object v0, v0, La/a/a/a/b/ag;->b:[J

    iget v1, p0, La/a/a/a/b/al;->b:I

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, La/a/a/a/b/al;->a:La/a/a/a/b/ag;

    iget-object v0, v0, La/a/a/a/b/ag;->c:[J

    iget v1, p0, La/a/a/a/b/al;->b:I

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 422
    iget-object v0, p0, La/a/a/a/b/al;->a:La/a/a/a/b/ag;

    iget-object v0, v0, La/a/a/a/b/ag;->b:[J

    iget v1, p0, La/a/a/a/b/al;->b:I

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, La/a/a/a/e;->b(J)I

    move-result v0

    iget-object v1, p0, La/a/a/a/b/al;->a:La/a/a/a/b/ag;

    iget-object v1, v1, La/a/a/a/b/ag;->c:[J

    iget v2, p0, La/a/a/a/b/al;->b:I

    aget-wide v1, v1, v2

    invoke-static {v1, v2}, La/a/a/a/e;->b(J)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final synthetic setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter

    .prologue
    .line 389
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, La/a/a/a/b/al;->a:La/a/a/a/b/ag;

    iget-object v2, v2, La/a/a/a/b/ag;->c:[J

    iget v3, p0, La/a/a/a/b/al;->b:I

    aget-wide v2, v2, v3

    iget-object v4, p0, La/a/a/a/b/al;->a:La/a/a/a/b/ag;

    iget-object v4, v4, La/a/a/a/b/ag;->c:[J

    iget v5, p0, La/a/a/a/b/al;->b:I

    aput-wide v0, v4, v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, La/a/a/a/b/al;->a:La/a/a/a/b/ag;

    iget-object v1, v1, La/a/a/a/b/ag;->b:[J

    iget v2, p0, La/a/a/a/b/al;->b:I

    aget-wide v1, v1, v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "=>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, La/a/a/a/b/al;->a:La/a/a/a/b/ag;

    iget-object v1, v1, La/a/a/a/b/ag;->c:[J

    iget v2, p0, La/a/a/a/b/al;->b:I

    aget-wide v1, v1, v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
