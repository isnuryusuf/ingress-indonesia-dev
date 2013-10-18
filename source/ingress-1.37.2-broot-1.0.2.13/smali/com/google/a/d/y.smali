.class public final Lcom/google/a/d/y;
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
        "Lcom/google/a/d/y;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/google/a/d/y;

.field public static final b:Lcom/google/a/d/y;

.field public static final c:Lcom/google/a/d/y;

.field public static final d:Lcom/google/a/d/y;

.field public static final e:Lcom/google/a/d/y;

.field public static final f:Lcom/google/a/d/y;

.field public static final g:Lcom/google/a/d/y;


# instance fields
.field final h:D

.field final i:D

.field final j:D


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const-wide/high16 v12, 0x3ff0

    const-wide/high16 v10, -0x4010

    const-wide/16 v1, 0x0

    .line 28
    new-instance v0, Lcom/google/a/d/y;

    move-wide v3, v1

    move-wide v5, v1

    invoke-direct/range {v0 .. v6}, Lcom/google/a/d/y;-><init>(DDD)V

    sput-object v0, Lcom/google/a/d/y;->a:Lcom/google/a/d/y;

    .line 31
    new-instance v3, Lcom/google/a/d/y;

    move-wide v4, v12

    move-wide v6, v1

    move-wide v8, v1

    invoke-direct/range {v3 .. v9}, Lcom/google/a/d/y;-><init>(DDD)V

    sput-object v3, Lcom/google/a/d/y;->b:Lcom/google/a/d/y;

    .line 34
    new-instance v3, Lcom/google/a/d/y;

    move-wide v4, v10

    move-wide v6, v1

    move-wide v8, v1

    invoke-direct/range {v3 .. v9}, Lcom/google/a/d/y;-><init>(DDD)V

    sput-object v3, Lcom/google/a/d/y;->c:Lcom/google/a/d/y;

    .line 37
    new-instance v0, Lcom/google/a/d/y;

    move-wide v3, v12

    move-wide v5, v1

    invoke-direct/range {v0 .. v6}, Lcom/google/a/d/y;-><init>(DDD)V

    sput-object v0, Lcom/google/a/d/y;->d:Lcom/google/a/d/y;

    .line 40
    new-instance v0, Lcom/google/a/d/y;

    move-wide v3, v10

    move-wide v5, v1

    invoke-direct/range {v0 .. v6}, Lcom/google/a/d/y;-><init>(DDD)V

    sput-object v0, Lcom/google/a/d/y;->e:Lcom/google/a/d/y;

    .line 43
    new-instance v0, Lcom/google/a/d/y;

    move-wide v3, v1

    move-wide v5, v12

    invoke-direct/range {v0 .. v6}, Lcom/google/a/d/y;-><init>(DDD)V

    sput-object v0, Lcom/google/a/d/y;->f:Lcom/google/a/d/y;

    .line 46
    new-instance v0, Lcom/google/a/d/y;

    move-wide v3, v1

    move-wide v5, v10

    invoke-direct/range {v0 .. v6}, Lcom/google/a/d/y;-><init>(DDD)V

    sput-object v0, Lcom/google/a/d/y;->g:Lcom/google/a/d/y;

    return-void
.end method

.method public strictfp constructor <init>()V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/a/d/y;->j:D

    iput-wide v0, p0, Lcom/google/a/d/y;->i:D

    iput-wide v0, p0, Lcom/google/a/d/y;->h:D

    .line 55
    return-void
.end method

.method public strictfp constructor <init>(DDD)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-wide p1, p0, Lcom/google/a/d/y;->h:D

    .line 59
    iput-wide p3, p0, Lcom/google/a/d/y;->i:D

    .line 60
    iput-wide p5, p0, Lcom/google/a/d/y;->j:D

    .line 61
    return-void
.end method

