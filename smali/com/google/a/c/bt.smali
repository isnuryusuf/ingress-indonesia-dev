.class final Lcom/google/a/c/bt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private final b:Z

.field private final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/a/c/an;

.field private final e:Z

.field private final f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final g:Lcom/google/a/c/an;


# direct methods
.method private constructor <init>(Ljava/util/Comparator;ZLjava/lang/Object;Lcom/google/a/c/an;ZLjava/lang/Object;Lcom/google/a/c/an;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TT;>;ZTT;",
            "Lcom/google/a/c/an;",
            "ZTT;",
            "Lcom/google/a/c/an;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lcom/google/a/c/bt;->a:Ljava/util/Comparator;

    .line 104
    iput-boolean p2, p0, Lcom/google/a/c/bt;->b:Z

    .line 105
    iput-boolean p5, p0, Lcom/google/a/c/bt;->e:Z

    .line 106
    iput-object p3, p0, Lcom/google/a/c/bt;->c:Ljava/lang/Object;

    .line 107
    invoke-static {p4}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/c/an;

    iput-object v0, p0, Lcom/google/a/c/bt;->d:Lcom/google/a/c/an;

    .line 108
    iput-object p6, p0, Lcom/google/a/c/bt;->f:Ljava/lang/Object;

    .line 109
    invoke-static {p7}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/c/an;

    iput-object v0, p0, Lcom/google/a/c/bt;->g:Lcom/google/a/c/an;

    .line 111
    if-eqz p2, :cond_0

    .line 112
    invoke-interface {p1, p3, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 114
    :cond_0
    if-eqz p5, :cond_1

    .line 115
    invoke-interface {p1, p6, p6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 117
    :cond_1
    if-eqz p2, :cond_2

    if-eqz p5, :cond_2

    .line 118
    invoke-interface {p1, p3, p6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 120
    if-gtz v3, :cond_3

    move v0, v1

    :goto_0
    const-string/jumbo v4, "lowerEndpoint (%s) > upperEndpoint (%s)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p3, v5, v2

    aput-object p6, v5, v1

    invoke-static {v0, v4, v5}, Lcom/google/a/a/an;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 122
    if-nez v3, :cond_2

    .line 123
    sget-object v0, Lcom/google/a/c/an;->a:Lcom/google/a/c/an;

    if-eq p4, v0, :cond_4

    move v0, v1

    :goto_1
    sget-object v3, Lcom/google/a/c/an;->a:Lcom/google/a/c/an;

    if-eq p7, v3, :cond_5

    :goto_2
    or-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 126
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 120
    goto :goto_0

    :cond_4
    move v0, v2

    .line 123
    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_2
.end method

.method static a(Ljava/util/Comparator;Ljava/lang/Object;Lcom/google/a/c/an;)Lcom/google/a/c/bt;
    .locals 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TT;>;TT;",
            "Lcom/google/a/c/an;",
            ")",
            "Lcom/google/a/c/bt",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 69
    new-instance v0, Lcom/google/a/c/bt;

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Lcom/google/a/c/an;->a:Lcom/google/a/c/an;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/a/c/bt;-><init>(Ljava/util/Comparator;ZLjava/lang/Object;Lcom/google/a/c/an;ZLjava/lang/Object;Lcom/google/a/c/an;)V

    return-object v0
.end method

.method static b(Ljava/util/Comparator;Ljava/lang/Object;Lcom/google/a/c/an;)Lcom/google/a/c/bt;
    .locals 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TT;>;TT;",
            "Lcom/google/a/c/an;",
            ")",
            "Lcom/google/a/c/bt",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 78
    new-instance v0, Lcom/google/a/c/bt;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Lcom/google/a/c/an;->a:Lcom/google/a/c/an;

    const/4 v5, 0x1

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/a/c/bt;-><init>(Ljava/util/Comparator;ZLjava/lang/Object;Lcom/google/a/c/an;ZLjava/lang/Object;Lcom/google/a/c/an;)V

    return-object v0
.end method


# virtual methods
.method final a(Lcom/google/a/c/bt;)Lcom/google/a/c/bt;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/bt",
            "<TT;>;)",
            "Lcom/google/a/c/bt",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 171
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v0, p0, Lcom/google/a/c/bt;->a:Ljava/util/Comparator;

    iget-object v1, p1, Lcom/google/a/c/bt;->a:Ljava/util/Comparator;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 174
    iget-boolean v0, p0, Lcom/google/a/c/bt;->b:Z

    .line 176
    iget-object v2, p0, Lcom/google/a/c/bt;->c:Ljava/lang/Object;

    .line 177
    iget-object v1, p0, Lcom/google/a/c/bt;->d:Lcom/google/a/c/an;

    .line 178
    iget-boolean v3, p0, Lcom/google/a/c/bt;->b:Z

    if-nez v3, :cond_3

    .line 179
    iget-boolean v0, p1, Lcom/google/a/c/bt;->b:Z

    .line 185
    :cond_0
    iget-object v2, p1, Lcom/google/a/c/bt;->c:Ljava/lang/Object;

    .line 186
    iget-object v1, p1, Lcom/google/a/c/bt;->d:Lcom/google/a/c/an;

    move-object v9, v1

    move-object v1, v2

    move v2, v0

    move-object v0, v9

    .line 190
    :goto_0
    iget-boolean v3, p0, Lcom/google/a/c/bt;->e:Z

    .line 192
    iget-object v6, p0, Lcom/google/a/c/bt;->f:Ljava/lang/Object;

    .line 193
    iget-object v7, p0, Lcom/google/a/c/bt;->g:Lcom/google/a/c/an;

    .line 194
    iget-boolean v4, p0, Lcom/google/a/c/bt;->e:Z

    if-nez v4, :cond_5

    .line 195
    iget-boolean v3, p1, Lcom/google/a/c/bt;->e:Z

    .line 201
    :cond_1
    iget-object v6, p1, Lcom/google/a/c/bt;->f:Ljava/lang/Object;

    .line 202
    iget-object v7, p1, Lcom/google/a/c/bt;->g:Lcom/google/a/c/an;

    move v5, v3

    .line 207
    :goto_1
    if-eqz v2, :cond_7

    if-eqz v5, :cond_7

    .line 208
    iget-object v3, p0, Lcom/google/a/c/bt;->a:Ljava/util/Comparator;

    invoke-interface {v3, v1, v6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 209
    if-gtz v3, :cond_2

    if-nez v3, :cond_7

    sget-object v3, Lcom/google/a/c/an;->a:Lcom/google/a/c/an;

    if-ne v0, v3, :cond_7

    sget-object v3, Lcom/google/a/c/an;->a:Lcom/google/a/c/an;

    if-ne v7, v3, :cond_7

    .line 212
    :cond_2
    sget-object v0, Lcom/google/a/c/an;->a:Lcom/google/a/c/an;

    .line 213
    sget-object v7, Lcom/google/a/c/an;->b:Lcom/google/a/c/an;

    move-object v4, v0

    move-object v3, v6

    .line 217
    :goto_2
    new-instance v0, Lcom/google/a/c/bt;

    iget-object v1, p0, Lcom/google/a/c/bt;->a:Ljava/util/Comparator;

    invoke-direct/range {v0 .. v7}, Lcom/google/a/c/bt;-><init>(Ljava/util/Comparator;ZLjava/lang/Object;Lcom/google/a/c/an;ZLjava/lang/Object;Lcom/google/a/c/an;)V

    return-object v0

    .line 182
    :cond_3
    iget-boolean v3, p1, Lcom/google/a/c/bt;->b:Z

    if-eqz v3, :cond_4

    .line 183
    iget-object v3, p0, Lcom/google/a/c/bt;->a:Ljava/util/Comparator;

    iget-object v4, p0, Lcom/google/a/c/bt;->c:Ljava/lang/Object;

    iget-object v5, p1, Lcom/google/a/c/bt;->c:Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 184
    if-ltz v3, :cond_0

    if-nez v3, :cond_4

    iget-object v3, p1, Lcom/google/a/c/bt;->d:Lcom/google/a/c/an;

    sget-object v4, Lcom/google/a/c/an;->a:Lcom/google/a/c/an;

    if-eq v3, v4, :cond_0

    :cond_4
    move-object v9, v1

    move-object v1, v2

    move v2, v0

    move-object v0, v9

    goto :goto_0

    .line 198
    :cond_5
    iget-boolean v4, p1, Lcom/google/a/c/bt;->e:Z

    if-eqz v4, :cond_6

    .line 199
    iget-object v4, p0, Lcom/google/a/c/bt;->a:Ljava/util/Comparator;

    iget-object v5, p0, Lcom/google/a/c/bt;->f:Ljava/lang/Object;

    iget-object v8, p1, Lcom/google/a/c/bt;->f:Ljava/lang/Object;

    invoke-interface {v4, v5, v8}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    .line 200
    if-gtz v4, :cond_1

    if-nez v4, :cond_6

    iget-object v4, p1, Lcom/google/a/c/bt;->g:Lcom/google/a/c/an;

    sget-object v5, Lcom/google/a/c/an;->a:Lcom/google/a/c/an;

    if-eq v4, v5, :cond_1

    :cond_6
    move v5, v3

    goto :goto_1

    :cond_7
    move-object v4, v0

    move-object v3, v1

    goto :goto_2
.end method

.method final a()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/a/c/bt;->a:Ljava/util/Comparator;

    return-object v0
.end method

.method final a(Ljava/lang/Object;)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 146
    iget-boolean v0, p0, Lcom/google/a/c/bt;->b:Z

    if-nez v0, :cond_0

    .line 151
    :goto_0
    return v2

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/google/a/c/bt;->c:Ljava/lang/Object;

    .line 150
    iget-object v3, p0, Lcom/google/a/c/bt;->a:Ljava/util/Comparator;

    invoke-interface {v3, p1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 151
    if-gez v0, :cond_1

    move v3, v1

    :goto_1
    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    iget-object v4, p0, Lcom/google/a/c/bt;->d:Lcom/google/a/c/an;

    sget-object v5, Lcom/google/a/c/an;->a:Lcom/google/a/c/an;

    if-ne v4, v5, :cond_3

    :goto_3
    and-int/2addr v0, v1

    or-int v2, v3, v0

    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method

.method final b()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/google/a/c/bt;->b:Z

    return v0
.end method

.method final b(Ljava/lang/Object;)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 155
    iget-boolean v0, p0, Lcom/google/a/c/bt;->e:Z

    if-nez v0, :cond_0

    .line 160
    :goto_0
    return v2

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/google/a/c/bt;->f:Ljava/lang/Object;

    .line 159
    iget-object v3, p0, Lcom/google/a/c/bt;->a:Ljava/util/Comparator;

    invoke-interface {v3, p1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 160
    if-lez v0, :cond_1

    move v3, v1

    :goto_1
    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    iget-object v4, p0, Lcom/google/a/c/bt;->g:Lcom/google/a/c/an;

    sget-object v5, Lcom/google/a/c/an;->a:Lcom/google/a/c/an;

    if-ne v4, v5, :cond_3

    :goto_3
    and-int/2addr v0, v1

    or-int v2, v3, v0

    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method

.method final c()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/google/a/c/bt;->e:Z

    return v0
.end method

.method final c(Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 164
    invoke-virtual {p0, p1}, Lcom/google/a/c/bt;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/a/c/bt;->b(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final d()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 270
    iget-object v0, p0, Lcom/google/a/c/bt;->c:Ljava/lang/Object;

    return-object v0
.end method

.method final e()Lcom/google/a/c/an;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/google/a/c/bt;->d:Lcom/google/a/c/an;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 222
    instance-of v1, p1, Lcom/google/a/c/bt;

    if-eqz v1, :cond_0

    .line 223
    check-cast p1, Lcom/google/a/c/bt;

    .line 224
    iget-object v1, p0, Lcom/google/a/c/bt;->a:Ljava/util/Comparator;

    iget-object v2, p1, Lcom/google/a/c/bt;->a:Ljava/util/Comparator;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/a/c/bt;->b:Z

    iget-boolean v2, p1, Lcom/google/a/c/bt;->b:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/google/a/c/bt;->e:Z

    iget-boolean v2, p1, Lcom/google/a/c/bt;->e:Z

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/a/c/bt;->d:Lcom/google/a/c/an;

    iget-object v2, p1, Lcom/google/a/c/bt;->d:Lcom/google/a/c/an;

    invoke-virtual {v1, v2}, Lcom/google/a/c/an;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/a/c/bt;->g:Lcom/google/a/c/an;

    iget-object v2, p1, Lcom/google/a/c/bt;->g:Lcom/google/a/c/an;

    invoke-virtual {v1, v2}, Lcom/google/a/c/an;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/a/c/bt;->c:Ljava/lang/Object;

    iget-object v2, p1, Lcom/google/a/c/bt;->c:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/a/c/bt;->f:Ljava/lang/Object;

    iget-object v2, p1, Lcom/google/a/c/bt;->f:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 230
    :cond_0
    return v0
.end method

.method final f()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 278
    iget-object v0, p0, Lcom/google/a/c/bt;->f:Ljava/lang/Object;

    return-object v0
.end method

.method final g()Lcom/google/a/c/an;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/google/a/c/bt;->g:Lcom/google/a/c/an;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 235
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/a/c/bt;->a:Ljava/util/Comparator;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/a/c/bt;->c:Ljava/lang/Object;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/a/c/bt;->d:Lcom/google/a/c/an;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/a/c/bt;->f:Ljava/lang/Object;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/a/c/bt;->g:Lcom/google/a/c/an;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/a/c/bt;->a:Ljava/util/Comparator;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/google/a/c/bt;->d:Lcom/google/a/c/an;

    sget-object v2, Lcom/google/a/c/an;->b:Lcom/google/a/c/an;

    if-ne v0, v2, :cond_0

    const/16 v0, 0x5b

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/google/a/c/bt;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/a/c/bt;->c:Ljava/lang/Object;

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/google/a/c/bt;->e:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/a/c/bt;->f:Ljava/lang/Object;

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/google/a/c/bt;->g:Lcom/google/a/c/an;

    sget-object v2, Lcom/google/a/c/an;->b:Lcom/google/a/c/an;

    if-ne v0, v2, :cond_3

    const/16 v0, 0x5d

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v0, 0x28

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "-\u221e"

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "\u221e"

    goto :goto_2

    :cond_3
    const/16 v0, 0x29

    goto :goto_3
.end method
