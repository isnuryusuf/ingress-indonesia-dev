.class public final Lcom/google/a/d/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/a/d/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    const-wide v0, 0x3cdb05876e5b0120L

    invoke-static {v0, v1}, Lcom/google/a/d/d;->a(D)Lcom/google/a/d/d;

    move-result-object v0

    sput-object v0, Lcom/google/a/d/o;->a:Lcom/google/a/d/d;

    return-void
.end method

.method public static strictfp a(Lcom/google/a/d/y;Lcom/google/a/d/y;Lcom/google/a/d/y;Lcom/google/a/d/y;)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 623
    invoke-virtual {p0, p1}, Lcom/google/a/d/y;->f(Lcom/google/a/d/y;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2, p3}, Lcom/google/a/d/y;->f(Lcom/google/a/d/y;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 644
    :cond_0
    :goto_0
    return v0

    .line 630
    :cond_1
    invoke-virtual {p0, p3}, Lcom/google/a/d/y;->f(Lcom/google/a/d/y;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 631
    invoke-static {p0}, Lcom/google/a/d/f;->a(Lcom/google/a/d/y;)Lcom/google/a/d/y;

    move-result-object v0

    invoke-static {v0, p2, p1, p0}, Lcom/google/a/d/f;->b(Lcom/google/a/d/y;Lcom/google/a/d/y;Lcom/google/a/d/y;Lcom/google/a/d/y;)Z

    move-result v0

    goto :goto_0

    .line 633
    :cond_2
    invoke-virtual {p1, p2}, Lcom/google/a/d/y;->f(Lcom/google/a/d/y;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 634
    invoke-static {p1}, Lcom/google/a/d/f;->a(Lcom/google/a/d/y;)Lcom/google/a/d/y;

    move-result-object v0

    invoke-static {v0, p3, p0, p1}, Lcom/google/a/d/f;->b(Lcom/google/a/d/y;Lcom/google/a/d/y;Lcom/google/a/d/y;Lcom/google/a/d/y;)Z

    move-result v0

    goto :goto_0

    .line 636
    :cond_3
    invoke-virtual {p0, p2}, Lcom/google/a/d/y;->f(Lcom/google/a/d/y;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 637
    invoke-static {p0}, Lcom/google/a/d/f;->a(Lcom/google/a/d/y;)Lcom/google/a/d/y;

    move-result-object v0

    invoke-static {v0, p3, p1, p0}, Lcom/google/a/d/f;->b(Lcom/google/a/d/y;Lcom/google/a/d/y;Lcom/google/a/d/y;Lcom/google/a/d/y;)Z

    move-result v0

    goto :goto_0

    .line 639
    :cond_4
    invoke-virtual {p1, p3}, Lcom/google/a/d/y;->f(Lcom/google/a/d/y;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 640
    invoke-static {p1}, Lcom/google/a/d/f;->a(Lcom/google/a/d/y;)Lcom/google/a/d/y;

    move-result-object v0

    invoke-static {v0, p2, p0, p1}, Lcom/google/a/d/f;->b(Lcom/google/a/d/y;Lcom/google/a/d/y;Lcom/google/a/d/y;Lcom/google/a/d/y;)Z

    move-result v0

    goto :goto_0
.end method

.method public static final strictfp b(Lcom/google/a/d/y;Lcom/google/a/d/y;Lcom/google/a/d/y;Lcom/google/a/d/y;)Z
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 701
    invoke-static {p1, p0, p2}, Lcom/google/a/d/y;->a(Lcom/google/a/d/y;Lcom/google/a/d/y;Lcom/google/a/d/y;)D

    move-result-wide v0

    .line 702
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3d06849b86a12b9bL

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    .line 703
    const/4 v0, 0x1

    .line 720
    :goto_0
    return v0

    .line 705
    :cond_0
    invoke-static {p0, p1, p3}, Lcom/google/a/d/y;->a(Lcom/google/a/d/y;Lcom/google/a/d/y;Lcom/google/a/d/y;)D

    move-result-wide v2

    .line 706
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3d06849b86a12b9bL

    cmpg-double v4, v4, v6

    if-gez v4, :cond_1

    .line 707
    const/4 v0, 0x1

    goto :goto_0

    .line 709
    :cond_1
    mul-double/2addr v2, v0

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_2

    .line 710
    const/4 v0, 0x0

    goto :goto_0

    .line 712
    :cond_2
    invoke-static {p3, p2, p1}, Lcom/google/a/d/y;->a(Lcom/google/a/d/y;Lcom/google/a/d/y;Lcom/google/a/d/y;)D

    move-result-wide v2

    .line 713
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3d06849b86a12b9bL

    cmpg-double v4, v4, v6

    if-gez v4, :cond_3

    .line 714
    const/4 v0, 0x1

    goto :goto_0

    .line 716
    :cond_3
    invoke-static {p2, p3, p0}, Lcom/google/a/d/y;->a(Lcom/google/a/d/y;Lcom/google/a/d/y;Lcom/google/a/d/y;)D

    move-result-wide v4

    .line 717
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide v8, 0x3d06849b86a12b9bL

    cmpg-double v6, v6, v8

    if-gez v6, :cond_4

    .line 718
    const/4 v0, 0x1

    goto :goto_0

    .line 720
    :cond_4
    mul-double/2addr v2, v0

    const-wide/16 v6, 0x0

    cmpl-double v2, v2, v6

    if-ltz v2, :cond_5

    mul-double/2addr v0, v4

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method
