.class public final Lcom/google/a/c/de;
.super Lcom/google/a/c/cu;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/c/cu",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 638
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/a/c/de;-><init>(B)V

    .line 639
    return-void
.end method

.method private constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 643
    invoke-direct {p0}, Lcom/google/a/c/cu;-><init>()V

    .line 644
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Lcom/google/a/c/cu;
    .locals 0
    .parameter

    .prologue
    .line 632
    invoke-super {p0, p1}, Lcom/google/a/c/cu;->a(Ljava/lang/Object;)Lcom/google/a/c/cu;

    return-object p0
.end method

.method public final bridge synthetic a(Ljava/lang/Iterable;)Lcom/google/a/c/cv;
    .locals 0
    .parameter

    .prologue
    .line 632
    invoke-super {p0, p1}, Lcom/google/a/c/cu;->a(Ljava/lang/Iterable;)Lcom/google/a/c/cv;

    return-object p0
.end method

.method public final bridge synthetic a(Ljava/util/Iterator;)Lcom/google/a/c/cv;
    .locals 0
    .parameter

    .prologue
    .line 632
    invoke-super {p0, p1}, Lcom/google/a/c/cu;->a(Ljava/util/Iterator;)Lcom/google/a/c/cv;

    return-object p0
.end method

.method public final bridge synthetic a([Ljava/lang/Object;)Lcom/google/a/c/cv;
    .locals 0
    .parameter

    .prologue
    .line 632
    invoke-super {p0, p1}, Lcom/google/a/c/cu;->a([Ljava/lang/Object;)Lcom/google/a/c/cv;

    return-object p0
.end method

.method public final a()Lcom/google/a/c/dc;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/dc",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 702
    iget-object v0, p0, Lcom/google/a/c/de;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/a/c/de;->b:I

    invoke-static {v0, v1}, Lcom/google/a/c/dc;->b([Ljava/lang/Object;I)Lcom/google/a/c/dc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Ljava/lang/Object;)Lcom/google/a/c/cv;
    .locals 0
    .parameter

    .prologue
    .line 632
    invoke-super {p0, p1}, Lcom/google/a/c/cu;->a(Ljava/lang/Object;)Lcom/google/a/c/cu;

    return-object p0
.end method

.method public final b(Ljava/util/Iterator;)Lcom/google/a/c/de;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<+TE;>;)",
            "Lcom/google/a/c/de",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 693
    invoke-super {p0, p1}, Lcom/google/a/c/cu;->a(Ljava/util/Iterator;)Lcom/google/a/c/cv;

    .line 694
    return-object p0
.end method

.method public final c(Ljava/lang/Object;)Lcom/google/a/c/de;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/a/c/de",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 654
    invoke-super {p0, p1}, Lcom/google/a/c/cu;->a(Ljava/lang/Object;)Lcom/google/a/c/cu;

    .line 655
    return-object p0
.end method
