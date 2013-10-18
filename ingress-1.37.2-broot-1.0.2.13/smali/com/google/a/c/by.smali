.class public final Lcom/google/a/c/by;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Lcom/google/a/c/am;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Lcom/google/a/c/am",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private transient a:[Lcom/google/a/c/bz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/a/c/bz",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient b:[Lcom/google/a/c/bz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/a/c/bz",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient c:I

.field private transient d:I

.field private transient e:I

.field private transient f:Lcom/google/a/c/am;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/am",
            "<TV;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 109
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 110
    if-ltz p1, :cond_0

    move v0, v1

    :goto_0
    const-string/jumbo v3, "expectedSize must be >= 0 but was %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/a/a/an;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    const-wide/high16 v0, 0x3ff0

    invoke-static {p1, v0, v1}, Lcom/google/a/c/co;->a(ID)I

    move-result v0

    new-array v1, v0, [Lcom/google/a/c/bz;

    iput-object v1, p0, Lcom/google/a/c/by;->a:[Lcom/google/a/c/bz;

    new-array v1, v0, [Lcom/google/a/c/bz;

    iput-object v1, p0, Lcom/google/a/c/by;->b:[Lcom/google/a/c/bz;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/a/c/by;->d:I

    iput v2, p0, Lcom/google/a/c/by;->e:I

    iput v2, p0, Lcom/google/a/c/by;->c:I

    .line 111
    return-void

    :cond_0
    move v0, v2

    .line 110
    goto :goto_0
.end method

.method static synthetic a(Lcom/google/a/c/by;)I
    .locals 1
    .parameter

    .prologue
    .line 51
    iget v0, p0, Lcom/google/a/c/by;->e:I

    return v0
.end method

.method static synthetic a(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 51
    invoke-static {p0}, Lcom/google/a/c/by;->b(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static a(I)Lcom/google/a/c/by;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/a/c/by",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 67
    new-instance v0, Lcom/google/a/c/by;

    invoke-direct {v0, p0}, Lcom/google/a/c/by;-><init>(I)V

    return-object v0
.end method

.method static synthetic a(Lcom/google/a/c/by;Ljava/lang/Object;I)Lcom/google/a/c/bz;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/google/a/c/by;->a(Ljava/lang/Object;I)Lcom/google/a/c/bz;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Object;I)Lcom/google/a/c/bz;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)",
            "Lcom/google/a/c/bz",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/a/c/by;->a:[Lcom/google/a/c/bz;

    iget v1, p0, Lcom/google/a/c/by;->d:I

    and-int/2addr v1, p2

    aget-object v0, v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 182
    iget v1, v0, Lcom/google/a/c/bz;->b:I

    if-ne p2, v1, :cond_0

    iget-object v1, v0, Lcom/google/a/c/bz;->a:Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    :goto_1
    return-object v0

    .line 181
    :cond_0
    iget-object v0, v0, Lcom/google/a/c/bz;->e:Lcom/google/a/c/bz;

    goto :goto_0

    .line 186
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic a(Lcom/google/a/c/by;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-static {p1}, Lcom/google/a/c/by;->b(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p2}, Lcom/google/a/c/by;->b(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {p0, p1, v0}, Lcom/google/a/c/by;->b(Ljava/lang/Object;I)Lcom/google/a/c/bz;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v3, v2, Lcom/google/a/c/bz;->b:I

    if-ne v1, v3, :cond_0

    iget-object v3, v2, Lcom/google/a/c/bz;->a:Ljava/lang/Object;

    invoke-static {p2, v3}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return-object p2

    :cond_0
    invoke-direct {p0, p2, v1}, Lcom/google/a/c/by;->a(Ljava/lang/Object;I)Lcom/google/a/c/bz;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "value already present: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz v2, :cond_2

    invoke-direct {p0, v2}, Lcom/google/a/c/by;->a(Lcom/google/a/c/bz;)V

    :cond_2
    new-instance v3, Lcom/google/a/c/bz;

    invoke-direct {v3, p2, v1, p1, v0}, Lcom/google/a/c/bz;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    invoke-direct {p0, v3}, Lcom/google/a/c/by;->b(Lcom/google/a/c/bz;)V

    invoke-direct {p0}, Lcom/google/a/c/by;->c()V

    if-nez v2, :cond_3

    const/4 p2, 0x0

    goto :goto_0

    :cond_3
    iget-object p2, v2, Lcom/google/a/c/bz;->a:Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/a/c/by;Lcom/google/a/c/bz;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/google/a/c/by;->a(Lcom/google/a/c/bz;)V

    return-void
.end method

.method private a(Lcom/google/a/c/bz;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/bz",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 128
    iget v0, p1, Lcom/google/a/c/bz;->b:I

    iget v2, p0, Lcom/google/a/c/by;->d:I

    and-int v3, v0, v2

    .line 130
    iget-object v0, p0, Lcom/google/a/c/by;->a:[Lcom/google/a/c/bz;

    aget-object v0, v0, v3

    move-object v2, v1

    .line 132
    :goto_0
    if-ne v0, p1, :cond_1

    .line 133
    if-nez v2, :cond_0

    .line 134
    iget-object v0, p0, Lcom/google/a/c/by;->a:[Lcom/google/a/c/bz;

    iget-object v2, p1, Lcom/google/a/c/bz;->e:Lcom/google/a/c/bz;

    aput-object v2, v0, v3

    .line 143
    :goto_1
    iget v0, p1, Lcom/google/a/c/bz;->d:I

    iget v2, p0, Lcom/google/a/c/by;->d:I

    and-int/2addr v2, v0

    .line 145
    iget-object v0, p0, Lcom/google/a/c/by;->b:[Lcom/google/a/c/bz;

    aget-object v0, v0, v2

    .line 147
    :goto_2
    if-ne v0, p1, :cond_3

    .line 148
    if-nez v1, :cond_2

    .line 149
    iget-object v0, p0, Lcom/google/a/c/by;->b:[Lcom/google/a/c/bz;

    iget-object v1, p1, Lcom/google/a/c/bz;->f:Lcom/google/a/c/bz;

    aput-object v1, v0, v2

    .line 158
    :goto_3
    iget v0, p0, Lcom/google/a/c/by;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/a/c/by;->c:I

    .line 159
    iget v0, p0, Lcom/google/a/c/by;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/a/c/by;->e:I

    .line 160
    return-void

    .line 136
    :cond_0
    iget-object v0, p1, Lcom/google/a/c/bz;->e:Lcom/google/a/c/bz;

    iput-object v0, v2, Lcom/google/a/c/bz;->e:Lcom/google/a/c/bz;

    goto :goto_1

    .line 131
    :cond_1
    iget-object v2, v0, Lcom/google/a/c/bz;->e:Lcom/google/a/c/bz;

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_0

    .line 151
    :cond_2
    iget-object v0, p1, Lcom/google/a/c/bz;->f:Lcom/google/a/c/bz;

    iput-object v0, v1, Lcom/google/a/c/bz;->f:Lcom/google/a/c/bz;

    goto :goto_3

    .line 146
    :cond_3
    iget-object v1, v0, Lcom/google/a/c/bz;->f:Lcom/google/a/c/bz;

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_2
.end method

.method private static b(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 176
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/a/c/co;->a(I)I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public static b()Lcom/google/a/c/by;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/a/c/by",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 57
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/google/a/c/by;->a(I)Lcom/google/a/c/by;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/google/a/c/by;Ljava/lang/Object;I)Lcom/google/a/c/bz;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/google/a/c/by;->b(Ljava/lang/Object;I)Lcom/google/a/c/bz;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/Object;I)Lcom/google/a/c/bz;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)",
            "Lcom/google/a/c/bz",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/a/c/by;->b:[Lcom/google/a/c/bz;

    iget v1, p0, Lcom/google/a/c/by;->d:I

    and-int/2addr v1, p2

    aget-object v0, v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 192
    iget v1, v0, Lcom/google/a/c/bz;->d:I

    if-ne p2, v1, :cond_0

    iget-object v1, v0, Lcom/google/a/c/bz;->c:Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    :goto_1
    return-object v0

    .line 191
    :cond_0
    iget-object v0, v0, Lcom/google/a/c/bz;->f:Lcom/google/a/c/bz;

    goto :goto_0

    .line 196
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic b(Lcom/google/a/c/by;Lcom/google/a/c/bz;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/google/a/c/by;->b(Lcom/google/a/c/bz;)V

    return-void
.end method

.method private b(Lcom/google/a/c/bz;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/bz",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 163
    iget v0, p1, Lcom/google/a/c/bz;->b:I

    iget v1, p0, Lcom/google/a/c/by;->d:I

    and-int/2addr v0, v1

    .line 164
    iget-object v1, p0, Lcom/google/a/c/by;->a:[Lcom/google/a/c/bz;

    aget-object v1, v1, v0

    iput-object v1, p1, Lcom/google/a/c/bz;->e:Lcom/google/a/c/bz;

    .line 165
    iget-object v1, p0, Lcom/google/a/c/by;->a:[Lcom/google/a/c/bz;

    aput-object p1, v1, v0

    .line 167
    iget v0, p1, Lcom/google/a/c/bz;->d:I

    iget v1, p0, Lcom/google/a/c/by;->d:I

    and-int/2addr v0, v1

    .line 168
    iget-object v1, p0, Lcom/google/a/c/by;->b:[Lcom/google/a/c/bz;

    aget-object v1, v1, v0

    iput-object v1, p1, Lcom/google/a/c/bz;->f:Lcom/google/a/c/bz;

    .line 169
    iget-object v1, p0, Lcom/google/a/c/by;->b:[Lcom/google/a/c/bz;

    aput-object p1, v1, v0

    .line 171
    iget v0, p0, Lcom/google/a/c/by;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/a/c/by;->c:I

    .line 172
    iget v0, p0, Lcom/google/a/c/by;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/a/c/by;->e:I

    .line 173
    return-void
.end method

.method static synthetic b(Lcom/google/a/c/by;)[Lcom/google/a/c/bz;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/a/c/by;->a:[Lcom/google/a/c/bz;

    return-object v0
.end method

.method static synthetic c(Lcom/google/a/c/by;)I
    .locals 1
    .parameter

    .prologue
    .line 51
    iget v0, p0, Lcom/google/a/c/by;->c:I

    return v0
.end method

.method private c()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 284
    iget-object v3, p0, Lcom/google/a/c/by;->a:[Lcom/google/a/c/bz;

    .line 285
    iget v1, p0, Lcom/google/a/c/by;->c:I

    array-length v2, v3

    invoke-static {v1, v2}, Lcom/google/a/c/co;->a(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 286
    array-length v1, v3

    mul-int/lit8 v1, v1, 0x2

    .line 288
    new-array v2, v1, [Lcom/google/a/c/bz;

    iput-object v2, p0, Lcom/google/a/c/by;->a:[Lcom/google/a/c/bz;

    .line 289
    new-array v2, v1, [Lcom/google/a/c/bz;

    iput-object v2, p0, Lcom/google/a/c/by;->b:[Lcom/google/a/c/bz;

    .line 290
    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/a/c/by;->d:I

    .line 291
    iput v0, p0, Lcom/google/a/c/by;->c:I

    .line 293
    :goto_0
    array-length v1, v3

    if-ge v0, v1, :cond_1

    .line 294
    aget-object v1, v3, v0

    .line 295
    :goto_1
    if-eqz v1, :cond_0

    .line 296
    iget-object v2, v1, Lcom/google/a/c/bz;->e:Lcom/google/a/c/bz;

    .line 297
    invoke-direct {p0, v1}, Lcom/google/a/c/by;->b(Lcom/google/a/c/bz;)V

    move-object v1, v2

    .line 299
    goto :goto_1

    .line 293
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 301
    :cond_1
    iget v0, p0, Lcom/google/a/c/by;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/a/c/by;->e:I

    .line 303
    :cond_2
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/a/c/am;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/am",
            "<TV;TK;>;"
        }
    .end annotation

    .prologue
    .line 486
    iget-object v0, p0, Lcom/google/a/c/by;->f:Lcom/google/a/c/am;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/a/c/cd;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/a/c/cd;-><init>(Lcom/google/a/c/by;B)V

    iput-object v0, p0, Lcom/google/a/c/by;->f:Lcom/google/a/c/am;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/a/c/by;->f:Lcom/google/a/c/am;

    goto :goto_0
.end method

.method public final clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 323
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/a/c/by;->c:I

    .line 324
    iget-object v0, p0, Lcom/google/a/c/by;->a:[Lcom/google/a/c/bz;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 325
    iget-object v0, p0, Lcom/google/a/c/by;->b:[Lcom/google/a/c/bz;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 326
    iget v0, p0, Lcom/google/a/c/by;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/a/c/by;->e:I

    .line 327
    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 201
    invoke-static {p1}, Lcom/google/a/c/by;->b(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/a/c/by;->a(Ljava/lang/Object;I)Lcom/google/a/c/bz;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 206
    invoke-static {p1}, Lcom/google/a/c/by;->b(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/a/c/by;->b(Ljava/lang/Object;I)Lcom/google/a/c/bz;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 426
    new-instance v0, Lcom/google/a/c/ca;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/a/c/ca;-><init>(Lcom/google/a/c/by;B)V

    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 212
    invoke-static {p1}, Lcom/google/a/c/by;->b(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/a/c/by;->a(Ljava/lang/Object;I)Lcom/google/a/c/bz;

    move-result-object v0

    .line 213
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/google/a/c/bz;->c:Ljava/lang/Object;

    goto :goto_0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 389
    new-instance v0, Lcom/google/a/c/ck;

    invoke-direct {v0, p0}, Lcom/google/a/c/ck;-><init>(Lcom/google/a/c/by;)V

    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 218
    invoke-static {p1}, Lcom/google/a/c/by;->b(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p2}, Lcom/google/a/c/by;->b(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {p0, p1, v0}, Lcom/google/a/c/by;->a(Ljava/lang/Object;I)Lcom/google/a/c/bz;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v3, v2, Lcom/google/a/c/bz;->d:I

    if-ne v1, v3, :cond_0

    iget-object v3, v2, Lcom/google/a/c/bz;->c:Ljava/lang/Object;

    invoke-static {p2, v3}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return-object p2

    :cond_0
    invoke-direct {p0, p2, v1}, Lcom/google/a/c/by;->b(Ljava/lang/Object;I)Lcom/google/a/c/bz;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "value already present: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz v2, :cond_2

    invoke-direct {p0, v2}, Lcom/google/a/c/by;->a(Lcom/google/a/c/bz;)V

    :cond_2
    new-instance v3, Lcom/google/a/c/bz;

    invoke-direct {v3, p1, v0, p2, v1}, Lcom/google/a/c/bz;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    invoke-direct {p0, v3}, Lcom/google/a/c/by;->b(Lcom/google/a/c/bz;)V

    invoke-direct {p0}, Lcom/google/a/c/by;->c()V

    if-nez v2, :cond_3

    const/4 p2, 0x0

    goto :goto_0

    :cond_3
    iget-object p2, v2, Lcom/google/a/c/bz;->c:Ljava/lang/Object;

    goto :goto_0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 312
    invoke-static {p1}, Lcom/google/a/c/by;->b(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/a/c/by;->a(Ljava/lang/Object;I)Lcom/google/a/c/bz;

    move-result-object v0

    .line 313
    if-nez v0, :cond_0

    .line 314
    const/4 v0, 0x0

    .line 317
    :goto_0
    return-object v0

    .line 316
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/a/c/by;->a(Lcom/google/a/c/bz;)V

    .line 317
    iget-object v0, v0, Lcom/google/a/c/bz;->c:Ljava/lang/Object;

    goto :goto_0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 331
    iget v0, p0, Lcom/google/a/c/by;->c:I

    return v0
.end method

.method public final synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/google/a/c/by;->a()Lcom/google/a/c/am;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/a/c/am;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
