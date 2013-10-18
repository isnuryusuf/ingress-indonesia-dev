.class Lcom/google/a/b/an;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/a/b/d;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/a/b/d",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/a/b/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/b/o",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/a/b/o;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/b/o",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 4804
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4805
    iput-object p1, p0, Lcom/google/a/b/an;->a:Lcom/google/a/b/o;

    .line 4806
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/a/b/o;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4797
    invoke-direct {p0, p1}, Lcom/google/a/b/an;-><init>(Lcom/google/a/b/o;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 4855
    iget-object v0, p0, Lcom/google/a/b/an;->a:Lcom/google/a/b/o;

    invoke-virtual {v0}, Lcom/google/a/b/o;->clear()V

    .line 4856
    return-void
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
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
    .line 4813
    iget-object v0, p0, Lcom/google/a/b/an;->a:Lcom/google/a/b/o;

    invoke-virtual {v0, p1}, Lcom/google/a/b/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 4844
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4845
    iget-object v0, p0, Lcom/google/a/b/an;->a:Lcom/google/a/b/o;

    invoke-virtual {v0, p1}, Lcom/google/a/b/o;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4846
    return-void
.end method
