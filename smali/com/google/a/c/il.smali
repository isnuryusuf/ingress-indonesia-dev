.class final Lcom/google/a/c/il;
.super Lcom/google/a/c/dh;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/c/dh",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final transient a:[Lcom/google/a/c/dj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/a/c/dj",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final transient b:[Lcom/google/a/c/dj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/a/c/dj",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final transient c:I


# direct methods
.method constructor <init>(I[Lcom/google/a/c/dk;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lcom/google/a/c/dk",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/a/c/dh;-><init>()V

    .line 52
    new-array v0, p1, [Lcom/google/a/c/dj;

    iput-object v0, p0, Lcom/google/a/c/il;->a:[Lcom/google/a/c/dj;

    .line 53
    const-wide v0, 0x3ff3333333333333L

    invoke-static {p1, v0, v1}, Lcom/google/a/c/co;->a(ID)I

    move-result v0

    .line 54
    new-array v1, v0, [Lcom/google/a/c/dj;

    iput-object v1, p0, Lcom/google/a/c/il;->b:[Lcom/google/a/c/dj;

    .line 55
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/a/c/il;->c:I

    .line 56
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, p1, :cond_1

    .line 58
    aget-object v0, p2, v2

    .line 59
    invoke-virtual {v0}, Lcom/google/a/c/dk;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 60
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lcom/google/a/c/co;->a(I)I

    move-result v1

    iget v4, p0, Lcom/google/a/c/il;->c:I

    and-int/2addr v4, v1

    .line 61
    iget-object v1, p0, Lcom/google/a/c/il;->b:[Lcom/google/a/c/dj;

    aget-object v5, v1, v4

    .line 63
    if-nez v5, :cond_0

    .line 66
    :goto_1
    iget-object v1, p0, Lcom/google/a/c/il;->b:[Lcom/google/a/c/dj;

    aput-object v0, v1, v4

    .line 67
    iget-object v1, p0, Lcom/google/a/c/il;->a:[Lcom/google/a/c/dj;

    aput-object v0, v1, v2

    .line 68
    invoke-static {v3, v0, v5}, Lcom/google/a/c/il;->a(Ljava/lang/Object;Lcom/google/a/c/dj;Lcom/google/a/c/dj;)V

    .line 56
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 63
    :cond_0
    new-instance v1, Lcom/google/a/c/in;

    invoke-direct {v1, v0, v5}, Lcom/google/a/c/in;-><init>(Lcom/google/a/c/dj;Lcom/google/a/c/dj;)V

    move-object v0, v1

    goto :goto_1

    .line 70
    :cond_1
    return-void
.end method

.method varargs constructor <init>([Lcom/google/a/c/dk;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/a/c/dk",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 42
    array-length v0, p1

    invoke-direct {p0, v0, p1}, Lcom/google/a/c/il;-><init>(I[Lcom/google/a/c/dk;)V

    .line 43
    return-void
.end method

.method constructor <init>([Ljava/util/Map$Entry;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map$Entry",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/google/a/c/dh;-><init>()V

    .line 76
    array-length v2, p1

    .line 77
    new-array v0, v2, [Lcom/google/a/c/dj;

    iput-object v0, p0, Lcom/google/a/c/il;->a:[Lcom/google/a/c/dj;

    .line 78
    const-wide v0, 0x3ff3333333333333L

    invoke-static {v2, v0, v1}, Lcom/google/a/c/co;->a(ID)I

    move-result v0

    .line 79
    new-array v1, v0, [Lcom/google/a/c/dj;

    iput-object v1, p0, Lcom/google/a/c/il;->b:[Lcom/google/a/c/dj;

    .line 80
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/a/c/il;->c:I

    .line 81
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 83
    aget-object v0, p1, v1

    .line 84
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 85
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 86
    invoke-static {v3, v4}, Lcom/google/a/c/il;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 87
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/google/a/c/co;->a(I)I

    move-result v0

    iget v5, p0, Lcom/google/a/c/il;->c:I

    and-int/2addr v5, v0

    .line 88
    iget-object v0, p0, Lcom/google/a/c/il;->b:[Lcom/google/a/c/dj;

    aget-object v6, v0, v5

    .line 90
    if-nez v6, :cond_0

    new-instance v0, Lcom/google/a/c/dk;

    invoke-direct {v0, v3, v4}, Lcom/google/a/c/dk;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 93
    :goto_1
    iget-object v4, p0, Lcom/google/a/c/il;->b:[Lcom/google/a/c/dj;

    aput-object v0, v4, v5

    .line 94
    iget-object v4, p0, Lcom/google/a/c/il;->a:[Lcom/google/a/c/dj;

    aput-object v0, v4, v1

    .line 95
    invoke-static {v3, v0, v6}, Lcom/google/a/c/il;->a(Ljava/lang/Object;Lcom/google/a/c/dj;Lcom/google/a/c/dj;)V

    .line 81
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 90
    :cond_0
    new-instance v0, Lcom/google/a/c/in;

    invoke-direct {v0, v3, v4, v6}, Lcom/google/a/c/in;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/a/c/dj;)V

    goto :goto_1

    .line 97
    :cond_1
    return-void
.end method

.method private static a(Ljava/lang/Object;Lcom/google/a/c/dj;Lcom/google/a/c/dj;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/google/a/c/dj",
            "<TK;TV;>;",
            "Lcom/google/a/c/dj",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 101
    :goto_0
    if-eqz p2, :cond_1

    .line 102
    invoke-virtual {p2}, Lcom/google/a/c/dj;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    const-string/jumbo v1, "key"

    invoke-static {v0, v1, p1, p2}, Lcom/google/a/c/il;->a(ZLjava/lang/String;Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V

    .line 101
    invoke-virtual {p2}, Lcom/google/a/c/dj;->a()Lcom/google/a/c/dj;

    move-result-object p2

    goto :goto_0

    .line 102
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 104
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/google/a/c/il;)[Lcom/google/a/c/dj;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/a/c/il;->a:[Lcom/google/a/c/dj;

    return-object v0
.end method


# virtual methods
.method final b()Z
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method final d()Lcom/google/a/c/du;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/du",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 183
    new-instance v0, Lcom/google/a/c/im;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/a/c/im;-><init>(Lcom/google/a/c/il;B)V

    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 150
    if-nez p1, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-object v0

    .line 153
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lcom/google/a/c/co;->a(I)I

    move-result v1

    iget v2, p0, Lcom/google/a/c/il;->c:I

    and-int/2addr v1, v2

    .line 154
    iget-object v2, p0, Lcom/google/a/c/il;->b:[Lcom/google/a/c/dj;

    aget-object v1, v2, v1

    .line 155
    :goto_1
    if-eqz v1, :cond_0

    .line 157
    invoke-virtual {v1}, Lcom/google/a/c/dj;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 165
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 166
    invoke-virtual {v1}, Lcom/google/a/c/dj;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 156
    :cond_2
    invoke-virtual {v1}, Lcom/google/a/c/dj;->a()Lcom/google/a/c/dj;

    move-result-object v1

    goto :goto_1
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/a/c/il;->a:[Lcom/google/a/c/dj;

    array-length v0, v0

    return v0
.end method
