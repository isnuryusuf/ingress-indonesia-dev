.class public final Lcom/google/a/h/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(J)I
    .locals 2
    .parameter

    .prologue
    .line 103
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    .line 104
    const v0, 0x7fffffff

    .line 109
    :goto_0
    return v0

    .line 106
    :cond_0
    const-wide/32 v0, -0x80000000

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    .line 107
    const/high16 v0, -0x8000

    goto :goto_0

    .line 109
    :cond_1
    long-to-int v0, p0

    goto :goto_0
.end method
