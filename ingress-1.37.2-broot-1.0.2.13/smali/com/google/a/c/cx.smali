.class final Lcom/google/a/c/cx;
.super Lcom/google/a/c/dh;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Enum",
        "<TK;>;V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/c/dh",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final transient a:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/EnumMap;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/a/c/dh;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/google/a/c/cx;->a:Ljava/util/EnumMap;

    .line 54
    invoke-virtual {p1}, Ljava/util/EnumMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 55
    return-void

    .line 54
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Ljava/util/EnumMap;)Lcom/google/a/c/dh;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Enum",
            "<TK;>;V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/EnumMap",
            "<TK;TV;>;)",
            "Lcom/google/a/c/dh",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 38
    invoke-virtual {p0}, Ljava/util/EnumMap;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 46
    new-instance v0, Lcom/google/a/c/cx;

    invoke-direct {v0, p0}, Lcom/google/a/c/cx;-><init>(Ljava/util/EnumMap;)V

    :goto_0
    return-object v0

    .line 40
    :pswitch_0
    invoke-static {}, Lcom/google/a/c/cq;->h()Lcom/google/a/c/cq;

    move-result-object v0

    goto :goto_0

    .line 42
    :pswitch_1
    invoke-virtual {p0}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/c/ee;->a(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 43
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/a/c/cq;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/cq;

    move-result-object v0

    goto :goto_0

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/google/a/c/cx;)Ljava/util/EnumMap;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/a/c/cx;->a:Ljava/util/EnumMap;

    return-object v0
.end method


# virtual methods
.method final b()Z
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method final c()Lcom/google/a/c/du;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/du",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 59
    new-instance v0, Lcom/google/a/c/cy;

    invoke-direct {v0, p0}, Lcom/google/a/c/cy;-><init>(Lcom/google/a/c/cx;)V

    return-object v0
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/a/c/cx;->a:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final d()Lcom/google/a/c/du;
    .locals 1
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
    .line 100
    new-instance v0, Lcom/google/a/c/cz;

    invoke-direct {v0, p0}, Lcom/google/a/c/cz;-><init>(Lcom/google/a/c/cx;)V

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
    .line 95
    iget-object v0, p0, Lcom/google/a/c/cx;->a:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/a/c/cx;->a:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->size()I

    move-result v0

    return v0
.end method
