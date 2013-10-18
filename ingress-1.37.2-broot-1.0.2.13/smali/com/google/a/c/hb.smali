.class final Lcom/google/a/c/hb;
.super Lcom/google/a/c/y;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/c/y",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/google/a/c/fi;


# direct methods
.method constructor <init>(Lcom/google/a/c/fi;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 3743
    iput-object p1, p0, Lcom/google/a/c/hb;->c:Lcom/google/a/c/fi;

    invoke-direct {p0}, Lcom/google/a/c/y;-><init>()V

    .line 3744
    iput-object p2, p0, Lcom/google/a/c/hb;->a:Ljava/lang/Object;

    .line 3745
    iput-object p3, p0, Lcom/google/a/c/hb;->b:Ljava/lang/Object;

    .line 3746
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 3761
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_0

    .line 3762
    check-cast p1, Ljava/util/Map$Entry;

    .line 3763
    iget-object v1, p0, Lcom/google/a/c/hb;->a:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/a/c/hb;->b:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 3765
    :cond_0
    return v0
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 3750
    iget-object v0, p0, Lcom/google/a/c/hb;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 3755
    iget-object v0, p0, Lcom/google/a/c/hb;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 3771
    iget-object v0, p0, Lcom/google/a/c/hb;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/a/c/hb;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 3776
    iget-object v0, p0, Lcom/google/a/c/hb;->c:Lcom/google/a/c/fi;

    iget-object v1, p0, Lcom/google/a/c/hb;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/google/a/c/fi;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3777
    iput-object p1, p0, Lcom/google/a/c/hb;->b:Ljava/lang/Object;

    .line 3778
    return-object v0
.end method
