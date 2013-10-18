.class final Lcom/google/a/c/gv;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/a/c/fi;


# direct methods
.method constructor <init>(Lcom/google/a/c/fi;)V
    .locals 0
    .parameter

    .prologue
    .line 3823
    iput-object p1, p0, Lcom/google/a/c/gv;->a:Lcom/google/a/c/fi;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .prologue
    .line 3847
    iget-object v0, p0, Lcom/google/a/c/gv;->a:Lcom/google/a/c/fi;

    invoke-virtual {v0}, Lcom/google/a/c/fi;->clear()V

    .line 3848
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 3842
    iget-object v0, p0, Lcom/google/a/c/gv;->a:Lcom/google/a/c/fi;

    invoke-virtual {v0, p1}, Lcom/google/a/c/fi;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 3837
    iget-object v0, p0, Lcom/google/a/c/gv;->a:Lcom/google/a/c/fi;

    invoke-virtual {v0}, Lcom/google/a/c/fi;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 3827
    new-instance v0, Lcom/google/a/c/gt;

    iget-object v1, p0, Lcom/google/a/c/gv;->a:Lcom/google/a/c/fi;

    invoke-direct {v0, v1}, Lcom/google/a/c/gt;-><init>(Lcom/google/a/c/fi;)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 3832
    iget-object v0, p0, Lcom/google/a/c/gv;->a:Lcom/google/a/c/fi;

    invoke-virtual {v0}, Lcom/google/a/c/fi;->size()I

    move-result v0

    return v0
.end method
