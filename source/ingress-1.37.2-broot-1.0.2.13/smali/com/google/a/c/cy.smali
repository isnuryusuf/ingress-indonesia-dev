.class final Lcom/google/a/c/cy;
.super Lcom/google/a/c/du;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/c/du",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/a/c/cx;


# direct methods
.method constructor <init>(Lcom/google/a/c/cx;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/a/c/cy;->a:Lcom/google/a/c/cx;

    invoke-direct {p0}, Lcom/google/a/c/du;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Lcom/google/a/c/lj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/lj",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/a/c/cy;->a:Lcom/google/a/c/cx;

    invoke-static {v0}, Lcom/google/a/c/cx;->a(Lcom/google/a/c/cx;)Ljava/util/EnumMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/c/eg;->a(Ljava/util/Iterator;)Lcom/google/a/c/lj;

    move-result-object v0

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/a/c/cy;->a:Lcom/google/a/c/cx;

    invoke-static {v0}, Lcom/google/a/c/cx;->a(Lcom/google/a/c/cx;)Ljava/util/EnumMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final e()Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/google/a/c/cy;->b()Lcom/google/a/c/lj;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/a/c/cy;->a:Lcom/google/a/c/cx;

    invoke-virtual {v0}, Lcom/google/a/c/cx;->size()I

    move-result v0

    return v0
.end method