.method public static final strictfp a(Lcom/google/a/d/y;Lcom/google/a/d/y;Lcom/google/a/d/y;)D
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 114
    iget-wide v0, p1, Lcom/google/a/d/y;->i:D

    iget-wide v2, p2, Lcom/google/a/d/y;->j:D

    mul-double/2addr v0, v2

    iget-wide v2, p1, Lcom/google/a/d/y;->j:D

    iget-wide v4, p2, Lcom/google/a/d/y;->i:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    .line 115
    iget-wide v2, p1, Lcom/google/a/d/y;->j:D

    iget-wide v4, p2, Lcom/google/a/d/y;->h:D

    mul-double/2addr v2, v4

    iget-wide v4, p1, Lcom/google/a/d/y;->h:D

    iget-wide v6, p2, Lcom/google/a/d/y;->j:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    .line 116
    iget-wide v4, p1, Lcom/google/a/d/y;->h:D

    iget-wide v6, p2, Lcom/google/a/d/y;->i:D

    mul-double/2addr v4, v6

    iget-wide v6, p1, Lcom/google/a/d/y;->i:D

    iget-wide v8, p2, Lcom/google/a/d/y;->h:D

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    .line 117
    iget-wide v6, p0, Lcom/google/a/d/y;->h:D

    mul-double/2addr v0, v6

    iget-wide v6, p0, Lcom/google/a/d/y;->i:D

    mul-double/2addr v2, v6

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/google/a/d/y;->j:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 119
    return-wide v0
.end method

.method public static final strictfp a(Lcom/google/a/d/y;)Lcom/google/a/d/y;
    .locals 7
    .parameter

    .prologue
    .line 80
    new-instance v0, Lcom/google/a/d/y;

    iget-wide v1, p0, Lcom/google/a/d/y;->h:D

    neg-double v1, v1

    iget-wide v3, p0, Lcom/google/a/d/y;->i:D

    neg-double v3, v3

    iget-wide v5, p0, Lcom/google/a/d/y;->j:D

    neg-double v5, v5

    invoke-direct/range {v0 .. v6}, Lcom/google/a/d/y;-><init>(DDD)V

    return-object v0
.end method

.method public static final strictfp a(Lcom/google/a/d/y;D)Lcom/google/a/d/y;
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 123
    new-instance v0, Lcom/google/a/d/y;

    iget-wide v1, p0, Lcom/google/a/d/y;->h:D

    mul-double/2addr v1, p1

    iget-wide v3, p0, Lcom/google/a/d/y;->i:D

    mul-double/2addr v3, p1

    iget-wide v5, p0, Lcom/google/a/d/y;->j:D

    mul-double/2addr v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/a/d/y;-><init>(DDD)V

    return-object v0
.end method

.method public static final strictfp a(Lcom/google/a/d/y;Lcom/google/a/d/y;)Lcom/google/a/d/y;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-static {p0, p1}, Lcom/google/a/d/y;->d(Lcom/google/a/d/y;Lcom/google/a/d/y;)Lcom/google/a/d/y;

    move-result-object v0

    return-object v0
.end method

.method public static final strictfp b(Lcom/google/a/d/y;Lcom/google/a/d/y;)Lcom/google/a/d/y;
    .locals 11
    .parameter
    .parameter

    .prologue
    .line 92
    new-instance v0, Lcom/google/a/d/y;

    iget-wide v1, p0, Lcom/google/a/d/y;->i:D

    iget-wide v3, p1, Lcom/google/a/d/y;->j:D

    mul-double/2addr v1, v3

    iget-wide v3, p0, Lcom/google/a/d/y;->j:D

    iget-wide v5, p1, Lcom/google/a/d/y;->i:D

    mul-double/2addr v3, v5

    sub-double/2addr v1, v3

    iget-wide v3, p0, Lcom/google/a/d/y;->j:D

    iget-wide v5, p1, Lcom/google/a/d/y;->h:D

    mul-double/2addr v3, v5

    iget-wide v5, p0, Lcom/google/a/d/y;->h:D

    iget-wide v7, p1, Lcom/google/a/d/y;->j:D

    mul-double/2addr v5, v7

    sub-double/2addr v3, v5

    iget-wide v5, p0, Lcom/google/a/d/y;->h:D

    iget-wide v7, p1, Lcom/google/a/d/y;->i:D

    mul-double/2addr v5, v7

    iget-wide v7, p0, Lcom/google/a/d/y;->i:D

    iget-wide v9, p1, Lcom/google/a/d/y;->h:D

    mul-double/2addr v7, v9

    sub-double/2addr v5, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/a/d/y;-><init>(DDD)V

    return-object v0
