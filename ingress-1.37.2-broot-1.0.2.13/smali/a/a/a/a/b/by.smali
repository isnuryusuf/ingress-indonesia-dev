.class public final La/a/a/a/b/by;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[J

.field public static final b:La/a/a/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 85
    new-array v0, v1, [J

    sput-object v0, La/a/a/a/b/by;->a:[J

    .line 1455
    new-instance v0, La/a/a/a/b/bz;

    invoke-direct {v0, v1}, La/a/a/a/b/bz;-><init>(B)V

    sput-object v0, La/a/a/a/b/by;->b:La/a/a/a/d;

    return-void
.end method

.method public static a([JII)[J
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 166
    array-length v0, p0

    if-le p1, v0, :cond_0

    .line 167
    const-wide/32 v0, 0x19e37

    array-length v2, p0

    int-to-long v2, v2

    mul-long/2addr v0, v2

    const/16 v2, 0x10

    ushr-long/2addr v0, v2

    int-to-long v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 168
    new-array v0, v0, [J

    .line 170
    invoke-static {p0, v4, v0, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v0

    .line 173
    :cond_0
    return-object p0
.end method
