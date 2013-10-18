.class public final Lcom/google/a/c/ed;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/a/c/ks",
            "<TR;TC;TV;>;>;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TR;>;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TC;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/a/c/ed;->a:Ljava/util/List;

    .line 166
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/a/c/ec;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/ec",
            "<TR;TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/a/c/ed;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 237
    packed-switch v0, :pswitch_data_0

    .line 244
    iget-object v0, p0, Lcom/google/a/c/ed;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/google/a/c/ed;->b:Ljava/util/Comparator;

    iget-object v2, p0, Lcom/google/a/c/ed;->c:Ljava/util/Comparator;

    invoke-static {v0, v1, v2}, Lcom/google/a/c/iu;->a(Ljava/util/List;Ljava/util/Comparator;Ljava/util/Comparator;)Lcom/google/a/c/iu;

    move-result-object v0

    :goto_0
    return-object v0

    .line 239
    :pswitch_0
    invoke-static {}, Lcom/google/a/c/ec;->n()Lcom/google/a/c/ec;

    move-result-object v0

    goto :goto_0

    .line 241
    :pswitch_1
    new-instance v1, Lcom/google/a/c/jm;

    iget-object v0, p0, Lcom/google/a/c/ed;->a:Ljava/util/List;

    invoke-static {v0}, Lcom/google/a/c/ee;->a(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/c/ks;

    invoke-direct {v1, v0}, Lcom/google/a/c/jm;-><init>(Lcom/google/a/c/ks;)V

    move-object v0, v1

    goto :goto_0

    .line 237
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ed;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TC;TV;)",
            "Lcom/google/a/c/ed",
            "<TR;TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/a/c/ed;->a:Ljava/util/List;

    invoke-static {p1, p2, p3}, Lcom/google/a/c/ec;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ks;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    return-object p0
.end method
