.class public final La/a/a/a/b/cf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:La/a/a/a/b/cg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    new-instance v0, La/a/a/a/b/cg;

    invoke-direct {v0}, La/a/a/a/b/cg;-><init>()V

    sput-object v0, La/a/a/a/b/cf;->a:La/a/a/a/b/cg;

    return-void
.end method

.method public static a(La/a/a/a/b/ce;[J)I
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 227
    const/4 v0, 0x0

    array-length v1, p1

    if-gez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "The maximum number of elements ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") is negative"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int/lit8 v2, v1, 0x0

    array-length v3, p1

    if-le v2, v3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    move v3, v0

    move v0, v1

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-eqz v0, :cond_2

    invoke-interface {p0}, La/a/a/a/b/ce;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v0, v3, 0x1

    invoke-interface {p0}, La/a/a/a/b/ce;->a()J

    move-result-wide v4

    aput-wide v4, p1, v3

    move v3, v0

    move v0, v2

    goto :goto_0

    :cond_2
    sub-int v0, v1, v2

    add-int/lit8 v0, v0, -0x1

    return v0
.end method