.end method

.method public static final strictfp c(Lcom/google/a/d/y;)Lcom/google/a/d/y;
    .locals 9
    .parameter

    .prologue
    const-wide/high16 v7, 0x4000

    .line 127
    new-instance v0, Lcom/google/a/d/y;

    iget-wide v1, p0, Lcom/google/a/d/y;->h:D

    div-double/2addr v1, v7

    iget-wide v3, p0, Lcom/google/a/d/y;->i:D

    div-double/2addr v3, v7

    iget-wide v5, p0, Lcom/google/a/d/y;->j:D

    div-double/2addr v5, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/a/d/y;-><init>(DDD)V

    return-object v0
.end method

.method public static final strictfp c(Lcom/google/a/d/y;Lcom/google/a/d/y;)Lcom/google/a/d/y;
    .locals 9
    .parameter
    .parameter

    .prologue
    .line 97
    new-instance v0, Lcom/google/a/d/y;

    iget-wide v1, p0, Lcom/google/a/d/y;->h:D

    iget-wide v3, p1, Lcom/google/a/d/y;->h:D

    add-double/2addr v1, v3

    iget-wide v3, p0, Lcom/google/a/d/y;->i:D

    iget-wide v5, p1, Lcom/google/a/d/y;->i:D

    add-double/2addr v3, v5

    iget-wide v5, p0, Lcom/google/a/d/y;->j:D

    iget-wide v7, p1, Lcom/google/a/d/y;->j:D

    add-double/2addr v5, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/a/d/y;-><init>(DDD)V

    return-object v0
.end method

.method public static final strictfp d(Lcom/google/a/d/y;)Lcom/google/a/d/y;
    .locals 4
    .parameter

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/google/a/d/y;->a()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 170
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-eqz v2, :cond_0

    .line 171
    const-wide/high16 v2, 0x3ff0

    div-double v0, v2, v0

    .line 173
    :cond_0
    invoke-static {p0, v0, v1}, Lcom/google/a/d/y;->a(Lcom/google/a/d/y;D)Lcom/google/a/d/y;

    move-result-object v0

    return-object v0
.end method

.method public static final strictfp d(Lcom/google/a/d/y;Lcom/google/a/d/y;)Lcom/google/a/d/y;
    .locals 9
    .parameter
    .parameter

    .prologue
    .line 101
    new-instance v0, Lcom/google/a/d/y;

    iget-wide v1, p0, Lcom/google/a/d/y;->h:D

    iget-wide v3, p1, Lcom/google/a/d/y;->h:D

    sub-double/2addr v1, v3

    iget-wide v3, p0, Lcom/google/a/d/y;->i:D

    iget-wide v5, p1, Lcom/google/a/d/y;->i:D

    sub-double/2addr v3, v5

    iget-wide v5, p0, Lcom/google/a/d/y;->j:D

    iget-wide v7, p1, Lcom/google/a/d/y;->j:D

    sub-double/2addr v5, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/a/d/y;-><init>(DDD)V

    return-object v0
.end method


