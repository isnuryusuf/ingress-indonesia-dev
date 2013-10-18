.class public final Lcom/google/a/c/ho;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<TB;>;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I


# direct methods
.method private constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<TB;>;)V"
        }
    .end annotation

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/c/ho;->b:I

    .line 163
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/a/c/ho;->c:I

    .line 166
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lcom/google/a/c/ho;->a:Ljava/util/Comparator;

    .line 167
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Comparator;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/google/a/c/ho;-><init>(Ljava/util/Comparator;)V

    return-void
.end method

.method static synthetic a(Lcom/google/a/c/ho;)Lcom/google/a/c/ih;
    .locals 1
    .parameter

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/a/c/ho;->a:Ljava/util/Comparator;

    invoke-static {v0}, Lcom/google/a/c/ih;->a(Ljava/util/Comparator;)Lcom/google/a/c/ih;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/google/a/c/ho;)I
    .locals 1
    .parameter

    .prologue
    .line 154
    iget v0, p0, Lcom/google/a/c/ho;->c:I

    return v0
.end method


# virtual methods
.method public final a()Lcom/google/a/c/ho;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/ho",
            "<TB;>;"
        }
    .end annotation

    .prologue
    .line 186
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 187
    const/16 v0, 0x40

    iput v0, p0, Lcom/google/a/c/ho;->c:I

    .line 188
    return-object p0
.end method

.method public final b()Lcom/google/a/c/hn;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TB;>()",
            "Lcom/google/a/c/hn",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 196
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/google/a/c/hn;

    iget v2, p0, Lcom/google/a/c/ho;->b:I

    iget v3, p0, Lcom/google/a/c/ho;->c:I

    invoke-static {v2, v3, v0}, Lcom/google/a/c/hn;->a(IILjava/lang/Iterable;)I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/google/a/c/hn;-><init>(Lcom/google/a/c/ho;IB)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/a/c/hn;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method