# virtual methods
.method public final strictfp a()D
    .locals 6

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/google/a/d/y;->h:D

    iget-wide v2, p0, Lcom/google/a/d/y;->h:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/google/a/d/y;->i:D

    iget-wide v4, p0, Lcom/google/a/d/y;->i:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/google/a/d/y;->j:D

    iget-wide v4, p0, Lcom/google/a/d/y;->j:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public final strictfp a(I)D
    .locals 2
    .parameter

    .prologue
    .line 177
    if-nez p1, :cond_0

    iget-wide v0, p0, Lcom/google/a/d/y;->h:D

    :goto_0
    return-wide v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-wide v0, p0, Lcom/google/a/d/y;->i:D

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lcom/google/a/d/y;->j:D

    goto :goto_0
.end method

.method public final strictfp b()D
    .locals 2

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/google/a/d/y;->a()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public final strictfp b(Lcom/google/a/d/y;)D
    .locals 6
    .parameter

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/google/a/d/y;->h:D

    iget-wide v2, p1, Lcom/google/a/d/y;->h:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/google/a/d/y;->i:D

    iget-wide v4, p1, Lcom/google/a/d/y;->i:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/google/a/d/y;->j:D

    iget-wide v4, p1, Lcom/google/a/d/y;->j:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public final strictfp c()Lcom/google/a/d/y;
    .locals 2

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/google/a/d/y;->d()I

    move-result v0

    .line 134
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 135
    sget-object v0, Lcom/google/a/d/y;->b:Lcom/google/a/d/y;

    .line 141
    :goto_0
    invoke-static {p0, v0}, Lcom/google/a/d/y;->b(Lcom/google/a/d/y;Lcom/google/a/d/y;)Lcom/google/a/d/y;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/d/y;->d(Lcom/google/a/d/y;)Lcom/google/a/d/y;

    move-result-object v0

    return-object v0

    .line 136
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 137
    sget-object v0, Lcom/google/a/d/y;->d:Lcom/google/a/d/y;

    goto :goto_0

    .line 139
    :cond_1
    sget-object v0, Lcom/google/a/d/y;->f:Lcom/google/a/d/y;

    goto :goto_0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 26
    check-cast p1, Lcom/google/a/d/y;

    invoke-virtual {p0, p1}, Lcom/google/a/d/y;->h(Lcom/google/a/d/y;)I

    move-result v0

    return v0
.end method

.method public final strictfp d()I
    .locals 8

    .prologue
    const/4 v0, 0x2

    .line 146
    iget-wide v1, p0, Lcom/google/a/d/y;->h:D

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    .line 147
    iget-wide v3, p0, Lcom/google/a/d/y;->i:D

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    .line 148
    iget-wide v5, p0, Lcom/google/a/d/y;->j:D

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    .line 149
    cmpl-double v7, v1, v3

    if-lez v7, :cond_1

    .line 150
    cmpl-double v1, v1, v5

    if-lez v1, :cond_0

    .line 151
    const/4 v0, 0x0

    .line 159
    :cond_0
    :goto_0
    return v0

    .line 156
    :cond_1
    cmpl-double v1, v3, v5

    if-lez v1, :cond_0

    .line 157
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final strictfp e(Lcom/google/a/d/y;)D
    .locals 10
    .parameter

    .prologue
    .line 196
    iget-wide v0, p0, Lcom/google/a/d/y;->i:D

    iget-wide v2, p1, Lcom/google/a/d/y;->j:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/google/a/d/y;->j:D

    iget-wide v4, p1, Lcom/google/a/d/y;->i:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lcom/google/a/d/y;->j:D

    iget-wide v4, p1, Lcom/google/a/d/y;->h:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lcom/google/a/d/y;->h:D

    iget-wide v6, p1, Lcom/google/a/d/y;->j:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lcom/google/a/d/y;->h:D

    iget-wide v6, p1, Lcom/google/a/d/y;->i:D

    mul-double/2addr v4, v6

    iget-wide v6, p0, Lcom/google/a/d/y;->i:D

    iget-wide v8, p1, Lcom/google/a/d/y;->h:D

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    mul-double/2addr v0, v0

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    mul-double v2, v4, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-virtual {p0, p1}, Lcom/google/a/d/y;->b(Lcom/google/a/d/y;)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public final strictfp e()Ljava/lang/String;
    .locals 4

    .prologue
    .line 256
    new-instance v0, Lcom/google/a/d/u;

    invoke-direct {v0, p0}, Lcom/google/a/d/u;-><init>(Lcom/google/a/d/y;)V

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/a/d/u;->c()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/a/d/u;->f()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final strictfp equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 210
    instance-of v1, p1, Lcom/google/a/d/y;

    if-nez v1, :cond_1

    .line 214
    :cond_0
    :goto_0
    return v0

    .line 213
    :cond_1
    check-cast p1, Lcom/google/a/d/y;

    .line 214
    iget-wide v1, p0, Lcom/google/a/d/y;->h:D

    iget-wide v3, p1, Lcom/google/a/d/y;->h:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Lcom/google/a/d/y;->i:D

    iget-wide v3, p1, Lcom/google/a/d/y;->i:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Lcom/google/a/d/y;->j:D

    iget-wide v3, p1, Lcom/google/a/d/y;->j:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final strictfp f(Lcom/google/a/d/y;)Z
    .locals 4
    .parameter

    .prologue
    .line 222
    iget-wide v0, p0, Lcom/google/a/d/y;->h:D

    iget-wide v2, p1, Lcom/google/a/d/y;->h:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/a/d/y;->i:D

    iget-wide v2, p1, Lcom/google/a/d/y;->i:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/a/d/y;->j:D

    iget-wide v2, p1, Lcom/google/a/d/y;->j:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final strictfp g(Lcom/google/a/d/y;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 226
    iget-wide v2, p0, Lcom/google/a/d/y;->h:D

    iget-wide v4, p1, Lcom/google/a/d/y;->h:D

    cmpg-double v2, v2, v4

    if-gez v2, :cond_1

    .line 241
    :cond_0
    :goto_0
    return v0

    .line 229
    :cond_1
    iget-wide v2, p1, Lcom/google/a/d/y;->h:D

    iget-wide v4, p0, Lcom/google/a/d/y;->h:D

    cmpg-double v2, v2, v4

    if-gez v2, :cond_2

    move v0, v1

    .line 230
    goto :goto_0

    .line 232
    :cond_2
    iget-wide v2, p0, Lcom/google/a/d/y;->i:D

    iget-wide v4, p1, Lcom/google/a/d/y;->i:D

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_0

    .line 235
    iget-wide v2, p1, Lcom/google/a/d/y;->i:D

    iget-wide v4, p0, Lcom/google/a/d/y;->i:D

    cmpg-double v2, v2, v4

    if-gez v2, :cond_3

    move v0, v1

    .line 236
    goto :goto_0

    .line 238
    :cond_3
    iget-wide v2, p0, Lcom/google/a/d/y;->j:D

    iget-wide v4, p1, Lcom/google/a/d/y;->j:D

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_0

    move v0, v1

    .line 241
    goto :goto_0
.end method

.method public final strictfp h(Lcom/google/a/d/y;)I
    .locals 1
    .parameter

    .prologue
    .line 247
    invoke-virtual {p0, p1}, Lcom/google/a/d/y;->g(Lcom/google/a/d/y;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/a/d/y;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final strictfp hashCode()I
    .locals 8

    .prologue
    const-wide/16 v6, 0x25

    .line 267
    const-wide/16 v0, 0x11

    const-wide/16 v2, 0x275

    iget-wide v4, p0, Lcom/google/a/d/y;->h:D

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 269
    mul-long v2, v6, v0

    iget-wide v4, p0, Lcom/google/a/d/y;->i:D

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 270
    mul-long v2, v6, v0

    iget-wide v4, p0, Lcom/google/a/d/y;->j:D

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

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

.method public final strictfp toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/google/a/d/y;->h:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/a/d/y;->i:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/a/d/y;->j:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
